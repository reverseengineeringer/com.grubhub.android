package org.keyczar;

import com.google.gson.Gson;
import com.google.gson.annotations.Expose;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;
import org.keyczar.enums.CipherMode;
import org.keyczar.exceptions.KeyczarException;
import org.keyczar.i18n.Messages;
import org.keyczar.interfaces.KeyType;
import org.keyczar.interfaces.Stream;
import org.keyczar.keyparams.AesKeyParameters;
import org.keyczar.util.Base64Coder;
import org.keyczar.util.Util;

public class AesKey
  extends KeyczarKey
{
  private static final String AES_ALGORITHM = "AES";
  private static final int BLOCK_SIZE = 16;
  private static final CipherMode DEFAULT_MODE = CipherMode.CBC;
  private static final DefaultKeyType KEY_TYPE = DefaultKeyType.AES;
  private SecretKey aesKey;
  @Expose
  private final String aesKeyString;
  private final byte[] hash = new byte[4];
  @Expose
  private final HmacKey hmacKey;
  @Expose
  private final CipherMode mode;
  
  private AesKey()
  {
    super(0);
    aesKeyString = null;
    hmacKey = null;
    mode = null;
  }
  
  public AesKey(byte[] paramArrayOfByte, HmacKey paramHmacKey)
    throws KeyczarException
  {
    super(paramArrayOfByte.length * 8);
    aesKeyString = Base64Coder.encodeWebSafe(paramArrayOfByte);
    mode = DEFAULT_MODE;
    hmacKey = paramHmacKey;
    initJceKey(paramArrayOfByte);
  }
  
  static AesKey fromPackedKey(byte[] paramArrayOfByte)
    throws KeyczarException
  {
    paramArrayOfByte = Util.lenPrefixUnpack(paramArrayOfByte);
    if (paramArrayOfByte.length != 2) {
      throw new KeyczarException(Messages.getString("AesKey.InvalidPackedKey", new Object[0]));
    }
    return new AesKey(paramArrayOfByte[0], new HmacKey(paramArrayOfByte[1]));
  }
  
  static AesKey generate(AesKeyParameters paramAesKeyParameters)
    throws KeyczarException
  {
    return new AesKey(Util.rand(paramAesKeyParameters.getKeySize() / 8), paramAesKeyParameters.getHmacKey());
  }
  
  private void initJceKey(byte[] paramArrayOfByte)
    throws KeyczarException
  {
    aesKey = new SecretKeySpec(paramArrayOfByte, "AES");
    System.arraycopy(Util.hash(new byte[][] { Util.fromInt(16), paramArrayOfByte, hmacKey.getEncoded() }), 0, hash, 0, hash.length);
  }
  
  static AesKey read(String paramString)
    throws KeyczarException
  {
    paramString = (AesKey)Util.gson().fromJson(paramString, AesKey.class);
    hmacKey.initFromJson();
    paramString.initJceKey(Base64Coder.decodeWebSafe(aesKeyString));
    return paramString;
  }
  
  byte[] getEncoded()
  {
    return Util.lenPrefixPack(new byte[][] { aesKey.getEncoded(), hmacKey.getEncoded() });
  }
  
  protected SecretKey getJceKey()
  {
    return aesKey;
  }
  
  protected Stream getStream()
    throws KeyczarException
  {
    return new AesKey.AesStream(this);
  }
  
  public KeyType getType()
  {
    return KEY_TYPE;
  }
  
  protected byte[] hash()
  {
    return hash;
  }
}

/* Location:
 * Qualified Name:     org.keyczar.AesKey
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */