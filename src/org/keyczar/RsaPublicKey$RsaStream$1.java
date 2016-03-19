package org.keyczar;

import java.nio.ByteBuffer;
import org.keyczar.interfaces.SigningStream;

class RsaPublicKey$RsaStream$1
  implements SigningStream
{
  RsaPublicKey$RsaStream$1(RsaPublicKey.RsaStream paramRsaStream) {}
  
  public int digestSize()
  {
    return 0;
  }
  
  public void initSign() {}
  
  public void sign(ByteBuffer paramByteBuffer) {}
  
  public void updateSign(ByteBuffer paramByteBuffer) {}
}

/* Location:
 * Qualified Name:     org.keyczar.RsaPublicKey.RsaStream.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */