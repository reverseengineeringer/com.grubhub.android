package org.keyczar;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import org.keyczar.enums.CipherMode;
import org.keyczar.exceptions.KeyczarException;
import org.keyczar.interfaces.DecryptingStream;
import org.keyczar.interfaces.EncryptingStream;
import org.keyczar.interfaces.SigningStream;
import org.keyczar.interfaces.VerifyingStream;
import org.keyczar.util.Util;

class AesKey$AesStream
  implements DecryptingStream, EncryptingStream
{
  private final Cipher decryptingCipher;
  private final Cipher encryptingCipher;
  boolean ivRead = false;
  private final SigningStream signStream;
  
  public AesKey$AesStream(AesKey paramAesKey)
    throws KeyczarException
  {
    IvParameterSpec localIvParameterSpec = new IvParameterSpec(new byte[16]);
    try
    {
      encryptingCipher = Cipher.getInstance(AesKey.access$000(paramAesKey).getMode());
      encryptingCipher.init(1, AesKey.access$100(paramAesKey), localIvParameterSpec);
      decryptingCipher = Cipher.getInstance(AesKey.access$000(paramAesKey).getMode());
      decryptingCipher.init(2, AesKey.access$100(paramAesKey), localIvParameterSpec);
      signStream = ((SigningStream)AesKey.access$200(paramAesKey).getStream());
      return;
    }
    catch (GeneralSecurityException paramAesKey)
    {
      throw new KeyczarException(paramAesKey);
    }
  }
  
  public int doFinalDecrypt(ByteBuffer paramByteBuffer1, ByteBuffer paramByteBuffer2)
    throws KeyczarException
  {
    if (ivRead)
    {
      if (paramByteBuffer1.remaining() == 0) {
        return 0;
      }
      byte[] arrayOfByte = new byte[16];
      paramByteBuffer1.get(arrayOfByte);
      decryptingCipher.update(arrayOfByte);
      ivRead = false;
    }
    try
    {
      if (paramByteBuffer1.remaining() == 0)
      {
        paramByteBuffer1 = decryptingCipher.doFinal();
        paramByteBuffer2.put(paramByteBuffer1);
        return paramByteBuffer1.length;
      }
      int i = decryptingCipher.doFinal(paramByteBuffer1, paramByteBuffer2);
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
    try
    {
      int i = encryptingCipher.doFinal(paramByteBuffer1, paramByteBuffer2);
      return i;
    }
    catch (GeneralSecurityException paramByteBuffer1)
    {
      throw new KeyczarException(paramByteBuffer1);
    }
  }
  
  public SigningStream getSigningStream()
  {
    return signStream;
  }
  
  public VerifyingStream getVerifyingStream()
  {
    return (VerifyingStream)signStream;
  }
  
  public void initDecrypt(ByteBuffer paramByteBuffer)
  {
    byte[] arrayOfByte = new byte[16];
    paramByteBuffer.get(arrayOfByte);
    decryptingCipher.update(arrayOfByte);
    ivRead = true;
  }
  
  public int initEncrypt(ByteBuffer paramByteBuffer)
    throws KeyczarException
  {
    byte[] arrayOfByte = new byte[16];
    Util.rand(arrayOfByte);
    try
    {
      int i = encryptingCipher.update(ByteBuffer.wrap(arrayOfByte), paramByteBuffer);
      return i;
    }
    catch (javax.crypto.ShortBufferException paramByteBuffer)
    {
      throw new org.keyczar.exceptions.ShortBufferException(paramByteBuffer);
    }
  }
  
  public int maxOutputSize(int paramInt)
  {
    return AesKey.access$000(this$0).getOutputSize(16, paramInt);
  }
  
  public int updateDecrypt(ByteBuffer paramByteBuffer1, ByteBuffer paramByteBuffer2)
    throws KeyczarException
  {
    if ((ivRead) && (paramByteBuffer1.remaining() >= 16))
    {
      byte[] arrayOfByte = new byte[16];
      paramByteBuffer1.get(arrayOfByte);
      decryptingCipher.update(arrayOfByte);
      ivRead = false;
    }
    try
    {
      int i = decryptingCipher.update(paramByteBuffer1, paramByteBuffer2);
      return i;
    }
    catch (javax.crypto.ShortBufferException paramByteBuffer1)
    {
      throw new org.keyczar.exceptions.ShortBufferException(paramByteBuffer1);
    }
  }
  
  public int updateEncrypt(ByteBuffer paramByteBuffer1, ByteBuffer paramByteBuffer2)
    throws KeyczarException
  {
    try
    {
      int i = encryptingCipher.update(paramByteBuffer1, paramByteBuffer2);
      return i;
    }
    catch (javax.crypto.ShortBufferException paramByteBuffer1)
    {
      throw new org.keyczar.exceptions.ShortBufferException(paramByteBuffer1);
    }
  }
}

/* Location:
 * Qualified Name:     org.keyczar.AesKey.AesStream
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */