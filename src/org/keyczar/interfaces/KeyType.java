package org.keyczar.interfaces;

import org.keyczar.exceptions.KeyczarException;
import org.keyczar.keyparams.KeyParameters;

public abstract interface KeyType
{
  public abstract KeyParameters applyDefaultParameters(KeyParameters paramKeyParameters);
  
  public abstract KeyType.Builder getBuilder();
  
  public abstract String getName();
  
  public abstract String validateKeyParameters(KeyParameters paramKeyParameters)
    throws KeyczarException;
}

/* Location:
 * Qualified Name:     org.keyczar.interfaces.KeyType
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */