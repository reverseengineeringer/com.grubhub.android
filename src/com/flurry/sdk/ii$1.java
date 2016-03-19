package com.flurry.sdk;

import java.io.InputStream;
import java.io.OutputStream;

class ii$1
  implements ij.c
{
  ii$1(ii paramii) {}
  
  public void a(ij paramij)
  {
    ii.d(a);
  }
  
  public void a(ij paramij, InputStream paramInputStream)
    throws Exception
  {
    if (!paramij.e()) {}
    while (ii.c(a) == null) {
      return;
    }
    ii.a(a, ii.c(a).b(paramInputStream));
  }
  
  public void a(ij paramij, OutputStream paramOutputStream)
    throws Exception
  {
    if ((ii.a(a) != null) && (ii.b(a) != null)) {
      ii.b(a).a(paramOutputStream, ii.a(a));
    }
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.ii.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */