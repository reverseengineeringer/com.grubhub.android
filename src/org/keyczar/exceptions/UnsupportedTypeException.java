package org.keyczar.exceptions;

import org.keyczar.i18n.Messages;
import org.keyczar.interfaces.KeyType;

public class UnsupportedTypeException
  extends KeyczarException
{
  private static final long serialVersionUID = 1L;
  
  public UnsupportedTypeException(KeyType paramKeyType)
  {
    super(Messages.getString("InvalidTypeInInput", new Object[] { paramKeyType }));
  }
}

/* Location:
 * Qualified Name:     org.keyczar.exceptions.UnsupportedTypeException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */