package com.facebook.share.internal;

import com.facebook.AccessToken;
import com.facebook.GraphRequest;
import com.facebook.aa;
import com.facebook.ad;
import com.facebook.j;

class m
  extends b
{
  private String f;
  
  m(a parama, String paramString)
  {
    super(parama, null, null);
    f = paramString;
    a(new GraphRequest(AccessToken.a(), paramString, null, com.facebook.ab.DELETE));
  }
  
  protected void a(aa paramaa) {}
  
  protected void a(j paramj)
  {
    com.facebook.internal.ab.a(ad.REQUESTS, a.f(), "Error unliking object with unlike token '%s' : %s", new Object[] { f, paramj });
    a.a(e, "publish_unlike", paramj);
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.internal.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */