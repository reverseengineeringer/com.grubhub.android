package org.keyczar;

import org.keyczar.enums.RsaPadding;
import org.keyczar.exceptions.KeyczarException;
import org.keyczar.keyparams.KeyParameters;
import org.keyczar.keyparams.RsaKeyParameters;

final class DefaultKeyType$DefaultingRsaKeyParameters
  extends DefaultKeyType.DefaultingKeyParameters
  implements RsaKeyParameters
{
  public DefaultKeyType$DefaultingRsaKeyParameters(DefaultKeyType paramDefaultKeyType, KeyParameters paramKeyParameters)
  {
    super(paramDefaultKeyType, paramKeyParameters);
  }
  
  public RsaPadding getRsaPadding()
    throws KeyczarException
  {
    RsaKeyParameters localRsaKeyParameters = (RsaKeyParameters)baseParameters;
    if ((localRsaKeyParameters == null) || (localRsaKeyParameters.getRsaPadding() == null)) {
      return RsaPadding.OAEP;
    }
    return localRsaKeyParameters.getRsaPadding();
  }
}

/* Location:
 * Qualified Name:     org.keyczar.DefaultKeyType.DefaultingRsaKeyParameters
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */