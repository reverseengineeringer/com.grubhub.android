package org.keyczar.interfaces;

import java.nio.ByteBuffer;
import org.keyczar.exceptions.KeyczarException;

public abstract interface VerifyingStream
  extends Stream
{
  public abstract int digestSize();
  
  public abstract void initVerify()
    throws KeyczarException;
  
  public abstract void updateVerify(ByteBuffer paramByteBuffer)
    throws KeyczarException;
  
  public abstract boolean verify(ByteBuffer paramByteBuffer)
    throws KeyczarException;
}

/* Location:
 * Qualified Name:     org.keyczar.interfaces.VerifyingStream
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */