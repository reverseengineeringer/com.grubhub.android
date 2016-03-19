package com.taplytics;

import android.content.Context;
import android.os.AsyncTask;
import com.taplytics.sdk.TaplyticsPushTokenListener;
import java.util.Random;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

class gp
  extends AsyncTask<String, Void, JSONObject>
{
  Random a = new Random();
  
  private gp(gn paramgn) {}
  
  protected JSONObject a(String... paramVarArgs)
  {
    Object localObject1 = null;
    String str1;
    String str2;
    label32:
    long l;
    int i;
    if ((paramVarArgs != null) && (paramVarArgs.length > 0))
    {
      str1 = paramVarArgs[0];
      if ((paramVarArgs == null) || (paramVarArgs.length <= 1)) {
        break label263;
      }
      str2 = paramVarArgs[1];
      l = a.nextInt(1000) + 10;
      i = 1;
      paramVarArgs = (String[])localObject1;
      label52:
      if (i > 10) {
        break label398;
      }
      if (ck.c()) {
        ck.a("Attempt #" + i + " to register");
      }
    }
    for (;;)
    {
      try
      {
        localObject1 = fy.e().p();
        localObject1 = new m("com.google.android.gms.gcm.GoogleCloudMessaging", "getInstance", new Class[] { Context.class }, new Object[] { localObject1 });
        Object localObject2;
        if ((localObject1 != null) && (str1 != null))
        {
          if (ck.c()) {
            ck.a("Posting the GCM token");
          }
          localObject2 = new String[] { str1 };
          localObject2 = (String)((m)localObject1).a("register", new Class[] { String[].class }, new Object[] { localObject2 });
          localObject1 = localObject2;
        }
        try
        {
          if (ck.c())
          {
            ck.a("Push Token: " + (String)localObject2);
            localObject1 = localObject2;
          }
          paramVarArgs = new JSONObject();
        }
        catch (Exception localException1)
        {
          label263:
          paramVarArgs = (String[])localObject2;
        }
      }
      catch (Exception localException2)
      {
        String[] arrayOfString1;
        continue;
      }
      try
      {
        paramVarArgs.put("token", localObject1);
        paramVarArgs.put("env", str2);
        return paramVarArgs;
      }
      catch (JSONException localJSONException)
      {
        ck.b("Getting GCM token", localJSONException);
        return paramVarArgs;
      }
      str1 = null;
      break;
      str2 = null;
      break label32;
      i += 1;
      break label52;
      ck.b("Failed to register on attempt " + i, localException1);
      arrayOfString1 = paramVarArgs;
      if (i != 10)
      {
        try
        {
          if (ck.c()) {
            ck.a("Sleeping for " + l + " ms before retry");
          }
          Thread.sleep(l);
        }
        catch (InterruptedException localInterruptedException)
        {
          if (!ck.c()) {
            continue;
          }
          ck.a("Thread interrupted: abort remaining retries!");
          Thread.currentThread().interrupt();
          continue;
        }
        l *= 2L;
        continue;
        label398:
        String[] arrayOfString2 = paramVarArgs;
      }
    }
  }
  
  protected void a(JSONObject paramJSONObject)
  {
    int i = 0;
    if (paramJSONObject != null) {}
    for (;;)
    {
      int k;
      try
      {
        Object localObject1 = fy.e().k();
        if (localObject1 == null) {
          return;
        }
        localObject1 = fy.e().k().j();
        if (localObject1 == null) {
          return;
        }
        localObject1 = ((JSONObject)localObject1).optJSONArray("deviceInfo");
        if (localObject1 == null) {
          return;
        }
        k = 0;
        if (k < ((JSONArray)localObject1).length())
        {
          Object localObject2 = ((JSONArray)localObject1).getJSONObject(k);
          int j = i;
          if (paramJSONObject.optString("env").equals("sandbox"))
          {
            String str = ((JSONObject)localObject2).optString("pushTokenSandbox");
            j = i;
            if (str != null)
            {
              j = i;
              if (paramJSONObject.optString("token").equals(str)) {
                j = 1;
              }
            }
          }
          i = j;
          if (paramJSONObject.optString("env").equals("prod"))
          {
            localObject2 = ((JSONObject)localObject2).optString("pushToken");
            i = j;
            if (localObject2 != null)
            {
              i = j;
              if (paramJSONObject.optString("token").equals(localObject2)) {
                i = 1;
              }
            }
          }
        }
        else
        {
          if (ck.c()) {
            ck.a(paramJSONObject.optString("token"));
          }
          if (paramJSONObject.has("token")) {
            b.a = paramJSONObject.optString("token");
          }
          if (gn.a(b) != null) {
            gn.a(b).pushTokenReceived(paramJSONObject.optString("token"));
          }
          if (i == 0) {
            b.a(paramJSONObject);
          }
          return;
        }
      }
      catch (Exception paramJSONObject)
      {
        ck.b("Checking GCM Push Token", paramJSONObject);
        return;
      }
      finally
      {
        gn.a(b, Boolean.valueOf(true));
      }
      k += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.taplytics.gp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */