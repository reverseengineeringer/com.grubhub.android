package org.keyczar;

import com.google.gson.Gson;
import com.google.gson.annotations.Expose;
import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.interfaces.DSAParams;
import java.security.interfaces.DSAPrivateKey;
import java.security.spec.DSAPrivateKeySpec;
import org.keyczar.exceptions.KeyczarException;
import org.keyczar.interfaces.KeyType;
import org.keyczar.interfaces.Stream;
import org.keyczar.keyparams.KeyParameters;
import org.keyczar.util.Base64Coder;
import org.keyczar.util.Util;

public class DsaPrivateKey
  extends KeyczarKey
  implements KeyczarPrivateKey
{
  private static final int DSA_DIGEST_SIZE = 48;
  private static final String KEY_GEN_ALGORITHM = "DSA";
  private static final String SIG_ALGORITHM = "SHA1withDSA";
  private DSAPrivateKey jcePrivateKey;
  @Expose
  private final DsaPublicKey publicKey;
  @Expose
  private final String x;
  
  private DsaPrivateKey()
  {
    super(0);
    publicKey = null;
    x = null;
  }
  
  public DsaPrivateKey(DSAPrivateKey paramDSAPrivateKey)
    throws KeyczarException
  {
    super(paramDSAPrivateKey.getParams().getP().bitLength());
    publicKey = new DsaPublicKey(paramDSAPrivateKey);
    jcePrivateKey = paramDSAPrivateKey;
    x = Base64Coder.encodeWebSafe(jcePrivateKey.getX().toByteArray());
  }
  
  static DsaPrivateKey generate(KeyParameters paramKeyParameters)
    throws KeyczarException
  {
    return new DsaPrivateKey((DSAPrivateKey)Util.generateKeyPair("DSA", paramKeyParameters.getKeySize()).getPrivate());
  }
  
  private DsaPrivateKey initFromJson()
    throws KeyczarException
  {
    publicKey.initFromJson();
    BigInteger localBigInteger1 = new BigInteger(Base64Coder.decodeWebSafe(x));
    BigInteger localBigInteger2 = new BigInteger(Base64Coder.decodeWebSafe(publicKey.p));
    BigInteger localBigInteger3 = new BigInteger(Base64Coder.decodeWebSafe(publicKey.q));
    BigInteger localBigInteger4 = new BigInteger(Base64Coder.decodeWebSafe(publicKey.g));
    try
    {
      jcePrivateKey = ((DSAPrivateKey)KeyFactory.getInstance("DSA").generatePrivate(new DSAPrivateKeySpec(localBigInteger1, localBigInteger2, localBigInteger3, localBigInteger4)));
      return this;
    }
    catch (GeneralSecurityException localGeneralSecurityException)
    {
      throw new KeyczarException(localGeneralSecurityException);
    }
  }
  
  static DsaPrivateKey read(String paramString)
    throws KeyczarException
  {
    return ((DsaPrivateKey)Util.gson().fromJson(paramString, DsaPrivateKey.class)).initFromJson();
  }
  
  protected DSAPrivateKey getJceKey()
  {
    return jcePrivateKey;
  }
  
  public String getKeyGenAlgorithm()
  {
    return "DSA";
  }
  
  public KeyczarPublicKey getPublic()
  {
    return publicKey;
  }
  
  protected Stream getStream()
    throws KeyczarException
  {
    return new DsaPrivateKey.DsaSigningStream(this);
  }
  
  public KeyType getType()
  {
    return DefaultKeyType.DSA_PRIV;
  }
  
  protected byte[] hash()
  {
    return getPublic().hash();
  }
}

/* Location:
 * Qualified Name:     org.keyczar.DsaPrivateKey
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */