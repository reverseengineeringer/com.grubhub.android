package org.keyczar.interfaces;

import org.keyczar.exceptions.KeyczarException;

public abstract interface KeyczarReader
{
  public abstract String getKey()
    throws KeyczarException;
  
  public abstract String getKey(int paramInt)
    throws KeyczarException;
  
  public abstract String getMetadata()
    throws KeyczarException;
}

/* Location:
 * Qualified Name:     org.keyczar.interfaces.KeyczarReader
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */