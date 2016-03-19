package org.keyczar.interfaces;

import org.keyczar.KeyczarKey;
import org.keyczar.exceptions.KeyczarException;
import org.keyczar.keyparams.KeyParameters;

public abstract interface KeyType$Builder
{
  public abstract KeyczarKey generate(KeyParameters paramKeyParameters)
    throws KeyczarException;
  
  public abstract KeyczarKey read(String paramString)
    throws KeyczarException;
}

/* Location:
 * Qualified Name:     org.keyczar.interfaces.KeyType.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */