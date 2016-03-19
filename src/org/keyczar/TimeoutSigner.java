package org.keyczar;

import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import org.keyczar.exceptions.KeyczarException;
import org.keyczar.interfaces.KeyczarReader;
import org.keyczar.util.Base64Coder;

public class TimeoutSigner
  extends TimeoutVerifier
{
  private Signer signer;
  
  public TimeoutSigner(String paramString)
    throws KeyczarException
  {
    signer = new Signer(paramString);
    setVerifier(signer);
  }
  
  public TimeoutSigner(Signer paramSigner)
  {
    signer = paramSigner;
    setVerifier(signer);
  }
  
  public TimeoutSigner(KeyczarReader paramKeyczarReader)
    throws KeyczarException
  {
    signer = new Signer(paramKeyczarReader);
    setVerifier(signer);
  }
  
  public String timeoutSign(String paramString, long paramLong)
    throws KeyczarException
  {
    try
    {
      paramString = Base64Coder.encodeWebSafe(timeoutSign(paramString.getBytes("UTF-8"), paramLong));
      return paramString;
    }
    catch (UnsupportedEncodingException paramString)
    {
      throw new KeyczarException(paramString);
    }
  }
  
  public void timeoutSign(ByteBuffer paramByteBuffer1, long paramLong, ByteBuffer paramByteBuffer2)
    throws KeyczarException
  {
    signer.sign(paramByteBuffer1, null, paramLong, paramByteBuffer2);
  }
  
  public byte[] timeoutSign(byte[] paramArrayOfByte, long paramLong)
    throws KeyczarException
  {
    ByteBuffer localByteBuffer = ByteBuffer.allocate(signer.digestSize() + 8);
    timeoutSign(ByteBuffer.wrap(paramArrayOfByte), paramLong, localByteBuffer);
    localByteBuffer.reset();
    paramArrayOfByte = new byte[localByteBuffer.remaining()];
    localByteBuffer.get(paramArrayOfByte);
    return paramArrayOfByte;
  }
}

/* Location:
 * Qualified Name:     org.keyczar.TimeoutSigner
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */