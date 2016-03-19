package com.flurry.sdk;

import android.text.TextUtils;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class go
  implements iv<gc>
{
  private static final String a = go.class.getSimpleName();
  
  private gj a(String paramString)
  {
    gj localgj = gj.a;
    try
    {
      if (!TextUtils.isEmpty(paramString))
      {
        paramString = (gj)Enum.valueOf(gj.class, paramString);
        return paramString;
      }
    }
    catch (Exception paramString)
    {
      return localgj;
    }
    return localgj;
  }
  
  private gi b(String paramString)
  {
    gi localgi = gi.f;
    try
    {
      if (!TextUtils.isEmpty(paramString))
      {
        paramString = (gi)Enum.valueOf(gi.class, paramString);
        return paramString;
      }
    }
    catch (Exception paramString)
    {
      return localgi;
    }
    return localgi;
  }
  
  public gc a(InputStream paramInputStream)
    throws IOException
  {
    if (paramInputStream == null) {
      return null;
    }
    Object localObject1 = new String(jn.a(paramInputStream));
    ib.a(5, a, "Proton response string: " + (String)localObject1);
    paramInputStream = new gc();
    for (;;)
    {
      int i;
      try
      {
        localObject1 = new JSONObject((String)localObject1);
        a = ((JSONObject)localObject1).getLong("issued_at");
        b = ((JSONObject)localObject1).getLong("refresh_ttl");
        c = ((JSONObject)localObject1).getLong("expiration_ttl");
        Object localObject2 = (JSONObject)((JSONObject)localObject1).get("global_settings");
        Object localObject3;
        if (localObject2 != null)
        {
          localObject3 = new gh();
          a = b(((JSONObject)localObject2).getString("log_level"));
          b = ((JSONObject)localObject2).getBoolean("analytics_enabled");
          d = ((gh)localObject3);
        }
        localObject2 = (JSONObject)((JSONObject)localObject1).get("callbacks");
        if (localObject2 != null)
        {
          localObject1 = new ga();
          a = ((JSONObject)localObject2).getInt("max_callbacks");
          localObject2 = ((JSONObject)localObject2).getJSONArray("templates");
          if (localObject2 != null)
          {
            localObject3 = new ArrayList();
            i = 0;
            if (i < ((JSONArray)localObject2).length())
            {
              JSONObject localJSONObject = (JSONObject)((JSONArray)localObject2).get(i);
              if (localJSONObject != null)
              {
                fz localfz = new fz();
                a = localJSONObject.getString("partner");
                JSONArray localJSONArray = localJSONObject.getJSONArray("events");
                if (localJSONArray != null) {
                  b = jo.b(localJSONArray);
                }
                c = a(localJSONObject.getString("method"));
                d = localJSONObject.getString("uri_template");
                e = localJSONObject.getString("body_template");
                f = localJSONObject.getInt("max_redirects");
                g = localJSONObject.getInt("connect_timeout");
                h = localJSONObject.getInt("request_timeout");
                ((List)localObject3).add(localfz);
              }
            }
            else
            {
              b = ((List)localObject3);
            }
          }
          else
          {
            e = ((ga)localObject1);
          }
        }
        else
        {
          return paramInputStream;
        }
      }
      catch (JSONException paramInputStream)
      {
        throw new IOException("Exception while deserialize:", paramInputStream);
      }
      i += 1;
    }
  }
  
  public void a(OutputStream paramOutputStream, gc paramgc)
    throws IOException
  {
    throw new IOException("Serialize not supported for response");
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.go
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */