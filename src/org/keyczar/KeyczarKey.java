package org.keyczar;

import com.google.gson.Gson;
import com.google.gson.annotations.Expose;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.security.Key;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import javax.crypto.Cipher;
import javax.crypto.EncryptedPrivateKeyInfo;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.PBEParameterSpec;
import org.keyczar.exceptions.KeyczarException;
import org.keyczar.i18n.Messages;
import org.keyczar.interfaces.KeyType;
import org.keyczar.interfaces.KeyType.KeyTypeDeserializer;
import org.keyczar.interfaces.Stream;
import org.keyczar.util.Base64Coder;
import org.keyczar.util.Util;

public abstract class KeyczarKey
{
  private static final int IV_SIZE = 16;
  private static final String PBE_CIPHER = "PBEWithSHA1AndDESede";
  private static final int PBE_ITERATION_COUNT = 1000;
  private static final int PBE_SALT_SIZE = 8;
  private static final String PEM_FOOTER_BEGIN = "-----END ";
  private static final String PEM_HEADER_BEGIN = "-----BEGIN ";
  private static final String PEM_LINE_ENDING = "-----\n";
  @Expose
  final int size;
  
  protected KeyczarKey(int paramInt)
  {
    size = paramInt;
  }
  
  private String convertDerToPem(byte[] paramArrayOfByte)
  {
    Object localObject = Base64Coder.encodeMime(paramArrayOfByte, true);
    paramArrayOfByte = new StringBuffer();
    paramArrayOfByte.append("-----BEGIN ");
    paramArrayOfByte.append(getPemType());
    paramArrayOfByte.append("-----\n");
    localObject = Util.split((String)localObject, 64).iterator();
    while (((Iterator)localObject).hasNext())
    {
      paramArrayOfByte.append((String)((Iterator)localObject).next());
      paramArrayOfByte.append('\n');
    }
    paramArrayOfByte.append("-----END ");
    paramArrayOfByte.append(getPemType());
    paramArrayOfByte.append("-----\n");
    return paramArrayOfByte.toString();
  }
  
  private static byte[] encryptPrivateKey(Key paramKey, String paramString)
    throws KeyczarException
  {
    try
    {
      paramString = new PBEKeySpec(paramString.toCharArray());
      SecretKey localSecretKey = SecretKeyFactory.getInstance("PBEWithSHA1AndDESede").generateSecret(paramString);
      byte[] arrayOfByte = new byte[8];
      Util.rand(arrayOfByte);
      Util.rand(new byte[16]);
      paramString = Cipher.getInstance("PBEWithSHA1AndDESede");
      paramString.init(1, localSecretKey, new PBEParameterSpec(arrayOfByte, 1000));
      paramKey = paramString.doFinal(paramKey.getEncoded());
      paramKey = new EncryptedPrivateKeyInfo(paramString.getParameters(), paramKey).getEncoded();
      return paramKey;
    }
    catch (GeneralSecurityException paramKey)
    {
      throw new KeyczarException(Messages.getString("KeyczarTool.FailedToEncryptPrivateKey", new Object[0]), paramKey);
    }
    catch (IOException paramKey)
    {
      throw new KeyczarException(Messages.getString("KeyczarTool.FailedToEncryptPrivateKey", new Object[0]), paramKey);
    }
  }
  
  private String getPemType()
  {
    if (isSecret()) {
      return "ENCRYPTED PRIVATE KEY";
    }
    return getJceKey().getAlgorithm() + " PUBLIC KEY";
  }
  
  public static void registerType(KeyType paramKeyType)
  {
    KeyType.KeyTypeDeserializer.registerType(paramKeyType);
  }
  
  void copyHeader(ByteBuffer paramByteBuffer)
  {
    paramByteBuffer.put((byte)0);
    paramByteBuffer.put(hash());
  }
  
  public boolean equals(Object paramObject)
  {
    try
    {
      boolean bool = Arrays.equals(((KeyczarKey)paramObject).hash(), hash());
      return bool;
    }
    catch (ClassCastException paramObject) {}
    return false;
  }
  
  protected abstract Key getJceKey();
  
  public String getPemString(String paramString)
    throws KeyczarException
  {
    if (isSecret())
    {
      if ((paramString == null) || (paramString.length() < 8)) {
        throw new KeyczarException(Messages.getString("KeyczarTool.PassphraseRequired", new Object[0]));
      }
      return convertDerToPem(encryptPrivateKey(getJceKey(), paramString));
    }
    if ((paramString != null) && (!"".equals(paramString))) {
      throw new KeyczarException(Messages.getString("KeyczarTool.PassphraseNotAllowed", new Object[0]));
    }
    return convertDerToPem(getJceKey().getEncoded());
  }
  
  protected abstract Stream getStream()
    throws KeyczarException;
  
  public abstract KeyType getType();
  
  protected abstract byte[] hash();
  
  public int hashCode()
  {
    return Util.toInt(hash());
  }
  
  protected boolean isSecret()
  {
    return true;
  }
  
  int size()
  {
    return size;
  }
  
  public String toString()
  {
    return Util.gson().toJson(this);
  }
}

/* Location:
 * Qualified Name:     org.keyczar.KeyczarKey
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */