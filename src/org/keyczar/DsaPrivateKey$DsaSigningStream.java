package org.keyczar;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.security.Signature;
import java.security.SignatureException;
import org.keyczar.exceptions.KeyczarException;
import org.keyczar.interfaces.SigningStream;
import org.keyczar.interfaces.VerifyingStream;

class DsaPrivateKey$DsaSigningStream
  implements SigningStream, VerifyingStream
{
  private Signature signature;
  private VerifyingStream verifyingStream;
  
  public DsaPrivateKey$DsaSigningStream(DsaPrivateKey paramDsaPrivateKey)
    throws KeyczarException
  {
    try
    {
      signature = Signature.getInstance("SHA1withDSA");
      verifyingStream = ((VerifyingStream)DsaPrivateKey.access$000(paramDsaPrivateKey).getStream());
      return;
    }
    catch (GeneralSecurityException paramDsaPrivateKey)
    {
      throw new KeyczarException(paramDsaPrivateKey);
    }
  }
  
  public int digestSize()
  {
    return 48;
  }
  
  public void initSign()
    throws KeyczarException
  {
    try
    {
      signature.initSign(DsaPrivateKey.access$100(this$0));
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
    verifyingStream.initVerify();
  }
  
  public void sign(ByteBuffer paramByteBuffer)
    throws KeyczarException
  {
    try
    {
      paramByteBuffer.put(signature.sign());
      return;
    }
    catch (SignatureException paramByteBuffer)
    {
      throw new KeyczarException(paramByteBuffer);
    }
  }
  
  public void updateSign(ByteBuffer paramByteBuffer)
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
  
  public void updateVerify(ByteBuffer paramByteBuffer)
    throws KeyczarException
  {
    verifyingStream.updateVerify(paramByteBuffer);
  }
  
  public boolean verify(ByteBuffer paramByteBuffer)
    throws KeyczarException
  {
    return verifyingStream.verify(paramByteBuffer);
  }
}

/* Location:
 * Qualified Name:     org.keyczar.DsaPrivateKey.DsaSigningStream
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */