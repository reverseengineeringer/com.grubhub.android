package org.keyczar.exceptions;

import org.keyczar.i18n.Messages;

public class InvalidSignatureException
  extends KeyczarException
{
  private static final long serialVersionUID = -9209043556761224393L;
  
  public InvalidSignatureException()
  {
    super(Messages.getString("InvalidSignatureException", new Object[0]));
  }
}

/* Location:
 * Qualified Name:     org.keyczar.exceptions.InvalidSignatureException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */