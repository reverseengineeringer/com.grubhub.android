package org.keyczar;

import org.keyczar.exceptions.KeyczarException;
import org.keyczar.keyparams.AesKeyParameters;
import org.keyczar.keyparams.KeyParameters;

class DefaultKeyType$DefaultingAesKeyParameters
  extends DefaultKeyType.DefaultingKeyParameters
  implements AesKeyParameters
{
  public DefaultKeyType$DefaultingAesKeyParameters(DefaultKeyType paramDefaultKeyType, KeyParameters paramKeyParameters)
  {
    super(paramDefaultKeyType, paramKeyParameters);
  }
  
  public HmacKey getHmacKey()
    throws KeyczarException
  {
    return HmacKey.generate(DefaultKeyType.HMAC_SHA1.applyDefaultParameters(null));
  }
}

/* Location:
 * Qualified Name:     org.keyczar.DefaultKeyType.DefaultingAesKeyParameters
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */