package com.taplytics;

import com.android.volley.Response.Listener;
import java.util.Date;
import org.json.JSONObject;

class ie
  implements Response.Listener<JSONObject>
{
  ie(id paramid, Date paramDate, ij paramij) {}
  
  public void a(JSONObject paramJSONObject)
  {
    if (ck.c()) {
      ck.a("Got Properties Response!", a);
    }
    try
    {
      eo localeo = new eo(paramJSONObject);
      if (b != null) {
        b.a(localeo);
      }
      cs.a().a(paramJSONObject);
      return;
    }
    catch (Exception paramJSONObject)
    {
      do
      {
        ck.b("Parsing TLProperties", paramJSONObject);
      } while (b == null);
      b.a(paramJSONObject);
    }
  }
}

/* Location:
 * Qualified Name:     com.taplytics.ie
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */