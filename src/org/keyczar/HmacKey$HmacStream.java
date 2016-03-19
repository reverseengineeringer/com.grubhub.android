package org.keyczar;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import javax.crypto.Mac;
import org.keyczar.exceptions.KeyczarException;
import org.keyczar.interfaces.SigningStream;
import org.keyczar.interfaces.VerifyingStream;
import org.keyczar.util.Util;

class HmacKey$HmacStream
  implements SigningStream, VerifyingStream
{
  private final Mac hmac;
  
  public HmacKey$HmacStream(HmacKey paramHmacKey)
    throws KeyczarException
  {
    try
    {
      hmac = Mac.getInstance("HMACSHA1");
      return;
    }
    catch (GeneralSecurityException paramHmacKey)
    {
      throw new KeyczarException(paramHmacKey);
    }
  }
  
  public int digestSize()
  {
    return 20;
  }
  
  public void initSign()
    throws KeyczarException
  {
    try
    {
      hmac.init(HmacKey.access$000(this$0));
      return;
    }
    catch (GeneralSecurityException localGeneralSecurityException)
    {
      throw new KeyczarException(localGeneralSecurityException);
    }
  }
  
  public void initVerify()
    throws KeyczarException
  {
    initSign();
  }
  
  public void sign(ByteBuffer paramByteBuffer)
  {
    paramByteBuffer.put(hmac.doFinal());
  }
  
  public void updateSign(ByteBuffer paramByteBuffer)
  {
    hmac.update(paramByteBuffer);
  }
  
  public void updateVerify(ByteBuffer paramByteBuffer)
  {
    updateSign(paramByteBuffer);
  }
  
  public boolean verify(ByteBuffer paramByteBuffer)
  {
    byte[] arrayOfByte = new byte[paramByteBuffer.remaining()];
    paramByteBuffer.get(arrayOfByte);
    return Util.safeArrayEquals(hmac.doFinal(), arrayOfByte);
  }
}

/* Location:
 * Qualified Name:     org.keyczar.HmacKey.HmacStream
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */