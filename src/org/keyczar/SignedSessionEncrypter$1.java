package org.keyczar;

import org.keyczar.exceptions.KeyczarException;
import org.keyczar.keyparams.AesKeyParameters;

class SignedSessionEncrypter$1
  implements AesKeyParameters
{
  SignedSessionEncrypter$1(SignedSessionEncrypter paramSignedSessionEncrypter, int paramInt) {}
  
  public HmacKey getHmacKey()
    throws KeyczarException
  {
    return HmacKey.generate(DefaultKeyType.HMAC_SHA1.applyDefaultParameters(null));
  }
  
  public int getKeySize()
  {
    return val$aesKeySize;
  }
}

/* Location:
 * Qualified Name:     org.keyczar.SignedSessionEncrypter.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */