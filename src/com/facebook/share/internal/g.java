package com.facebook.share.internal;

import android.os.Bundle;
import com.facebook.AccessToken;
import com.facebook.GraphRequest;
import com.facebook.aa;
import com.facebook.ad;
import com.facebook.internal.al;
import com.facebook.share.widget.d;
import org.json.JSONArray;
import org.json.JSONObject;

class g
  extends b
  implements j
{
  private boolean f = a.k(e);
  private String g;
  private final String h;
  private final d i;
  
  g(a parama, String paramString, d paramd)
  {
    super(parama, paramString, paramd);
    h = paramString;
    i = paramd;
    parama = new Bundle();
    parama.putString("fields", "id,application");
    parama.putString("object", h);
    a(new GraphRequest(AccessToken.a(), "me/og.likes", parama, com.facebook.ab.GET));
  }
  
  protected void a(aa paramaa)
  {
    paramaa = al.c(paramaa.b(), "data");
    if (paramaa != null)
    {
      int j = 0;
      while (j < paramaa.length())
      {
        JSONObject localJSONObject1 = paramaa.optJSONObject(j);
        if (localJSONObject1 != null)
        {
          f = true;
          JSONObject localJSONObject2 = localJSONObject1.optJSONObject("application");
          AccessToken localAccessToken = AccessToken.a();
          if ((localJSONObject2 != null) && (localAccessToken != null) && (al.a(localAccessToken.h(), localJSONObject2.optString("id")))) {
            g = localJSONObject1.optString("id");
          }
        }
        j += 1;
      }
    }
  }
  
  protected void a(com.facebook.j paramj)
  {
    com.facebook.internal.ab.a(ad.REQUESTS, a.f(), "Error fetching like status for object '%s' with type '%s' : %s", new Object[] { h, i, paramj });
    a.a(e, "get_og_object_like", paramj);
  }
  
  public boolean b()
  {
    return f;
  }
  
  public String c()
  {
    return g;
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.internal.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */