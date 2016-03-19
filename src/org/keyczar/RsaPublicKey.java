package org.keyczar;

import com.google.gson.Gson;
import com.google.gson.annotations.Expose;
import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.security.KeyFactory;
import java.security.interfaces.RSAPrivateCrtKey;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.RSAPublicKeySpec;
import org.keyczar.enums.RsaPadding;
import org.keyczar.exceptions.KeyczarException;
import org.keyczar.exceptions.UnsupportedTypeException;
import org.keyczar.interfaces.KeyType;
import org.keyczar.interfaces.Stream;
import org.keyczar.util.Util;

public class RsaPublicKey
  extends KeyczarPublicKey
{
  private static final String KEY_GEN_ALGORITHM = "RSA";
  private static final String SIG_ALGORITHM = "SHA1withRSA";
  private final byte[] hash = new byte[4];
  private RSAPublicKey jcePublicKey;
  @Expose
  final String modulus;
  @Expose
  final RsaPadding padding;
  @Expose
  final String publicExponent;
  
  private RsaPublicKey()
  {
    super(0);
    publicExponent = null;
    modulus = null;
    padding = null;
  }
  
  private RsaPublicKey(BigInteger paramBigInteger1, BigInteger paramBigInteger2, RsaPadding paramRsaPadding)
  {
    super(paramBigInteger1.bitLength());
    modulus = Util.encodeBigInteger(paramBigInteger1);
    publicExponent = Util.encodeBigInteger(paramBigInteger2);
    if (paramRsaPadding == RsaPadding.PKCS) {}
    for (paramBigInteger1 = RsaPadding.PKCS;; paramBigInteger1 = null)
    {
      padding = paramBigInteger1;
      return;
    }
  }
  
  RsaPublicKey(RSAPrivateCrtKey paramRSAPrivateCrtKey, RsaPadding paramRsaPadding)
    throws KeyczarException
  {
    this(paramRSAPrivateCrtKey.getModulus(), paramRSAPrivateCrtKey.getPublicExponent(), paramRsaPadding);
    initializeJceKey(paramRSAPrivateCrtKey.getModulus(), paramRSAPrivateCrtKey.getPublicExponent());
    initializeHash();
  }
  
  RsaPublicKey(RSAPublicKey paramRSAPublicKey, RsaPadding paramRsaPadding)
    throws KeyczarException
  {
    this(paramRSAPublicKey.getModulus(), paramRSAPublicKey.getPublicExponent(), paramRsaPadding);
    jcePublicKey = paramRSAPublicKey;
    initializeHash();
  }
  
  private void initializeHash()
    throws KeyczarException
  {
    System.arraycopy(getPadding().computeFullHash(jcePublicKey), 0, hash, 0, hash.length);
  }
  
  private void initializeJceKey(BigInteger paramBigInteger1, BigInteger paramBigInteger2)
    throws KeyczarException
  {
    try
    {
      paramBigInteger1 = new RSAPublicKeySpec(paramBigInteger1, paramBigInteger2);
      jcePublicKey = ((RSAPublicKey)KeyFactory.getInstance("RSA").generatePublic(paramBigInteger1));
      return;
    }
    catch (GeneralSecurityException paramBigInteger1)
    {
      throw new KeyczarException(paramBigInteger1);
    }
  }
  
  static RsaPublicKey read(String paramString)
    throws KeyczarException
  {
    paramString = (RsaPublicKey)Util.gson().fromJson(paramString, RsaPublicKey.class);
    if (paramString.getType() != DefaultKeyType.RSA_PUB) {
      throw new UnsupportedTypeException(paramString.getType());
    }
    return paramString.initFromJson();
  }
  
  protected RSAPublicKey getJceKey()
  {
    return jcePublicKey;
  }
  
  public RsaPadding getPadding()
  {
    if ((padding == null) || (padding == RsaPadding.OAEP)) {
      return RsaPadding.OAEP;
    }
    return RsaPadding.PKCS;
  }
  
  protected Stream getStream()
    throws KeyczarException
  {
    return new RsaPublicKey.RsaStream(this);
  }
  
  public KeyType getType()
  {
    return DefaultKeyType.RSA_PUB;
  }
  
  public byte[] hash()
  {
    return hash;
  }
  
  RsaPublicKey initFromJson()
    throws KeyczarException
  {
    initializeJceKey(Util.decodeBigInteger(modulus), Util.decodeBigInteger(publicExponent));
    initializeHash();
    return this;
  }
  
  protected boolean isSecret()
  {
    return false;
  }
  
  int keySizeInBytes()
  {
    return jcePublicKey.getModulus().bitLength() / 8;
  }
}

/* Location:
 * Qualified Name:     org.keyczar.RsaPublicKey
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */