package org.keyczar;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
import java.security.Signature;
import java.security.SignatureException;
import javax.crypto.Cipher;
import javax.crypto.ShortBufferException;
import org.keyczar.enums.RsaPadding;
import org.keyczar.exceptions.KeyczarException;
import org.keyczar.interfaces.DecryptingStream;
import org.keyczar.interfaces.EncryptingStream;
import org.keyczar.interfaces.SigningStream;
import org.keyczar.interfaces.VerifyingStream;

class RsaPrivateKey$RsaPrivateStream
  implements DecryptingStream, EncryptingStream, SigningStream, VerifyingStream
{
  private Cipher cipher;
  private EncryptingStream encryptingStream;
  private Signature signature;
  private VerifyingStream verifyingStream;
  
  public RsaPrivateKey$RsaPrivateStream(RsaPrivateKey paramRsaPrivateKey)
    throws KeyczarException
  {
    try
    {
      signature = Signature.getInstance("SHA1withRSA");
      verifyingStream = ((VerifyingStream)RsaPrivateKey.access$000(paramRsaPrivateKey).getStream());
      cipher = Cipher.getInstance(RsaPrivateKey.access$000(paramRsaPrivateKey).getPadding().getCryptAlgorithm());
      encryptingStream = ((EncryptingStream)RsaPrivateKey.access$000(paramRsaPrivateKey).getStream());
      return;
    }
    catch (GeneralSecurityException paramRsaPrivateKey)
    {
      throw new KeyczarException(paramRsaPrivateKey);
    }
  }
  
  public int digestSize()
  {
    return RsaPrivateKey.access$000(this$0).keySizeInBytes();
  }
  
  public int doFinalDecrypt(ByteBuffer paramByteBuffer1, ByteBuffer paramByteBuffer2)
    throws KeyczarException
  {
    try
    {
      int i = cipher.doFinal(paramByteBuffer1, paramByteBuffer2);
      return i;
    }
    catch (GeneralSecurityException paramByteBuffer1)
    {
      throw new KeyczarException(paramByteBuffer1);
    }
  }
  
  public int doFinalEncrypt(ByteBuffer paramByteBuffer1, ByteBuffer paramByteBuffer2)
    throws KeyczarException
  {
    return encryptingStream.doFinalEncrypt(paramByteBuffer1, paramByteBuffer2);
  }
  
  public SigningStream getSigningStream()
    throws KeyczarException
  {
    return encryptingStream.getSigningStream();
  }
  
  public VerifyingStream getVerifyingStream()
  {
    new VerifyingStream()
    {
      public int digestSize()
      {
        return 0;
      }
      
      public void initVerify() {}
      
      public void updateVerify(ByteBuffer paramAnonymousByteBuffer) {}
      
      public boolean verify(ByteBuffer paramAnonymousByteBuffer)
      {
        return true;
      }
    };
  }
  
  public void initDecrypt(ByteBuffer paramByteBuffer)
    throws KeyczarException
  {
    try
    {
      cipher.init(2, RsaPrivateKey.access$100(this$0));
      return;
    }
    catch (InvalidKeyException paramByteBuffer)
    {
      throw new KeyczarException(paramByteBuffer);
    }
  }
  
  public int initEncrypt(ByteBuffer paramByteBuffer)
    throws KeyczarException
  {
    return encryptingStream.initEncrypt(paramByteBuffer);
  }
  
  public void initSign()
    throws KeyczarException
  {
    try
    {
      signature.initSign(RsaPrivateKey.access$100(this$0));
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
  
  public int maxOutputSize(int paramInt)
  {
    return RsaPrivateKey.access$000(this$0).keySizeInBytes();
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
  
  public int updateDecrypt(ByteBuffer paramByteBuffer1, ByteBuffer paramByteBuffer2)
    throws KeyczarException
  {
    try
    {
      int i = cipher.update(paramByteBuffer1, paramByteBuffer2);
      return i;
    }
    catch (ShortBufferException paramByteBuffer1)
    {
      throw new KeyczarException(paramByteBuffer1);
    }
  }
  
  public int updateEncrypt(ByteBuffer paramByteBuffer1, ByteBuffer paramByteBuffer2)
    throws KeyczarException
  {
    return encryptingStream.updateEncrypt(paramByteBuffer1, paramByteBuffer2);
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
 * Qualified Name:     org.keyczar.RsaPrivateKey.RsaPrivateStream
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */