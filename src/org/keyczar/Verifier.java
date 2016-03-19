package org.keyczar;

import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import org.a.a.c;
import org.keyczar.enums.KeyPurpose;
import org.keyczar.exceptions.BadVersionException;
import org.keyczar.exceptions.KeyNotFoundException;
import org.keyczar.exceptions.KeyczarException;
import org.keyczar.exceptions.ShortSignatureException;
import org.keyczar.i18n.Messages;
import org.keyczar.interfaces.KeyczarReader;
import org.keyczar.interfaces.Stream;
import org.keyczar.interfaces.VerifyingStream;
import org.keyczar.util.Base64Coder;
import org.keyczar.util.Util;

public class Verifier
  extends Keyczar
{
  private static final c LOG = c.a(Verifier.class);
  private final StreamCache<VerifyingStream> VERIFY_CACHE = new StreamCache();
  
  public Verifier(String paramString)
    throws KeyczarException
  {
    super(paramString);
  }
  
  public Verifier(KeyczarReader paramKeyczarReader)
    throws KeyczarException
  {
    super(paramKeyczarReader);
  }
  
  private byte[] checkFormatAndGetHash(ByteBuffer paramByteBuffer)
    throws BadVersionException
  {
    byte b = paramByteBuffer.get();
    if (b != 0) {
      throw new BadVersionException(b);
    }
    byte[] arrayOfByte = new byte[4];
    paramByteBuffer.get(arrayOfByte);
    return arrayOfByte;
  }
  
  private KeyczarKey getVerifyingKey(byte[] paramArrayOfByte)
    throws KeyNotFoundException
  {
    KeyczarKey localKeyczarKey = getKey(paramArrayOfByte);
    if (localKeyczarKey == null) {
      throw new KeyNotFoundException(paramArrayOfByte);
    }
    return localKeyczarKey;
  }
  
  public boolean attachedVerify(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
    throws KeyczarException
  {
    paramArrayOfByte1 = ByteBuffer.wrap(paramArrayOfByte1);
    KeyczarKey localKeyczarKey = getVerifyingKey(checkFormatAndGetHash(paramArrayOfByte1));
    byte[] arrayOfByte1 = new byte[paramArrayOfByte1.getInt()];
    paramArrayOfByte1.get(arrayOfByte1);
    byte[] arrayOfByte2 = new byte[paramArrayOfByte1.remaining()];
    paramArrayOfByte1.get(arrayOfByte2);
    paramArrayOfByte1 = Util.fromInt(0);
    if (paramArrayOfByte2.length > 0) {
      paramArrayOfByte1 = Util.lenPrefix(paramArrayOfByte2);
    }
    return rawVerify(localKeyczarKey, ByteBuffer.wrap(arrayOfByte1), ByteBuffer.wrap(paramArrayOfByte1), ByteBuffer.wrap(arrayOfByte2));
  }
  
  public byte[] getAttachedData(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
    throws KeyczarException
  {
    if (!attachedVerify(paramArrayOfByte1, paramArrayOfByte2)) {
      throw new KeyczarException("Attached signature failed to verify. Unable to return signed data.");
    }
    return getAttachedDataWithoutVerifying(paramArrayOfByte1);
  }
  
  public byte[] getAttachedDataWithoutVerifying(byte[] paramArrayOfByte)
    throws KeyczarException
  {
    paramArrayOfByte = ByteBuffer.wrap(paramArrayOfByte);
    getVerifyingKey(checkFormatAndGetHash(paramArrayOfByte));
    byte[] arrayOfByte = new byte[paramArrayOfByte.getInt()];
    paramArrayOfByte.get(arrayOfByte);
    return arrayOfByte;
  }
  
  boolean isAcceptablePurpose(KeyPurpose paramKeyPurpose)
  {
    return (paramKeyPurpose == KeyPurpose.VERIFY) || (paramKeyPurpose == KeyPurpose.SIGN_AND_VERIFY);
  }
  
  boolean rawVerify(KeyczarKey paramKeyczarKey, ByteBuffer paramByteBuffer1, ByteBuffer paramByteBuffer2, ByteBuffer paramByteBuffer3)
    throws KeyczarException
  {
    VerifyingStream localVerifyingStream2 = (VerifyingStream)VERIFY_CACHE.get(paramKeyczarKey);
    VerifyingStream localVerifyingStream1 = localVerifyingStream2;
    if (localVerifyingStream2 == null) {
      localVerifyingStream1 = (VerifyingStream)paramKeyczarKey.getStream();
    }
    localVerifyingStream1.initVerify();
    localVerifyingStream1.updateVerify(paramByteBuffer1);
    if (paramByteBuffer2 != null) {
      localVerifyingStream1.updateVerify(paramByteBuffer2);
    }
    localVerifyingStream1.updateVerify(ByteBuffer.wrap(FORMAT_BYTES));
    boolean bool = localVerifyingStream1.verify(paramByteBuffer3);
    VERIFY_CACHE.put(paramKeyczarKey, localVerifyingStream1);
    return bool;
  }
  
  public boolean verify(String paramString1, String paramString2)
    throws KeyczarException
  {
    try
    {
      boolean bool = verify(paramString1.getBytes("UTF-8"), Base64Coder.decodeWebSafe(paramString2));
      return bool;
    }
    catch (UnsupportedEncodingException paramString1)
    {
      throw new KeyczarException(paramString1);
    }
  }
  
  public boolean verify(ByteBuffer paramByteBuffer1, ByteBuffer paramByteBuffer2)
    throws KeyczarException
  {
    return verify(paramByteBuffer1, null, paramByteBuffer2);
  }
  
  boolean verify(ByteBuffer paramByteBuffer1, ByteBuffer paramByteBuffer2, ByteBuffer paramByteBuffer3)
    throws KeyczarException
  {
    LOG.a(Messages.getString("Verifier.Verifying", new Object[] { Integer.valueOf(paramByteBuffer1.remaining()) }));
    if (paramByteBuffer3.remaining() < 5) {
      throw new ShortSignatureException(paramByteBuffer3.remaining());
    }
    Object localObject = checkFormatAndGetHash(paramByteBuffer3);
    KeyczarKey localKeyczarKey = getVerifyingKey((byte[])localObject);
    if (localKeyczarKey == null) {
      throw new KeyNotFoundException((byte[])localObject);
    }
    VerifyingStream localVerifyingStream = (VerifyingStream)VERIFY_CACHE.get(localKeyczarKey);
    localObject = localVerifyingStream;
    if (localVerifyingStream == null) {
      localObject = (VerifyingStream)localKeyczarKey.getStream();
    }
    ((VerifyingStream)localObject).initVerify();
    if (paramByteBuffer2 != null) {
      ((VerifyingStream)localObject).updateVerify(paramByteBuffer2);
    }
    ((VerifyingStream)localObject).updateVerify(paramByteBuffer1);
    ((VerifyingStream)localObject).updateVerify(ByteBuffer.wrap(FORMAT_BYTES));
    boolean bool = ((VerifyingStream)localObject).verify(paramByteBuffer3);
    VERIFY_CACHE.put(localKeyczarKey, (Stream)localObject);
    return bool;
  }
  
  public boolean verify(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
    throws KeyczarException
  {
    return verify(ByteBuffer.wrap(paramArrayOfByte1), ByteBuffer.wrap(paramArrayOfByte2));
  }
}

/* Location:
 * Qualified Name:     org.keyczar.Verifier
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */