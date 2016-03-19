package org.keyczar.interfaces;

import java.nio.ByteBuffer;
import org.keyczar.exceptions.KeyczarException;

public abstract interface DecryptingStream
  extends Stream
{
  public abstract int doFinalDecrypt(ByteBuffer paramByteBuffer1, ByteBuffer paramByteBuffer2)
    throws KeyczarException;
  
  public abstract VerifyingStream getVerifyingStream();
  
  public abstract void initDecrypt(ByteBuffer paramByteBuffer)
    throws KeyczarException;
  
  public abstract int maxOutputSize(int paramInt);
  
  public abstract int updateDecrypt(ByteBuffer paramByteBuffer1, ByteBuffer paramByteBuffer2)
    throws KeyczarException;
}

/* Location:
 * Qualified Name:     org.keyczar.interfaces.DecryptingStream
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */