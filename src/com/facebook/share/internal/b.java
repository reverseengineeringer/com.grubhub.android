package com.facebook.share.internal;

import com.facebook.GraphRequest;
import com.facebook.aa;
import com.facebook.ad;
import com.facebook.internal.ab;
import com.facebook.j;
import com.facebook.r;
import com.facebook.share.widget.d;
import com.facebook.x;

abstract class b
  implements o
{
  protected String a;
  protected d b;
  protected j c;
  private GraphRequest e;
  
  protected b(a parama, String paramString, d paramd)
  {
    a = paramString;
    b = paramd;
  }
  
  public j a()
  {
    return c;
  }
  
  protected void a(GraphRequest paramGraphRequest)
  {
    e = paramGraphRequest;
    paramGraphRequest.a("v2.5");
    paramGraphRequest.a(new r()
    {
      public void a(aa paramAnonymousaa)
      {
        c = paramAnonymousaa.a();
        if (c != null)
        {
          a(c);
          return;
        }
        b.this.a(paramAnonymousaa);
      }
    });
  }
  
  protected abstract void a(aa paramaa);
  
  protected void a(j paramj)
  {
    ab.a(ad.REQUESTS, a.f(), "Error running request for object '%s' with type '%s' : %s", new Object[] { a, b, paramj });
  }
  
  public void a(x paramx)
  {
    paramx.a(e);
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.internal.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */