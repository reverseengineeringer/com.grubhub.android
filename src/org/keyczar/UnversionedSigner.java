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

public class UnversionedSigner
  extends UnversionedVerifier
{
  private static final c LOG = c.a(UnversionedSigner.class);
  static final int TIMESTAMP_SIZE = 8;
  private final StreamQueue<SigningStream> SIGN_QUEUE = new StreamQueue();
  
  public UnversionedSigner(String paramString)
    throws KeyczarException
  {
    super(paramString);
  }
  
  public UnversionedSigner(KeyczarReader paramKeyczarReader)
    throws KeyczarException
  {
    super(paramKeyczarReader);
  }
  
  public int digestSize()
    throws KeyczarException
  {
    KeyczarKey localKeyczarKey = getPrimaryKey();
    if (localKeyczarKey == null) {
      throw new NoPrimaryKeyException();
    }
    return ((SigningStream)localKeyczarKey.getStream()).digestSize();
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
  
  void sign(ByteBuffer paramByteBuffer1, ByteBuffer paramByteBuffer2)
    throws KeyczarException
  {
    LOG.a(Messages.getString("Signer.Signing", new Object[] { Integer.valueOf(paramByteBuffer1.remaining()) }));
    KeyczarKey localKeyczarKey = getPrimaryKey();
    if (localKeyczarKey == null) {
      throw new NoPrimaryKeyException();
    }
    SigningStream localSigningStream2 = (SigningStream)SIGN_QUEUE.poll();
    SigningStream localSigningStream1 = localSigningStream2;
    if (localSigningStream2 == null) {
      localSigningStream1 = (SigningStream)localKeyczarKey.getStream();
    }
    int i = digestSize();
    if (paramByteBuffer2.capacity() < i) {
      throw new ShortBufferException(paramByteBuffer2.capacity(), i);
    }
    localSigningStream1.initSign();
    paramByteBuffer2.mark();
    localSigningStream1.updateSign(paramByteBuffer1);
    localSigningStream1.sign(paramByteBuffer2);
    paramByteBuffer2.limit(paramByteBuffer2.position());
    SIGN_QUEUE.add(localSigningStream1);
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
 * Qualified Name:     org.keyczar.UnversionedSigner
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */