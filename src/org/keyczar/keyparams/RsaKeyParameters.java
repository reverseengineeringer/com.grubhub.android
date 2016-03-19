package org.keyczar.keyparams;

import org.keyczar.enums.RsaPadding;
import org.keyczar.exceptions.KeyczarException;

public abstract interface RsaKeyParameters
  extends KeyParameters
{
  public abstract RsaPadding getRsaPadding()
    throws KeyczarException;
}

/* Location:
 * Qualified Name:     org.keyczar.keyparams.RsaKeyParameters
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */