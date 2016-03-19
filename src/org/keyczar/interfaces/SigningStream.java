package org.keyczar.interfaces;

import java.nio.ByteBuffer;
import org.keyczar.exceptions.KeyczarException;

public abstract interface SigningStream
  extends Stream
{
  public abstract int digestSize();
  
  public abstract void initSign()
    throws KeyczarException;
  
  public abstract void sign(ByteBuffer paramByteBuffer)
    throws KeyczarException;
  
  public abstract void updateSign(ByteBuffer paramByteBuffer)
    throws KeyczarException;
}

/* Location:
 * Qualified Name:     org.keyczar.interfaces.SigningStream
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */