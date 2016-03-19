package org.keyczar;

import java.util.List;
import org.keyczar.exceptions.KeyczarException;
import org.keyczar.keyparams.KeyParameters;

class DefaultKeyType$DefaultingKeyParameters
  implements KeyParameters
{
  protected final KeyParameters baseParameters;
  
  public DefaultKeyType$DefaultingKeyParameters(DefaultKeyType paramDefaultKeyType, KeyParameters paramKeyParameters)
  {
    baseParameters = paramKeyParameters;
  }
  
  public int getKeySize()
    throws KeyczarException
  {
    if ((baseParameters == null) || (baseParameters.getKeySize() == -1)) {
      return ((Integer)DefaultKeyType.access$100(this$0).get(0)).intValue();
    }
    return baseParameters.getKeySize();
  }
}

/* Location:
 * Qualified Name:     org.keyczar.DefaultKeyType.DefaultingKeyParameters
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */