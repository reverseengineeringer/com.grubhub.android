package com.taplytics;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class an
  extends ac
{
  private final byte[] a;
  
  public an(String paramString, ai paramai)
  {
    super(paramai);
    ao.a(paramString, "Text");
    paramai = paramai.b();
    if (paramai != null) {}
    for (;;)
    {
      a = paramString.getBytes(paramai);
      return;
      paramai = ae.b;
    }
  }
  
  public void a(OutputStream paramOutputStream)
    throws IOException
  {
    ao.a(paramOutputStream, "Output stream");
    ByteArrayInputStream localByteArrayInputStream = new ByteArrayInputStream(a);
    byte[] arrayOfByte = new byte['က'];
    for (;;)
    {
      int i = localByteArrayInputStream.read(arrayOfByte);
      if (i == -1) {
        break;
      }
      paramOutputStream.write(arrayOfByte, 0, i);
    }
    paramOutputStream.flush();
  }
  
  public String d()
  {
    return null;
  }
  
  public String e()
  {
    return "8bit";
  }
  
  public long f()
  {
    return a.length;
  }
}

/* Location:
 * Qualified Name:     com.taplytics.an
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */