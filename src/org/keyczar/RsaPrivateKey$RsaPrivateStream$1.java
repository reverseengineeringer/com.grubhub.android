package org.keyczar;

import java.nio.ByteBuffer;
import org.keyczar.interfaces.VerifyingStream;

class RsaPrivateKey$RsaPrivateStream$1
  implements VerifyingStream
{
  RsaPrivateKey$RsaPrivateStream$1(RsaPrivateKey.RsaPrivateStream paramRsaPrivateStream) {}
  
  public int digestSize()
  {
    return 0;
  }
  
  public void initVerify() {}
  
  public void updateVerify(ByteBuffer paramByteBuffer) {}
  
  public boolean verify(ByteBuffer paramByteBuffer)
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     org.keyczar.RsaPrivateKey.RsaPrivateStream.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */