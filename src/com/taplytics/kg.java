package com.taplytics;

import android.os.AsyncTask;
import java.util.Iterator;
import org.json.JSONObject;

public class kg
  extends AsyncTask<JSONObject, Void, Void>
{
  protected final Void a(JSONObject[] paramArrayOfJSONObject)
  {
    paramArrayOfJSONObject = paramArrayOfJSONObject[0];
    try
    {
      Iterator localIterator = paramArrayOfJSONObject.keys();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        kc.a(paramArrayOfJSONObject.optJSONObject(str).optString("path"), paramArrayOfJSONObject.optJSONObject(str).optString("filename"));
        continue;
        return null;
      }
    }
    catch (Exception paramArrayOfJSONObject)
    {
      ck.b("error saving image to disk in task", paramArrayOfJSONObject);
    }
    for (;;)
    {
      if ((fy.e().q() != null) && (fy.e().g()) && (gq.h().i() != null)) {
        jk.c(gq.h().i());
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.taplytics.kg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */