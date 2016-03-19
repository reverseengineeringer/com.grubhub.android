package org.keyczar;

import java.nio.ByteBuffer;
import org.a.a.c;
import org.keyczar.enums.KeyPurpose;
import org.keyczar.exceptions.BadVersionException;
import org.keyczar.exceptions.InvalidSignatureException;
import org.keyczar.exceptions.KeyNotFoundException;
import org.keyczar.exceptions.KeyczarException;
import org.keyczar.exceptions.ShortCiphertextException;
import org.keyczar.i18n.Messages;
import org.keyczar.interfaces.DecryptingStream;
import org.keyczar.interfaces.KeyczarReader;
import org.keyczar.interfaces.Stream;
import org.keyczar.interfaces.VerifyingStream;
import org.keyczar.util.Base64Coder;

public class Crypter
  extends Encrypter
{
  private static final int DECRYPT_CHUNK_SIZE = 1024;
  private static final c LOG = c.a(Crypter.class);
  private final StreamCache<DecryptingStream> CRYPT_CACHE = new StreamCache();
  
  public Crypter(String paramString)
    throws KeyczarException
  {
    super(paramString);
  }
  
  public Crypter(KeyczarReader paramKeyczarReader)
    throws KeyczarException
  {
    super(paramKeyczarReader);
  }
  
  public String decrypt(String paramString)
    throws KeyczarException
  {
    return new String(decrypt(Base64Coder.decodeWebSafe(paramString)));
  }
  
  public void decrypt(ByteBuffer paramByteBuffer1, ByteBuffer paramByteBuffer2)
    throws KeyczarException
  {
    ByteBuffer localByteBuffer1 = paramByteBuffer1.asReadOnlyBuffer();
    LOG.a(Messages.getString("Crypter.Decrypting", new Object[] { Integer.valueOf(localByteBuffer1.remaining()) }));
    if (localByteBuffer1.remaining() < 5) {
      throw new ShortCiphertextException(localByteBuffer1.remaining());
    }
    byte b = localByteBuffer1.get();
    if (b != 0) {
      throw new BadVersionException(b);
    }
    Object localObject1 = new byte[4];
    localByteBuffer1.get((byte[])localObject1);
    KeyczarKey localKeyczarKey = getKey((byte[])localObject1);
    if (localKeyczarKey == null) {
      throw new KeyNotFoundException((byte[])localObject1);
    }
    localByteBuffer1.mark();
    Object localObject2 = (DecryptingStream)CRYPT_CACHE.get(localKeyczarKey);
    localObject1 = localObject2;
    if (localObject2 == null) {
      localObject1 = (DecryptingStream)localKeyczarKey.getStream();
    }
    localObject2 = ((DecryptingStream)localObject1).getVerifyingStream();
    if (localByteBuffer1.remaining() < ((VerifyingStream)localObject2).digestSize()) {
      throw new ShortCiphertextException(localByteBuffer1.remaining());
    }
    localByteBuffer1.position(localByteBuffer1.limit() - ((VerifyingStream)localObject2).digestSize());
    ByteBuffer localByteBuffer2 = localByteBuffer1.slice();
    localByteBuffer1.reset();
    localByteBuffer1.limit(localByteBuffer1.limit() - ((VerifyingStream)localObject2).digestSize());
    ((DecryptingStream)localObject1).initDecrypt(localByteBuffer1);
    paramByteBuffer1 = paramByteBuffer1.asReadOnlyBuffer();
    paramByteBuffer1.limit(localByteBuffer1.position());
    ((VerifyingStream)localObject2).initVerify();
    ((VerifyingStream)localObject2).updateVerify(paramByteBuffer1);
    paramByteBuffer2.mark();
    while (localByteBuffer1.remaining() > 1024)
    {
      paramByteBuffer1 = localByteBuffer1.slice();
      paramByteBuffer1.limit(1024);
      ((DecryptingStream)localObject1).updateDecrypt(paramByteBuffer1, paramByteBuffer2);
      paramByteBuffer1.rewind();
      ((VerifyingStream)localObject2).updateVerify(paramByteBuffer1);
      localByteBuffer1.position(localByteBuffer1.position() + 1024);
    }
    localByteBuffer1.mark();
    ((VerifyingStream)localObject2).updateVerify(localByteBuffer1);
    if (!((VerifyingStream)localObject2).verify(localByteBuffer2)) {
      throw new InvalidSignatureException();
    }
    localByteBuffer1.reset();
    ((DecryptingStream)localObject1).doFinalDecrypt(localByteBuffer1, paramByteBuffer2);
    paramByteBuffer2.limit(paramByteBuffer2.position());
    CRYPT_CACHE.put(localKeyczarKey, (Stream)localObject1);
  }
  
  public byte[] decrypt(byte[] paramArrayOfByte)
    throws KeyczarException
  {
    ByteBuffer localByteBuffer = ByteBuffer.allocate(paramArrayOfByte.length);
    decrypt(ByteBuffer.wrap(paramArrayOfByte), localByteBuffer);
    localByteBuffer.reset();
    paramArrayOfByte = new byte[localByteBuffer.remaining()];
    localByteBuffer.get(paramArrayOfByte);
    return paramArrayOfByte;
  }
  
  boolean isAcceptablePurpose(KeyPurpose paramKeyPurpose)
  {
    return paramKeyPurpose == KeyPurpose.DECRYPT_AND_ENCRYPT;
  }
}

/* Location:
 * Qualified Name:     org.keyczar.Crypter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */