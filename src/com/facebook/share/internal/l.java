package com.facebook.share.internal;

import android.os.Bundle;
import com.facebook.AccessToken;
import com.facebook.GraphRequest;
import com.facebook.aa;
import com.facebook.ad;
import com.facebook.internal.al;
import com.facebook.j;
import com.facebook.share.widget.d;

class l
  extends b
{
  String e;
  
  l(a parama, String paramString, d paramd)
  {
    super(parama, paramString, paramd);
    parama = new Bundle();
    parama.putString("object", paramString);
    a(new GraphRequest(AccessToken.a(), "me/og.likes", parama, com.facebook.ab.POST));
  }
  
  protected void a(aa paramaa)
  {
    e = al.a(paramaa.b(), "id");
  }
  
  protected void a(j paramj)
  {
    if (paramj.b() == 3501)
    {
      c = null;
      return;
    }
    com.facebook.internal.ab.a(ad.REQUESTS, a.f(), "Error liking object '%s' with type '%s' : %s", new Object[] { a, b, paramj });
    a.a(f, "publish_like", paramj);
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.internal.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */