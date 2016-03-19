package org.keyczar;

import com.google.gson.Gson;
import com.google.gson.annotations.Expose;
import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.security.KeyFactory;
import java.security.PublicKey;
import java.security.interfaces.DSAParams;
import java.security.interfaces.DSAPrivateKey;
import java.security.interfaces.DSAPublicKey;
import java.security.spec.DSAPublicKeySpec;
import org.keyczar.exceptions.KeyczarException;
import org.keyczar.interfaces.KeyType;
import org.keyczar.interfaces.Stream;
import org.keyczar.util.Base64Coder;
import org.keyczar.util.Util;

public class DsaPublicKey
  extends KeyczarPublicKey
{
  private static final int DSA_DIGEST_SIZE = 48;
  private static final String KEY_GEN_ALGORITHM = "DSA";
  private static final String SIG_ALGORITHM = "SHA1withDSA";
  @Expose
  final String g;
  private final byte[] hash = new byte[4];
  private DSAPublicKey jcePublicKey;
  @Expose
  final String p;
  @Expose
  final String q;
  @Expose
  final String y;
  
  private DsaPublicKey()
  {
    super(0);
    jcePublicKey = null;
    g = null;
    q = null;
    p = null;
    y = null;
  }
  
  private DsaPublicKey(BigInteger paramBigInteger, DSAParams paramDSAParams)
    throws KeyczarException
  {
    super(paramDSAParams.getP().bitLength());
    BigInteger localBigInteger1 = paramDSAParams.getP();
    BigInteger localBigInteger2 = paramDSAParams.getQ();
    paramDSAParams = paramDSAParams.getG();
    y = Base64Coder.encodeWebSafe(paramBigInteger.toByteArray());
    p = Base64Coder.encodeWebSafe(localBigInteger1.toByteArray());
    q = Base64Coder.encodeWebSafe(localBigInteger2.toByteArray());
    g = Base64Coder.encodeWebSafe(paramDSAParams.toByteArray());
    initializeJceKey(paramBigInteger, localBigInteger1, localBigInteger2, paramDSAParams);
    initializeHash();
  }
  
  DsaPublicKey(DSAPrivateKey paramDSAPrivateKey)
    throws KeyczarException
  {
    this(computeY(paramDSAPrivateKey), paramDSAPrivateKey.getParams());
  }
  
  DsaPublicKey(DSAPublicKey paramDSAPublicKey)
    throws KeyczarException
  {
    this(paramDSAPublicKey.getY(), paramDSAPublicKey.getParams());
  }
  
  private static BigInteger computeY(DSAPrivateKey paramDSAPrivateKey)
  {
    BigInteger localBigInteger = paramDSAPrivateKey.getParams().getP();
    return paramDSAPrivateKey.getParams().getG().modPow(paramDSAPrivateKey.getX(), localBigInteger);
  }
  
  private void initializeHash()
    throws KeyczarException
  {
    DSAParams localDSAParams = jcePublicKey.getParams();
    System.arraycopy(Util.prefixHash(new byte[][] { Util.stripLeadingZeros(localDSAParams.getP().toByteArray()), Util.stripLeadingZeros(localDSAParams.getQ().toByteArray()), Util.stripLeadingZeros(localDSAParams.getG().toByteArray()), Util.stripLeadingZeros(jcePublicKey.getY().toByteArray()) }), 0, hash, 0, hash.length);
  }
  
  private void initializeJceKey(BigInteger paramBigInteger1, BigInteger paramBigInteger2, BigInteger paramBigInteger3, BigInteger paramBigInteger4)
    throws KeyczarException
  {
    try
    {
      jcePublicKey = ((DSAPublicKey)KeyFactory.getInstance("DSA").generatePublic(new DSAPublicKeySpec(paramBigInteger1, paramBigInteger2, paramBigInteger3, paramBigInteger4)));
      return;
    }
    catch (GeneralSecurityException paramBigInteger1)
    {
      throw new KeyczarException(paramBigInteger1);
    }
  }
  
  static DsaPublicKey read(String paramString)
    throws KeyczarException
  {
    paramString = (DsaPublicKey)Util.gson().fromJson(paramString, DsaPublicKey.class);
    paramString.initFromJson();
    return paramString;
  }
  
  protected PublicKey getJceKey()
  {
    return jcePublicKey;
  }
  
  protected Stream getStream()
    throws KeyczarException
  {
    return new DsaPublicKey.DsaVerifyingStream(this);
  }
  
  public KeyType getType()
  {
    return DefaultKeyType.DSA_PUB;
  }
  
  public byte[] hash()
  {
    return hash;
  }
  
  void initFromJson()
    throws KeyczarException
  {
    initializeJceKey(new BigInteger(Base64Coder.decodeWebSafe(y)), new BigInteger(Base64Coder.decodeWebSafe(p)), new BigInteger(Base64Coder.decodeWebSafe(q)), new BigInteger(Base64Coder.decodeWebSafe(g)));
    initializeHash();
  }
  
  protected boolean isSecret()
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     org.keyczar.DsaPublicKey
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */