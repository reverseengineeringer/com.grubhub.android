package org.keyczar;

import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.security.AlgorithmParameters;
import java.security.GeneralSecurityException;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.interfaces.DSAPrivateKey;
import java.security.interfaces.RSAPrivateCrtKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.PKCS8EncodedKeySpec;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.crypto.Cipher;
import javax.crypto.EncryptedPrivateKeyInfo;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.PBEParameterSpec;
import org.keyczar.enums.KeyPurpose;
import org.keyczar.enums.KeyStatus;
import org.keyczar.enums.RsaPadding;
import org.keyczar.exceptions.KeyczarException;
import org.keyczar.i18n.Messages;
import org.keyczar.interfaces.KeyczarReader;
import org.keyczar.util.Base64Coder;
import org.keyczar.util.Util;

public class PkcsKeyReader
  implements KeyczarReader
{
  private static final Pattern PEM_FOOTER_PATTERN = Pattern.compile("-----END ([A-Z ]+)-----");
  private static final Pattern PEM_HEADER_PATTERN = Pattern.compile("-----BEGIN ([A-Z ]+)-----");
  private KeyczarKey key;
  private KeyMetadata meta;
  private final String passphrase;
  private final InputStream pkcs8Stream;
  private final KeyPurpose purpose;
  private final RsaPadding rsaPadding;
  
  public PkcsKeyReader(KeyPurpose paramKeyPurpose, InputStream paramInputStream, RsaPadding paramRsaPadding, String paramString)
    throws KeyczarException
  {
    if (paramKeyPurpose == null) {
      throw new KeyczarException("Key purpose must not be null");
    }
    if (paramInputStream == null) {
      throw new KeyczarException("PKCS8 stream must not be null");
    }
    purpose = paramKeyPurpose;
    pkcs8Stream = paramInputStream;
    rsaPadding = paramRsaPadding;
    passphrase = paramString;
  }
  
  private static SecretKey computeDecryptionKey(String paramString1, String paramString2)
    throws NoSuchAlgorithmException, InvalidKeySpecException
  {
    paramString1 = new PBEKeySpec(paramString1.toCharArray());
    return SecretKeyFactory.getInstance(paramString2).generateSecret(paramString1);
  }
  
  private static KeyMetadata constructMetadata(KeyczarKey paramKeyczarKey, KeyPurpose paramKeyPurpose)
    throws KeyczarException
  {
    validatePurpose(paramKeyczarKey, paramKeyPurpose);
    paramKeyczarKey = new KeyMetadata("imported from PKCS8 file", paramKeyPurpose, paramKeyczarKey.getType());
    paramKeyczarKey.addVersion(new KeyVersion(1, KeyStatus.PRIMARY, true));
    return paramKeyczarKey;
  }
  
  private static byte[] convertPemToDer(byte[] paramArrayOfByte)
    throws IOException, KeyczarException
  {
    BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader(new ByteArrayInputStream(paramArrayOfByte)));
    Object localObject = localBufferedReader.readLine();
    localObject = PEM_HEADER_PATTERN.matcher((CharSequence)localObject);
    if (!((Matcher)localObject).matches()) {
      return paramArrayOfByte;
    }
    return decodeBase64(localBufferedReader, ((Matcher)localObject).group(1));
  }
  
  private static byte[] decodeBase64(BufferedReader paramBufferedReader, String paramString)
    throws IOException, KeyczarException
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    Matcher localMatcher;
    for (;;)
    {
      String str = paramBufferedReader.readLine();
      if (str == null) {
        break label63;
      }
      localMatcher = PEM_FOOTER_PATTERN.matcher(str);
      if (localMatcher.matches()) {
        break;
      }
      localByteArrayOutputStream.write(Base64Coder.decodeMime(str));
    }
    if (localMatcher.group(1).equals(paramString)) {
      return localByteArrayOutputStream.toByteArray();
    }
    label63:
    throw new KeyczarException(Messages.getString("KeyczarTool.InvalidPemFile", new Object[0]));
  }
  
  private static byte[] decryptPbeEncryptedKey(byte[] paramArrayOfByte, String paramString)
    throws KeyczarException
  {
    if ((paramString == null) || (paramString.length() == 0)) {
      return paramArrayOfByte;
    }
    try
    {
      paramArrayOfByte = new EncryptedPrivateKeyInfo(paramArrayOfByte);
      PBEParameterSpec localPBEParameterSpec = (PBEParameterSpec)paramArrayOfByte.getAlgParameters().getParameterSpec(PBEParameterSpec.class);
      String str = paramArrayOfByte.getAlgName();
      Cipher localCipher = Cipher.getInstance(str);
      localCipher.init(2, computeDecryptionKey(paramString, str), localPBEParameterSpec);
      paramArrayOfByte = localCipher.doFinal(paramArrayOfByte.getEncryptedData());
      return paramArrayOfByte;
    }
    catch (NullPointerException paramArrayOfByte)
    {
      throw new KeyczarException(Messages.getString("KeyczarTool.UnknownKeyEncryption", new Object[0]));
    }
    catch (GeneralSecurityException paramArrayOfByte)
    {
      throw new KeyczarException(Messages.getString("KeyczarTool.UnknownKeyEncryption", new Object[0]));
    }
    catch (IOException paramArrayOfByte)
    {
      throw new KeyczarException(Messages.getString("KeyczarTool.UnknownKeyEncryption", new Object[0]));
    }
  }
  
  private void ensureKeyRead()
    throws KeyczarException
  {
    try
    {
      if (key == null)
      {
        key = parseKeyStream(pkcs8Stream, passphrase, rsaPadding);
        meta = constructMetadata(key, purpose);
      }
      return;
    }
    catch (IOException localIOException)
    {
      throw new KeyczarException("Error Reading key", localIOException);
    }
  }
  
  private static PrivateKey extractPrivateKey(PKCS8EncodedKeySpec paramPKCS8EncodedKeySpec, String paramString)
    throws KeyczarException, InvalidKeySpecException
  {
    try
    {
      paramPKCS8EncodedKeySpec = KeyFactory.getInstance(paramString).generatePrivate(paramPKCS8EncodedKeySpec);
      return paramPKCS8EncodedKeySpec;
    }
    catch (NoSuchAlgorithmException paramPKCS8EncodedKeySpec)
    {
      throw new KeyczarException(paramPKCS8EncodedKeySpec);
    }
  }
  
  private static KeyczarKey parseKeyStream(InputStream paramInputStream, String paramString, RsaPadding paramRsaPadding)
    throws IOException, KeyczarException
  {
    paramInputStream = new PKCS8EncodedKeySpec(decryptPbeEncryptedKey(convertPemToDer(Util.readStreamFully(paramInputStream)), paramString));
    try
    {
      paramString = new RsaPrivateKey((RSAPrivateCrtKey)extractPrivateKey(paramInputStream, "RSA"), paramRsaPadding);
      return paramString;
    }
    catch (InvalidKeySpecException paramString)
    {
      try
      {
        paramInputStream = new DsaPrivateKey((DSAPrivateKey)extractPrivateKey(paramInputStream, "DSA"));
        if (paramRsaPadding != null) {
          throw new KeyczarException(Messages.getString("InvalidPadding", new Object[] { paramRsaPadding.name() }));
        }
      }
      catch (InvalidKeySpecException paramInputStream)
      {
        throw new KeyczarException(Messages.getString("KeyczarTool.InvalidPkcs8Stream", new Object[0]));
      }
    }
    return paramInputStream;
  }
  
  private static void validatePurpose(KeyczarKey paramKeyczarKey, KeyPurpose paramKeyPurpose)
    throws KeyczarException
  {
    if ((paramKeyPurpose == KeyPurpose.ENCRYPT) && (paramKeyczarKey.getType() == DefaultKeyType.DSA_PUB)) {
      throw new KeyczarException(Messages.getString("Keyczartool.InvalidUseOfDsaKey", new Object[0]));
    }
  }
  
  public String getKey()
    throws KeyczarException
  {
    ensureKeyRead();
    return key.toString();
  }
  
  public String getKey(int paramInt)
    throws KeyczarException
  {
    ensureKeyRead();
    return key.toString();
  }
  
  public String getMetadata()
    throws KeyczarException
  {
    ensureKeyRead();
    return meta.toString();
  }
}

/* Location:
 * Qualified Name:     org.keyczar.PkcsKeyReader
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */