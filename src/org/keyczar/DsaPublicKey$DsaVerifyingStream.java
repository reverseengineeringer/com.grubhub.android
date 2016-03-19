package org.keyczar;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.security.Signature;
import java.security.SignatureException;
import org.keyczar.exceptions.KeyczarException;
import org.keyczar.interfaces.VerifyingStream;

class DsaPublicKey$DsaVerifyingStream
  implements VerifyingStream
{
  private Signature signature;
  
  public DsaPublicKey$DsaVerifyingStream(DsaPublicKey paramDsaPublicKey)
    throws KeyczarException
  {
    try
    {
      signature = Signature.getInstance("SHA1withDSA");
      return;
    }
    catch (GeneralSecurityException paramDsaPublicKey)
    {
      throw new KeyczarException(paramDsaPublicKey);
    }
  }
  
  public int digestSize()
  {
    return 48;
  }
  
  public void initVerify()
    throws KeyczarException
  {
    try
    {
      signature.initVerify(DsaPublicKey.access$000(this$0));
      return;
    }
    catch (GeneralSecurityException localGeneralSecurityException)
    {
      throw new KeyczarException(localGeneralSecurityException);
    }
  }
  
  public void updateVerify(ByteBuffer paramByteBuffer)
    throws KeyczarException
  {
    try
    {
      signature.update(paramByteBuffer);
      return;
    }
    catch (SignatureException paramByteBuffer)
    {
      throw new KeyczarException(paramByteBuffer);
    }
  }
  
  public boolean verify(ByteBuffer paramByteBuffer)
    throws KeyczarException
  {
    try
    {
      boolean bool = signature.verify(paramByteBuffer.array(), paramByteBuffer.position(), paramByteBuffer.limit() - paramByteBuffer.position());
      return bool;
    }
    catch (GeneralSecurityException paramByteBuffer)
    {
      throw new KeyczarException(paramByteBuffer);
    }
  }
}

/* Location:
 * Qualified Name:     org.keyczar.DsaPublicKey.DsaVerifyingStream
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */