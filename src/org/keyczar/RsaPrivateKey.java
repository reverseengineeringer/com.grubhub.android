package org.keyczar;

import com.google.gson.Gson;
import com.google.gson.annotations.Expose;
import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.interfaces.RSAPrivateCrtKey;
import java.security.spec.RSAPrivateCrtKeySpec;
import org.keyczar.enums.RsaPadding;
import org.keyczar.exceptions.KeyczarException;
import org.keyczar.interfaces.KeyType;
import org.keyczar.interfaces.Stream;
import org.keyczar.keyparams.RsaKeyParameters;
import org.keyczar.util.Util;

public class RsaPrivateKey
  extends KeyczarKey
  implements KeyczarPrivateKey
{
  private static final String KEY_GEN_ALGORITHM = "RSA";
  private static final String SIG_ALGORITHM = "SHA1withRSA";
  @Expose
  private final String crtCoefficient;
  private RSAPrivateCrtKey jcePrivateKey;
  @Expose
  private final String primeExponentP;
  @Expose
  private final String primeExponentQ;
  @Expose
  private final String primeP;
  @Expose
  private final String primeQ;
  @Expose
  private final String privateExponent;
  @Expose
  private final RsaPublicKey publicKey;
  
  private RsaPrivateKey()
  {
    super(0);
    publicKey = null;
    privateExponent = null;
    primeP = null;
    primeQ = null;
    primeExponentP = null;
    primeExponentQ = null;
    crtCoefficient = null;
    jcePrivateKey = null;
  }
  
  public RsaPrivateKey(RSAPrivateCrtKey paramRSAPrivateCrtKey, RsaPadding paramRsaPadding)
    throws KeyczarException
  {
    super(paramRSAPrivateCrtKey.getModulus().bitLength());
    publicKey = new RsaPublicKey(paramRSAPrivateCrtKey, paramRsaPadding);
    privateExponent = Util.encodeBigInteger(paramRSAPrivateCrtKey.getPrivateExponent());
    primeP = Util.encodeBigInteger(paramRSAPrivateCrtKey.getPrimeP());
    primeQ = Util.encodeBigInteger(paramRSAPrivateCrtKey.getPrimeQ());
    primeExponentP = Util.encodeBigInteger(paramRSAPrivateCrtKey.getPrimeExponentP());
    primeExponentQ = Util.encodeBigInteger(paramRSAPrivateCrtKey.getPrimeExponentQ());
    crtCoefficient = Util.encodeBigInteger(paramRSAPrivateCrtKey.getCrtCoefficient());
    jcePrivateKey = paramRSAPrivateCrtKey;
  }
  
  static RsaPrivateKey generate(RsaKeyParameters paramRsaKeyParameters)
    throws KeyczarException
  {
    RSAPrivateCrtKey localRSAPrivateCrtKey = (RSAPrivateCrtKey)Util.generateKeyPair("RSA", paramRsaKeyParameters.getKeySize()).getPrivate();
    if (paramRsaKeyParameters.getRsaPadding() == null) {}
    for (paramRsaKeyParameters = RsaPadding.OAEP;; paramRsaKeyParameters = paramRsaKeyParameters.getRsaPadding()) {
      return new RsaPrivateKey(localRSAPrivateCrtKey, paramRsaKeyParameters);
    }
  }
  
  private RsaPrivateKey initFromJson()
    throws KeyczarException
  {
    publicKey.initFromJson();
    try
    {
      jcePrivateKey = ((RSAPrivateCrtKey)KeyFactory.getInstance("RSA").generatePrivate(new RSAPrivateCrtKeySpec(Util.decodeBigInteger(publicKey.modulus), Util.decodeBigInteger(publicKey.publicExponent), Util.decodeBigInteger(privateExponent), Util.decodeBigInteger(primeP), Util.decodeBigInteger(primeQ), Util.decodeBigInteger(primeExponentP), Util.decodeBigInteger(primeExponentQ), Util.decodeBigInteger(crtCoefficient))));
      return this;
    }
    catch (GeneralSecurityException localGeneralSecurityException)
    {
      throw new KeyczarException(localGeneralSecurityException);
    }
  }
  
  static RsaPrivateKey read(String paramString)
    throws KeyczarException
  {
    return ((RsaPrivateKey)Util.gson().fromJson(paramString, RsaPrivateKey.class)).initFromJson();
  }
  
  protected RSAPrivateCrtKey getJceKey()
  {
    return jcePrivateKey;
  }
  
  public KeyczarPublicKey getPublic()
  {
    return publicKey;
  }
  
  protected Stream getStream()
    throws KeyczarException
  {
    return new RsaPrivateKey.RsaPrivateStream(this);
  }
  
  public KeyType getType()
  {
    return DefaultKeyType.RSA_PRIV;
  }
  
  protected byte[] hash()
  {
    return publicKey.hash();
  }
}

/* Location:
 * Qualified Name:     org.keyczar.RsaPrivateKey
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */