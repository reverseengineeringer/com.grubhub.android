package com.flurry.sdk;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class iw
  implements iv<String>
{
  public String a(InputStream paramInputStream)
    throws IOException
  {
    if (paramInputStream == null) {
      return null;
    }
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    jn.a(paramInputStream, localByteArrayOutputStream);
    return localByteArrayOutputStream.toString();
  }
  
  public void a(OutputStream paramOutputStream, String paramString)
    throws IOException
  {
    if ((paramOutputStream == null) || (paramString == null)) {
      return;
    }
    paramString = paramString.getBytes("utf-8");
    paramOutputStream.write(paramString, 0, paramString.length);
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.iw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */