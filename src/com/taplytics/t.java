package com.taplytics;

import java.io.IOException;
import java.io.OutputStream;
import java.nio.charset.Charset;
import java.util.Iterator;
import java.util.List;

class t
  extends j
{
  private final List<k> b;
  
  public t(String paramString1, Charset paramCharset, String paramString2, List<k> paramList)
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
    paramk = paramk.c().iterator();
    while (paramk.hasNext()) {
      a((x)paramk.next(), w.b, paramOutputStream);
    }
  }
}

/* Location:
 * Qualified Name:     com.taplytics.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */