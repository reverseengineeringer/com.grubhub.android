package org.keyczar.exceptions;

import org.keyczar.i18n.Messages;

public class ShortBufferException
  extends KeyczarException
{
  private static final long serialVersionUID = -3056628233532649L;
  
  public ShortBufferException(int paramInt1, int paramInt2)
  {
    super(Messages.getString("InputBufferTooShort", new Object[] { Integer.valueOf(paramInt1), Integer.valueOf(paramInt2) }));
  }
  
  public ShortBufferException(Throwable paramThrowable)
  {
    super(paramThrowable);
  }
}

/* Location:
 * Qualified Name:     org.keyczar.exceptions.ShortBufferException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */