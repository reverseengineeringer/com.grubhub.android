package com.taplytics;

import android.content.Context;
import com.taplytics.sdk.Taplytics;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import org.json.JSONObject;

public class dc
  extends cx
{
  private static dc c;
  private HashSet<String> d = new HashSet();
  
  public dc()
  {
    a("mixpanel", 4, this);
    d = new HashSet(Arrays.asList(new String[] { "$android_os", "$android_model", "$android_brand", "$android_os_version", "$android_lib_version", "$android_manufacturer", "$android_app_version", "$token", "$distinct_id" }));
  }
  
  public static dc c()
  {
    if (c == null) {
      c = new dc();
    }
    return c;
  }
  
  public void a(ArrayList<JSONObject> paramArrayList)
  {
    JSONObject localJSONObject1 = new JSONObject();
    JSONObject localJSONObject2 = new JSONObject();
    paramArrayList = paramArrayList.iterator();
    while (paramArrayList.hasNext())
    {
      JSONObject localJSONObject3 = (JSONObject)paramArrayList.next();
      Iterator localIterator;
      String str;
      try
      {
        if (localJSONObject3.has("$set"))
        {
          localJSONObject3 = localJSONObject3.optJSONObject("$set");
          localIterator = localJSONObject3.keys();
          while (localIterator.hasNext())
          {
            str = (String)localIterator.next();
            if (!d.contains(str)) {
              localJSONObject1.put(str, localJSONObject3.get(str));
            }
          }
        }
      }
      catch (Exception localException)
      {
        ck.b("MPUA", localException);
      }
      if (localException.has("$add"))
      {
        JSONObject localJSONObject4 = localException.optJSONObject("$add");
        localIterator = localJSONObject4.keys();
        while (localIterator.hasNext())
        {
          str = (String)localIterator.next();
          localJSONObject1.put(str, localJSONObject4.get(str));
        }
      }
      localJSONObject2.put("customData", localJSONObject1);
    }
    Taplytics.setUserAttributes(localJSONObject2);
  }
  
  public void a(JSONObject paramJSONObject)
  {
    JSONObject localJSONObject = new JSONObject();
    String str1;
    for (;;)
    {
      String str2;
      try
      {
        if ((paramJSONObject.equals(JSONObject.NULL)) || (paramJSONObject.length() == 0) || (!paramJSONObject.has("event"))) {
          return;
        }
        str1 = paramJSONObject.optString("event");
        paramJSONObject = paramJSONObject.optJSONObject("properties");
        if ((paramJSONObject == null) || (paramJSONObject.equals(JSONObject.NULL)) || (paramJSONObject.length() == 0))
        {
          fy.e().n().b("mixpanel", str1);
          return;
        }
        Iterator localIterator = paramJSONObject.keys();
        if (!localIterator.hasNext()) {
          break;
        }
        str2 = (String)localIterator.next();
        if ((!str2.startsWith("$")) && (!str2.equals("distinct_id")) && (!str2.equals("token")) && (!str2.equals("mp_lib")) && (!str2.equals("time")))
        {
          localJSONObject.put(str2, paramJSONObject.get(str2));
          continue;
        }
        if (str2.equals("time")) {
          break label204;
        }
      }
      catch (Exception paramJSONObject)
      {
        ck.b("Json error", paramJSONObject);
        return;
      }
      if (str2.equals("$time")) {
        label204:
        localJSONObject.put("TLTime", paramJSONObject.get(str2));
      }
    }
    fy.e().n().a("mixpanel", str1, null, localJSONObject);
  }
  
  public void b()
  {
    Object localObject1 = a(dd.albatross.getName(), "data").iterator();
    while (((Iterator)localObject1).hasNext())
    {
      Object localObject2 = (String)((Iterator)localObject1).next();
      try
      {
        localObject2 = new JSONObject((String)localObject2);
        if (localObject2 == JSONObject.NULL) {
          continue;
        }
        a((JSONObject)localObject2);
      }
      catch (Exception localException1) {}
      if (ck.c()) {
        ck.a("MPErr: " + localException1.getMessage());
      }
    }
    if (a(dd.alligator.getName()) > 0)
    {
      localObject1 = new ArrayList();
      Iterator localIterator = a(dd.alligator.getName(), "data").iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        try
        {
          ((ArrayList)localObject1).add(new JSONObject(str));
        }
        catch (Exception localException2) {}
        if (ck.c()) {
          ck.a("MPErr" + localException2.getMessage());
        }
      }
      a((ArrayList)localObject1);
    }
    d();
  }
  
  public void d()
  {
    if (a(dd.albatross.getName()) > 0) {
      try
      {
        Method localMethod = Class.forName("com.mixpanel.android.mpmetrics.MixpanelAPI").getMethod("getInstance", new Class[] { Context.class, String.class });
        if (fy.e().q() == null) {}
        for (Object localObject = fy.e().p();; localObject = fy.e().q())
        {
          localObject = localMethod.invoke(null, new Object[] { localObject, "taplytics" });
          localObject.getClass().getMethod("flush", new Class[0]).invoke(localObject, new Object[0]);
          return;
        }
        return;
      }
      catch (Exception localException)
      {
        ck.b("flush error", localException);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.taplytics.dc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */