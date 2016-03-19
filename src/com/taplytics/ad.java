package com.taplytics;

import java.io.IOException;
import java.io.OutputStream;

public class ad
  extends ac
{
  private final byte[] a;
  private final String b;
  
  public ad(byte[] paramArrayOfByte, ai paramai, String paramString)
  {
    super(paramai);
    ao.a(paramArrayOfByte, "byte[]");
    a = paramArrayOfByte;
    b = paramString;
  }
  
  public ad(byte[] paramArrayOfByte, String paramString)
  {
    this(paramArrayOfByte, "application/octet-stream", paramString);
  }
  
  @Deprecated
  public ad(byte[] paramArrayOfByte, String paramString1, String paramString2)
  {
    this(paramArrayOfByte, ai.a(paramString1), paramString2);
  }
  
  public void a(OutputStream paramOutputStream)
    throws IOException
  {
    paramOutputStream.write(a);
  }
  
  public String c()
  {
    return null;
  }
  
  public String d()
  {
    return b;
  }
  
  public String e()
  {
    return "binary";
  }
  
  public long f()
  {
    return a.length;
  }
}

/* Location:
 * Qualified Name:     com.taplytics.ad
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */