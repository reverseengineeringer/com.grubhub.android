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

class e
  extends b
{
  String e = a.b(i);
  String f = a.c(i);
  String g = a.d(i);
  String h = a.e(i);
  
  e(a parama, String paramString, d paramd)
  {
    super(parama, paramString, paramd);
    parama = new Bundle();
    parama.putString("fields", "engagement.fields(count_string_with_like,count_string_without_like,social_sentence_with_like,social_sentence_without_like)");
    a(new GraphRequest(AccessToken.a(), paramString, parama, com.facebook.ab.GET));
  }
  
  protected void a(aa paramaa)
  {
    paramaa = al.b(paramaa.b(), "engagement");
    if (paramaa != null)
    {
      e = paramaa.optString("count_string_with_like", e);
      f = paramaa.optString("count_string_without_like", f);
      g = paramaa.optString("social_sentence_with_like", g);
      h = paramaa.optString("social_sentence_without_like", h);
    }
  }
  
  protected void a(j paramj)
  {
    com.facebook.internal.ab.a(ad.REQUESTS, a.f(), "Error fetching engagement for object '%s' with type '%s' : %s", new Object[] { a, b, paramj });
    a.a(i, "get_engagement", paramj);
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.internal.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */