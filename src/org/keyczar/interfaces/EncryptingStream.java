package org.keyczar.interfaces;

import java.nio.ByteBuffer;
import org.keyczar.exceptions.KeyczarException;

public abstract interface EncryptingStream
  extends Stream
{
  public abstract int doFinalEncrypt(ByteBuffer paramByteBuffer1, ByteBuffer paramByteBuffer2)
    throws KeyczarException;
  
  public abstract SigningStream getSigningStream()
    throws KeyczarException;
  
  public abstract int initEncrypt(ByteBuffer paramByteBuffer)
    throws KeyczarException;
  
  public abstract int maxOutputSize(int paramInt);
  
  public abstract int updateEncrypt(ByteBuffer paramByteBuffer1, ByteBuffer paramByteBuffer2)
    throws KeyczarException;
}

/* Location:
 * Qualified Name:     org.keyczar.interfaces.EncryptingStream
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */