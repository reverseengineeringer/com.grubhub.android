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
import org.keyczar.interfaces.EncryptingStream;
import org.keyczar.interfaces.SigningStream;
import org.keyczar.interfaces.VerifyingStream;

class RsaPublicKey$RsaStream
  implements EncryptingStream, VerifyingStream
{
  private Cipher cipher;
  private Signature signature;
  
  RsaPublicKey$RsaStream(RsaPublicKey paramRsaPublicKey)
    throws KeyczarException
  {
    try
    {
      signature = Signature.getInstance("SHA1withRSA");
      cipher = Cipher.getInstance(paramRsaPublicKey.getPadding().getCryptAlgorithm());
      return;
    }
    catch (GeneralSecurityException paramRsaPublicKey)
    {
      throw new KeyczarException(paramRsaPublicKey);
    }
  }
  
  public int digestSize()
  {
    return this$0.keySizeInBytes();
  }
  
  public int doFinalEncrypt(ByteBuffer paramByteBuffer1, ByteBuffer paramByteBuffer2)
    throws KeyczarException
  {
    int i;
    int j;
    try
    {
      i = cipher.getOutputSize(paramByteBuffer1.limit());
      j = paramByteBuffer2.limit() - paramByteBuffer2.position();
      ByteBuffer localByteBuffer = ByteBuffer.allocate(i);
      cipher.doFinal(paramByteBuffer1, localByteBuffer);
      if (i == j)
      {
        paramByteBuffer2.put(localByteBuffer.array());
        return j;
      }
      if ((i == j + 1) && (localByteBuffer.array()[(i - 1)] == 0))
      {
        paramByteBuffer2.put(localByteBuffer.array(), 0, j);
        return j;
      }
    }
    catch (GeneralSecurityException paramByteBuffer1)
    {
      throw new KeyczarException(paramByteBuffer1);
    }
    throw new KeyczarException("Expected " + j + " bytes from encryption " + "operation but got " + i);
  }
  
  public SigningStream getSigningStream()
  {
    new SigningStream()
    {
      public int digestSize()
      {
        return 0;
      }
      
      public void initSign() {}
      
      public void sign(ByteBuffer paramAnonymousByteBuffer) {}
      
      public void updateSign(ByteBuffer paramAnonymousByteBuffer) {}
    };
  }
  
  public int initEncrypt(ByteBuffer paramByteBuffer)
    throws KeyczarException
  {
    try
    {
      cipher.init(1, RsaPublicKey.access$000(this$0));
      return 0;
    }
    catch (InvalidKeyException paramByteBuffer)
    {
      throw new KeyczarException(paramByteBuffer);
    }
  }
  
  public void initVerify()
    throws KeyczarException
  {
    try
    {
      signature.initVerify(RsaPublicKey.access$000(this$0));
      return;
    }
    catch (GeneralSecurityException localGeneralSecurityException)
    {
      throw new KeyczarException(localGeneralSecurityException);
    }
  }
  
  public int maxOutputSize(int paramInt)
  {
    return this$0.keySizeInBytes();
  }
  
  public int updateEncrypt(ByteBuffer paramByteBuffer1, ByteBuffer paramByteBuffer2)
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
 * Qualified Name:     org.keyczar.RsaPublicKey.RsaStream
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */