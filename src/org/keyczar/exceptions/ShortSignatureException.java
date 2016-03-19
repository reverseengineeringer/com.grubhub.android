package org.keyczar.exceptions;

import org.keyczar.i18n.Messages;

public class ShortSignatureException
  extends KeyczarException
{
  private static final long serialVersionUID = 4756259412053573790L;
  
  public ShortSignatureException(int paramInt)
  {
    super(Messages.getString("SignatureTooShort", new Object[] { Integer.valueOf(paramInt) }));
  }
}

/* Location:
 * Qualified Name:     org.keyczar.exceptions.ShortSignatureException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */