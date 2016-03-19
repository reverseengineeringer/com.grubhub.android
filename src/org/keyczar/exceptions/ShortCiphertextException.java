package org.keyczar.exceptions;

import org.keyczar.i18n.Messages;

public class ShortCiphertextException
  extends KeyczarException
{
  private static final long serialVersionUID = 7512790265291518499L;
  
  public ShortCiphertextException(int paramInt)
  {
    super(Messages.getString("CiphertextTooShort", new Object[] { Integer.valueOf(paramInt) }));
  }
}

/* Location:
 * Qualified Name:     org.keyczar.exceptions.ShortCiphertextException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */