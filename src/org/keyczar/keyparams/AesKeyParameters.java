package org.keyczar.keyparams;

import org.keyczar.HmacKey;
import org.keyczar.exceptions.KeyczarException;

public abstract interface AesKeyParameters
  extends KeyParameters
{
  public abstract HmacKey getHmacKey()
    throws KeyczarException;
}

/* Location:
 * Qualified Name:     org.keyczar.keyparams.AesKeyParameters
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */