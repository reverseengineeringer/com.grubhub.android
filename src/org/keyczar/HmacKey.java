package org.keyczar;

import com.google.gson.Gson;
import com.google.gson.annotations.Expose;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;
import org.keyczar.exceptions.KeyczarException;
import org.keyczar.interfaces.KeyType;
import org.keyczar.interfaces.Stream;
import org.keyczar.keyparams.KeyParameters;
import org.keyczar.util.Base64Coder;
import org.keyczar.util.Util;

public class HmacKey
  extends KeyczarKey
{
  private static final int HMAC_DIGEST_SIZE = 20;
  private static final String MAC_ALGORITHM = "HMACSHA1";
  private final byte[] hash = new byte[4];
  private SecretKey hmacKey;
  @Expose
  private final String hmacKeyString;
  
  private HmacKey()
  {
    super(0);
    hmacKeyString = null;
  }
  
  public HmacKey(byte[] paramArrayOfByte)
    throws KeyczarException
  {
    super(paramArrayOfByte.length * 8);
    hmacKeyString = Base64Coder.encodeWebSafe(paramArrayOfByte);
    initJceKey(paramArrayOfByte);
  }
  
  static HmacKey generate(KeyParameters paramKeyParameters)
    throws KeyczarException
  {
    return new HmacKey(Util.rand(paramKeyParameters.getKeySize() / 8));
  }
  
  private void initJceKey(byte[] paramArrayOfByte)
    throws KeyczarException
  {
    hmacKey = new SecretKeySpec(paramArrayOfByte, "HMACSHA1");
    System.arraycopy(Util.hash(new byte[][] { paramArrayOfByte }), 0, hash, 0, hash.length);
  }
  
  static HmacKey read(String paramString)
    throws KeyczarException
  {
    paramString = (HmacKey)Util.gson().fromJson(paramString, HmacKey.class);
    paramString.initFromJson();
    return paramString;
  }
  
  byte[] getEncoded()
  {
    return hmacKey.getEncoded();
  }
  
  protected SecretKey getJceKey()
  {
    return hmacKey;
  }
  
  protected Stream getStream()
    throws KeyczarException
  {
    return new HmacKey.HmacStream(this);
  }
  
  public KeyType getType()
  {
    return DefaultKeyType.HMAC_SHA1;
  }
  
  protected byte[] hash()
  {
    return hash;
  }
  
  void initFromJson()
    throws KeyczarException
  {
    initJceKey(Base64Coder.decodeWebSafe(hmacKeyString));
  }
}

/* Location:
 * Qualified Name:     org.keyczar.HmacKey
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */