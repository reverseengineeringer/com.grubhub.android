package org.keyczar;

import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import org.a.a.c;
import org.keyczar.enums.KeyPurpose;
import org.keyczar.exceptions.KeyczarException;
import org.keyczar.i18n.Messages;
import org.keyczar.interfaces.KeyczarReader;
import org.keyczar.interfaces.VerifyingStream;
import org.keyczar.util.Base64Coder;

public class UnversionedVerifier
  extends Keyczar
{
  private static final c LOG = c.a(UnversionedVerifier.class);
  private static final StreamCache<VerifyingStream> VERIFY_CACHE = new StreamCache();
  
  public UnversionedVerifier(String paramString)
    throws KeyczarException
  {
    super(paramString);
  }
  
  public UnversionedVerifier(KeyczarReader paramKeyczarReader)
    throws KeyczarException
  {
    super(paramKeyczarReader);
  }
  
  private boolean verify(ByteBuffer paramByteBuffer1, ByteBuffer paramByteBuffer2, KeyczarKey paramKeyczarKey)
    throws KeyczarException
  {
    VerifyingStream localVerifyingStream = (VerifyingStream)VERIFY_CACHE.get(paramKeyczarKey);
    if (localVerifyingStream == null) {
      localVerifyingStream = (VerifyingStream)paramKeyczarKey.getStream();
    }
    for (;;)
    {
      try
      {
        localVerifyingStream.initVerify();
        localVerifyingStream.updateVerify(paramByteBuffer1.duplicate());
        boolean bool = localVerifyingStream.verify(paramByteBuffer2.duplicate());
        VERIFY_CACHE.put(paramKeyczarKey, localVerifyingStream);
        return bool;
      }
      catch (KeyczarException paramByteBuffer1)
      {
        return false;
      }
    }
  }
  
  boolean isAcceptablePurpose(KeyPurpose paramKeyPurpose)
  {
    return (paramKeyPurpose == KeyPurpose.VERIFY) || (paramKeyPurpose == KeyPurpose.SIGN_AND_VERIFY);
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
    LOG.a(Messages.getString("UnversionedVerifier.Verifying", new Object[] { Integer.valueOf(paramByteBuffer1.remaining()) }));
    Iterator localIterator = versionMap.values().iterator();
    while (localIterator.hasNext()) {
      if (verify(paramByteBuffer1, paramByteBuffer2, (KeyczarKey)localIterator.next())) {
        return true;
      }
    }
    return false;
  }
  
  public boolean verify(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
    throws KeyczarException
  {
    return verify(ByteBuffer.wrap(paramArrayOfByte1), ByteBuffer.wrap(paramArrayOfByte2));
  }
}

/* Location:
 * Qualified Name:     org.keyczar.UnversionedVerifier
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */