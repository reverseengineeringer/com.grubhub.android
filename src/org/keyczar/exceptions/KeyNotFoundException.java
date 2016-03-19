package org.keyczar.exceptions;

import org.keyczar.i18n.Messages;

public class KeyNotFoundException
  extends KeyczarException
{
  private static final long serialVersionUID = -2745196315795456118L;
  
  KeyNotFoundException(String paramString)
  {
    super(paramString);
  }
  
  public KeyNotFoundException(byte[] paramArrayOfByte)
  {
    super(Messages.getString("KeyWithHashIdentifier", new Object[] { Integer.toHexString((paramArrayOfByte[0] & 0xFF) << 24 | (paramArrayOfByte[1] & 0xFF) << 16 | (paramArrayOfByte[2] & 0xFF) << 8 | paramArrayOfByte[3] & 0xFF) }));
  }
}

/* Location:
 * Qualified Name:     org.keyczar.exceptions.KeyNotFoundException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */