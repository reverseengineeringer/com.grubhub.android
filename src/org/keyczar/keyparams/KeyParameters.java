package org.keyczar.keyparams;

import org.keyczar.exceptions.KeyczarException;

public abstract interface KeyParameters
{
  public abstract int getKeySize()
    throws KeyczarException;
}

/* Location:
 * Qualified Name:     org.keyczar.keyparams.KeyParameters
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */