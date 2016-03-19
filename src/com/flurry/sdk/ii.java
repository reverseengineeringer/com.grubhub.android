package com.flurry.sdk;

import java.io.InputStream;
import java.io.OutputStream;

public class ii<RequestObjectType, ResponseObjectType>
  extends ij
{
  private ii.a<RequestObjectType, ResponseObjectType> a;
  private RequestObjectType b;
  private ResponseObjectType c;
  private iv<RequestObjectType> d;
  private iv<ResponseObjectType> e;
  
  private void n()
  {
    a(new ij.c()
    {
      public void a(ij paramAnonymousij)
      {
        ii.d(ii.this);
      }
      
      public void a(ij paramAnonymousij, InputStream paramAnonymousInputStream)
        throws Exception
      {
        if (!paramAnonymousij.e()) {}
        while (ii.c(ii.this) == null) {
          return;
        }
        ii.a(ii.this, ii.c(ii.this).b(paramAnonymousInputStream));
      }
      
      public void a(ij paramAnonymousij, OutputStream paramAnonymousOutputStream)
        throws Exception
      {
        if ((ii.a(ii.this) != null) && (ii.b(ii.this) != null)) {
          ii.b(ii.this).a(paramAnonymousOutputStream, ii.a(ii.this));
        }
      }
    });
  }
  
  private void o()
  {
    if (a == null) {}
    while (c()) {
      return;
    }
    a.a(this, c);
  }
  
  public void a()
  {
    n();
    super.a();
  }
  
  public void a(ii.a<RequestObjectType, ResponseObjectType> parama)
  {
    a = parama;
  }
  
  public void a(iv<RequestObjectType> paramiv)
  {
    d = paramiv;
  }
  
  public void a(RequestObjectType paramRequestObjectType)
  {
    b = paramRequestObjectType;
  }
  
  public void b(iv<ResponseObjectType> paramiv)
  {
    e = paramiv;
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.ii
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */