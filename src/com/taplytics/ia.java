package com.taplytics;

import android.os.AsyncTask;
import com.android.volley.RequestQueue;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

class ia
  extends AsyncTask<ik, Void, Void>
{
  private ia(hn paramhn) {}
  
  protected final Void a(ik[] paramArrayOfik)
  {
    paramArrayOfik = paramArrayOfik[0];
    try
    {
      String str = (hn.b(a) + hn.d(a) + "/api/v1/images").replaceAll(" ", "%20");
      JSONObject localJSONObject = new JSONObject();
      try
      {
        localJSONObject.put("projectToken", fy.e().f());
        localJSONObject.put("isAppIcon", true);
        localJSONObject.put("isAndroid", true);
        Date localDate = new Date();
        HashMap localHashMap = new HashMap();
        byte[] arrayOfByte = kc.c();
        if ((arrayOfByte != null) && (arrayOfByte.length > 0))
        {
          localHashMap.put("icon", arrayOfByte);
          paramArrayOfik = new hl(1, str, localJSONObject, localHashMap, new ib(this, localDate, paramArrayOfik), new ic(this, str, paramArrayOfik));
          paramArrayOfik.setTag("post_appIcon");
          hn.a(a).add(paramArrayOfik);
          return null;
        }
      }
      catch (JSONException localJSONException)
      {
        for (;;)
        {
          ck.b("postChosenActivity", localJSONException);
        }
        ck.c("app icon null");
        return null;
      }
      return null;
    }
    catch (Exception paramArrayOfik) {}
  }
}

/* Location:
 * Qualified Name:     com.taplytics.ia
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */