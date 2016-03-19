package org.keyczar.exceptions;

import org.keyczar.i18n.Messages;

public class BadVersionException
  extends KeyczarException
{
  private static final long serialVersionUID = 7164364283899332453L;
  
  public BadVersionException(byte paramByte)
  {
    super(Messages.getString("BadVersionNumber", new Object[] { Byte.valueOf(paramByte) }));
  }
}

/* Location:
 * Qualified Name:     org.keyczar.exceptions.BadVersionException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */