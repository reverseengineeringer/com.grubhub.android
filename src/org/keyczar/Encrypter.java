package org.keyczar;

import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import org.a.a.c;
import org.keyczar.enums.KeyPurpose;
import org.keyczar.exceptions.KeyczarException;
import org.keyczar.exceptions.NoPrimaryKeyException;
import org.keyczar.i18n.Messages;
import org.keyczar.interfaces.EncryptingStream;
import org.keyczar.interfaces.KeyczarReader;
import org.keyczar.interfaces.SigningStream;
import org.keyczar.util.Base64Coder;

public class Encrypter
  extends Keyczar
{
  private static final int ENCRYPT_CHUNK_SIZE = 1024;
  private static final c LOG = c.a(Encrypter.class);
  private final StreamQueue<EncryptingStream> ENCRYPT_QUEUE = new StreamQueue();
  
  public Encrypter(String paramString)
    throws KeyczarException
  {
    super(paramString);
  }
  
  public Encrypter(KeyczarReader paramKeyczarReader)
    throws KeyczarException
  {
    super(paramKeyczarReader);
  }
  
  public int ciphertextSize(int paramInt)
    throws KeyczarException
  {
    Object localObject2 = (EncryptingStream)ENCRYPT_QUEUE.poll();
    Object localObject1 = localObject2;
    if (localObject2 == null)
    {
      localObject1 = getPrimaryKey();
      if (localObject1 == null) {
        throw new NoPrimaryKeyException();
      }
      localObject1 = (EncryptingStream)((KeyczarKey)localObject1).getStream();
    }
    localObject2 = ((EncryptingStream)localObject1).getSigningStream();
    paramInt = ((EncryptingStream)localObject1).maxOutputSize(paramInt);
    int i = ((SigningStream)localObject2).digestSize();
    ENCRYPT_QUEUE.add(localObject1);
    return i + (paramInt + 5);
  }
  
  public String encrypt(String paramString)
    throws KeyczarException
  {
    try
    {
      paramString = Base64Coder.encodeWebSafe(encrypt(paramString.getBytes("UTF-8")));
      return paramString;
    }
    catch (UnsupportedEncodingException paramString)
    {
      throw new KeyczarException(paramString);
    }
  }
  
  public void encrypt(ByteBuffer paramByteBuffer1, ByteBuffer paramByteBuffer2)
    throws KeyczarException
  {
    LOG.a(Messages.getString("Encrypter.Encrypting", new Object[] { Integer.valueOf(paramByteBuffer1.remaining()) }));
    Object localObject3 = getPrimaryKey();
    if (localObject3 == null) {
      throw new NoPrimaryKeyException();
    }
    Object localObject2 = (EncryptingStream)ENCRYPT_QUEUE.poll();
    Object localObject1 = localObject2;
    if (localObject2 == null) {
      localObject1 = (EncryptingStream)((KeyczarKey)localObject3).getStream();
    }
    localObject2 = ((EncryptingStream)localObject1).getSigningStream();
    ((SigningStream)localObject2).initSign();
    paramByteBuffer2.mark();
    ByteBuffer localByteBuffer = paramByteBuffer2.asReadOnlyBuffer();
    ((KeyczarKey)localObject3).copyHeader(paramByteBuffer2);
    ((EncryptingStream)localObject1).initEncrypt(paramByteBuffer2);
    paramByteBuffer1 = paramByteBuffer1.asReadOnlyBuffer();
    while (paramByteBuffer1.remaining() > 1024)
    {
      localObject3 = paramByteBuffer1.slice();
      ((ByteBuffer)localObject3).limit(1024);
      ((EncryptingStream)localObject1).updateEncrypt((ByteBuffer)localObject3, paramByteBuffer2);
      paramByteBuffer1.position(paramByteBuffer1.position() + 1024);
      localByteBuffer.limit(paramByteBuffer2.position());
      ((SigningStream)localObject2).updateSign(localByteBuffer);
      localByteBuffer.position(paramByteBuffer2.position());
    }
    ((EncryptingStream)localObject1).doFinalEncrypt(paramByteBuffer1, paramByteBuffer2);
    paramByteBuffer2.limit(paramByteBuffer2.position() + ((SigningStream)localObject2).digestSize());
    localByteBuffer.limit(paramByteBuffer2.position());
    ((SigningStream)localObject2).updateSign(localByteBuffer);
    ((SigningStream)localObject2).sign(paramByteBuffer2);
    ENCRYPT_QUEUE.add(localObject1);
  }
  
  public byte[] encrypt(byte[] paramArrayOfByte)
    throws KeyczarException
  {
    ByteBuffer localByteBuffer = ByteBuffer.allocate(ciphertextSize(paramArrayOfByte.length));
    encrypt(ByteBuffer.wrap(paramArrayOfByte), localByteBuffer);
    localByteBuffer.reset();
    paramArrayOfByte = new byte[localByteBuffer.remaining()];
    localByteBuffer.get(paramArrayOfByte);
    return paramArrayOfByte;
  }
  
  boolean isAcceptablePurpose(KeyPurpose paramKeyPurpose)
  {
    return (paramKeyPurpose == KeyPurpose.ENCRYPT) || (paramKeyPurpose == KeyPurpose.DECRYPT_AND_ENCRYPT);
  }
}

/* Location:
 * Qualified Name:     org.keyczar.Encrypter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */