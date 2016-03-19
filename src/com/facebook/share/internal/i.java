package com.facebook.share.internal;

import android.os.Bundle;
import com.facebook.AccessToken;
import com.facebook.GraphRequest;
import com.facebook.aa;
import com.facebook.ad;
import com.facebook.internal.al;
import com.facebook.share.widget.d;
import org.json.JSONArray;

class i
  extends b
  implements j
{
  private boolean f = a.k(e);
  private String g;
  
  i(a parama, String paramString)
  {
    super(parama, paramString, d.PAGE);
    g = paramString;
    parama = new Bundle();
    parama.putString("fields", "id");
    a(new GraphRequest(AccessToken.a(), "me/likes/" + paramString, parama, com.facebook.ab.GET));
  }
  
  protected void a(aa paramaa)
  {
    paramaa = al.c(paramaa.b(), "data");
    if ((paramaa != null) && (paramaa.length() > 0)) {
      f = true;
    }
  }
  
  protected void a(com.facebook.j paramj)
  {
    com.facebook.internal.ab.a(ad.REQUESTS, a.f(), "Error fetching like status for page id '%s': %s", new Object[] { g, paramj });
    a.a(e, "get_page_like", paramj);
  }
  
  public boolean b()
  {
    return f;
  }
  
  public String c()
  {
    return null;
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.internal.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */