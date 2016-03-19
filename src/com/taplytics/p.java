package com.taplytics;

import java.io.IOException;
import java.io.OutputStream;
import java.nio.charset.Charset;
import java.util.List;

class p
  extends j
{
  private final List<k> b;
  
  public p(String paramString1, Charset paramCharset, String paramString2, List<k> paramList)
  {
    super(paramString1, paramCharset, paramString2);
    b = paramList;
  }
  
  public List<k> a()
  {
    return b;
  }
  
  protected void a(k paramk, OutputStream paramOutputStream)
    throws IOException
  {
    l locall = paramk.c();
    a(locall.a("Content-Disposition"), a, paramOutputStream);
    if (paramk.b().d() != null) {
      a(locall.a("Content-Type"), a, paramOutputStream);
    }
  }
}

/* Location:
 * Qualified Name:     com.taplytics.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */