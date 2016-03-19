package com.flurry.sdk;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class ir
  implements iv<byte[]>
{
  public void a(OutputStream paramOutputStream, byte[] paramArrayOfByte)
    throws IOException
  {
    if ((paramOutputStream == null) || (paramArrayOfByte == null)) {
      return;
    }
    paramOutputStream.write(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public byte[] a(InputStream paramInputStream)
    throws IOException
  {
    if (paramInputStream == null) {
      return null;
    }
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    jn.a(paramInputStream, localByteArrayOutputStream);
    return localByteArrayOutputStream.toByteArray();
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.ir
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */