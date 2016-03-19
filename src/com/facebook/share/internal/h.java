package com.facebook.share.internal;

import android.os.Bundle;
import com.facebook.AccessToken;
import com.facebook.GraphRequest;
import com.facebook.aa;
import com.facebook.ad;
import com.facebook.internal.al;
import com.facebook.j;
import com.facebook.share.widget.d;
import org.json.JSONObject;

class h
  extends b
{
  String e;
  boolean f;
  
  h(a parama, String paramString, d paramd)
  {
    super(parama, paramString, paramd);
    parama = new Bundle();
    parama.putString("fields", "id");
    parama.putString("ids", paramString);
    a(new GraphRequest(AccessToken.a(), "", parama, com.facebook.ab.GET));
  }
  
  protected void a(aa paramaa)
  {
    paramaa = al.b(paramaa.b(), a);
    if (paramaa != null)
    {
      e = paramaa.optString("id");
      if (al.a(e)) {
        break label44;
      }
    }
    label44:
    for (boolean bool = true;; bool = false)
    {
      f = bool;
      return;
    }
  }
  
  protected void a(j paramj)
  {
    com.facebook.internal.ab.a(ad.REQUESTS, a.f(), "Error getting the FB id for object '%s' with type '%s' : %s", new Object[] { a, b, paramj });
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.internal.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */