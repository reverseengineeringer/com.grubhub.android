package org.keyczar.enums;

import java.math.BigInteger;
import java.security.interfaces.RSAPublicKey;
import org.keyczar.exceptions.KeyczarException;
import org.keyczar.util.Util;

public enum RsaPadding
{
  OAEP("RSA/ECB/OAEPWITHSHA1ANDMGF1PADDING"),  PKCS("RSA/ECB/PKCS1PADDING");
  
  private final String cryptAlgorithm;
  
  private RsaPadding(String paramString)
  {
    cryptAlgorithm = paramString;
  }
  
  public byte[] computeFullHash(RSAPublicKey paramRSAPublicKey)
    throws KeyczarException
  {
    switch (1.$SwitchMap$org$keyczar$enums$RsaPadding[ordinal()])
    {
    default: 
      throw new KeyczarException("Bug! Unknown padding type");
    case 1: 
      return Util.prefixHash(new byte[][] { Util.stripLeadingZeros(paramRSAPublicKey.getModulus().toByteArray()), Util.stripLeadingZeros(paramRSAPublicKey.getPublicExponent().toByteArray()) });
    }
    return Util.prefixHash(new byte[][] { paramRSAPublicKey.getModulus().toByteArray(), paramRSAPublicKey.getPublicExponent().toByteArray() });
  }
  
  public String getCryptAlgorithm()
  {
    return cryptAlgorithm;
  }
}

/* Location:
 * Qualified Name:     org.keyczar.enums.RsaPadding
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */