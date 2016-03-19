package org.keyczar;

import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import org.keyczar.exceptions.KeyczarException;
import org.keyczar.exceptions.ShortSignatureException;
import org.keyczar.interfaces.KeyczarReader;
import org.keyczar.util.Base64Coder;
import org.keyczar.util.Clock;
import org.keyczar.util.SystemClock;
import org.keyczar.util.Util;

public class TimeoutVerifier
{
  private Clock clock = new SystemClock();
  private Verifier verifier;
  
  TimeoutVerifier() {}
  
  public TimeoutVerifier(String paramString)
    throws KeyczarException
  {
    setVerifier(new Verifier(paramString));
  }
  
  public TimeoutVerifier(Verifier paramVerifier)
  {
    setVerifier(paramVerifier);
  }
  
  public TimeoutVerifier(KeyczarReader paramKeyczarReader)
    throws KeyczarException
  {
    setVerifier(new Verifier(paramKeyczarReader));
  }
  
  void setClock(Clock paramClock)
  {
    clock = paramClock;
  }
  
  void setVerifier(Verifier paramVerifier)
  {
    verifier = paramVerifier;
  }
  
  public boolean verify(String paramString1, String paramString2)
    throws KeyczarException
  {
    try
    {
      boolean bool = verify(paramString1.getBytes("UTF-8"), Base64Coder.decodeWebSafe(paramString2));
      return bool;
    }
    catch (UnsupportedEncodingException paramString1)
    {
      throw new KeyczarException(paramString1);
    }
  }
  
  public boolean verify(ByteBuffer paramByteBuffer1, ByteBuffer paramByteBuffer2)
    throws KeyczarException
  {
    if (paramByteBuffer2.remaining() < 13) {
      throw new ShortSignatureException(paramByteBuffer2.remaining());
    }
    byte[] arrayOfByte2 = new byte[5];
    paramByteBuffer2.get(arrayOfByte2);
    byte[] arrayOfByte1 = new byte[8];
    paramByteBuffer2.get(arrayOfByte1);
    long l = Util.toLong(arrayOfByte1);
    if (clock.now() > l) {
      return false;
    }
    ByteBuffer localByteBuffer = ByteBuffer.allocate(paramByteBuffer2.remaining() + 5);
    localByteBuffer.put(arrayOfByte2);
    localByteBuffer.put(paramByteBuffer2);
    localByteBuffer.rewind();
    paramByteBuffer2 = ByteBuffer.allocate(paramByteBuffer1.remaining() + 8);
    paramByteBuffer2.put(arrayOfByte1);
    paramByteBuffer2.put(paramByteBuffer1);
    paramByteBuffer2.rewind();
    return verifier.verify(paramByteBuffer2, localByteBuffer);
  }
  
  public boolean verify(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
    throws KeyczarException
  {
    return verify(ByteBuffer.wrap(paramArrayOfByte1), ByteBuffer.wrap(paramArrayOfByte2));
  }
}

/* Location:
 * Qualified Name:     org.keyczar.TimeoutVerifier
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */