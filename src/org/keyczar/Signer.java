package org.keyczar;

import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import org.a.a.c;
import org.keyczar.enums.KeyPurpose;
import org.keyczar.exceptions.KeyczarException;
import org.keyczar.exceptions.NoPrimaryKeyException;
import org.keyczar.exceptions.ShortBufferException;
import org.keyczar.i18n.Messages;
import org.keyczar.interfaces.KeyczarReader;
import org.keyczar.interfaces.SigningStream;
import org.keyczar.util.Base64Coder;
import org.keyczar.util.Util;

public class Signer
  extends Verifier
{
  private static final c LOG = c.a(Signer.class);
  static final int TIMESTAMP_SIZE = 8;
  private final StreamQueue<SigningStream> SIGN_QUEUE = new StreamQueue();
  
  public Signer(String paramString)
    throws KeyczarException
  {
    super(paramString);
  }
  
  public Signer(KeyczarReader paramKeyczarReader)
    throws KeyczarException
  {
    super(paramKeyczarReader);
  }
  
  public byte[] attachedSign(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
    throws KeyczarException
  {
    KeyczarKey localKeyczarKey = getPrimaryKey();
    if (localKeyczarKey == null) {
      throw new NoPrimaryKeyException();
    }
    Object localObject2 = (SigningStream)SIGN_QUEUE.poll();
    Object localObject1 = localObject2;
    if (localObject2 == null) {
      localObject1 = (SigningStream)localKeyczarKey.getStream();
    }
    ((SigningStream)localObject1).initSign();
    localObject2 = Util.fromInt(0);
    if (paramArrayOfByte2.length > 0) {
      localObject2 = Util.lenPrefix(paramArrayOfByte2);
    }
    ((SigningStream)localObject1).updateSign(ByteBuffer.wrap(paramArrayOfByte1));
    ((SigningStream)localObject1).updateSign(ByteBuffer.wrap((byte[])localObject2));
    ((SigningStream)localObject1).updateSign(ByteBuffer.wrap(FORMAT_BYTES));
    paramArrayOfByte2 = ByteBuffer.allocate(((SigningStream)localObject1).digestSize());
    paramArrayOfByte2.mark();
    ((SigningStream)localObject1).sign(paramArrayOfByte2);
    paramArrayOfByte2.limit(paramArrayOfByte2.position());
    paramArrayOfByte1 = Util.cat(new byte[][] { FORMAT_BYTES, localKeyczarKey.hash(), Util.lenPrefix(paramArrayOfByte1), paramArrayOfByte2.array() });
    SIGN_QUEUE.add(localObject1);
    return paramArrayOfByte1;
  }
  
  public int digestSize()
    throws KeyczarException
  {
    KeyczarKey localKeyczarKey = getPrimaryKey();
    if (localKeyczarKey == null) {
      throw new NoPrimaryKeyException();
    }
    return ((SigningStream)localKeyczarKey.getStream()).digestSize() + 5;
  }
  
  boolean isAcceptablePurpose(KeyPurpose paramKeyPurpose)
  {
    return paramKeyPurpose == KeyPurpose.SIGN_AND_VERIFY;
  }
  
  public String sign(String paramString)
    throws KeyczarException
  {
    try
    {
      paramString = Base64Coder.encodeWebSafe(sign(paramString.getBytes("UTF-8")));
      return paramString;
    }
    catch (UnsupportedEncodingException paramString)
    {
      throw new KeyczarException(paramString);
    }
  }
  
  public void sign(ByteBuffer paramByteBuffer1, ByteBuffer paramByteBuffer2)
    throws KeyczarException
  {
    sign(paramByteBuffer1, null, 0L, paramByteBuffer2);
  }
  
  void sign(ByteBuffer paramByteBuffer1, ByteBuffer paramByteBuffer2, long paramLong, ByteBuffer paramByteBuffer3)
    throws KeyczarException
  {
    if (LOG.a()) {
      LOG.a(Messages.getString("Signer.Signing", new Object[] { Integer.valueOf(paramByteBuffer1.remaining()) }));
    }
    KeyczarKey localKeyczarKey = getPrimaryKey();
    if (localKeyczarKey == null) {
      throw new NoPrimaryKeyException();
    }
    Object localObject2 = (SigningStream)SIGN_QUEUE.poll();
    Object localObject1 = localObject2;
    if (localObject2 == null) {
      localObject1 = (SigningStream)localKeyczarKey.getStream();
    }
    int j = digestSize();
    int i = j;
    if (paramLong > 0L) {
      i = j + 8;
    }
    if (paramByteBuffer3.capacity() < i) {
      throw new ShortBufferException(paramByteBuffer3.capacity(), i);
    }
    localObject2 = ByteBuffer.allocate(5);
    localKeyczarKey.copyHeader((ByteBuffer)localObject2);
    ((ByteBuffer)localObject2).rewind();
    ((SigningStream)localObject1).initSign();
    paramByteBuffer3.mark();
    paramByteBuffer3.put((ByteBuffer)localObject2);
    if (paramLong > 0L)
    {
      localObject2 = ByteBuffer.wrap(Util.fromLong(paramLong));
      paramByteBuffer3.put((ByteBuffer)localObject2);
      ((ByteBuffer)localObject2).rewind();
      ((SigningStream)localObject1).updateSign((ByteBuffer)localObject2);
    }
    if ((paramByteBuffer2 != null) && (paramByteBuffer2.remaining() > 0)) {
      ((SigningStream)localObject1).updateSign(paramByteBuffer2);
    }
    ((SigningStream)localObject1).updateSign(paramByteBuffer1);
    ((SigningStream)localObject1).updateSign(ByteBuffer.wrap(FORMAT_BYTES));
    ((SigningStream)localObject1).sign(paramByteBuffer3);
    paramByteBuffer3.limit(paramByteBuffer3.position());
    SIGN_QUEUE.add(localObject1);
  }
  
  public byte[] sign(byte[] paramArrayOfByte)
    throws KeyczarException
  {
    ByteBuffer localByteBuffer = ByteBuffer.allocate(digestSize());
    sign(ByteBuffer.wrap(paramArrayOfByte), localByteBuffer);
    localByteBuffer.reset();
    paramArrayOfByte = new byte[localByteBuffer.remaining()];
    localByteBuffer.get(paramArrayOfByte);
    return paramArrayOfByte;
  }
}

/* Location:
 * Qualified Name:     org.keyczar.Signer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */