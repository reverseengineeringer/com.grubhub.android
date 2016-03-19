package com.taplytics;

import android.util.Log;
import com.taplytics.sdk.TaplyticsVar;
import com.taplytics.sdk.TaplyticsVarListener;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;
import org.json.JSONArray;
import org.json.JSONObject;

public class as
{
  private static as c;
  private final WeakHashMap a = new WeakHashMap();
  private final Map<String, Object> b = new HashMap();
  
  public static as a()
  {
    if (c == null) {
      c = new as();
    }
    return c;
  }
  
  private <T> T a(TaplyticsVar<T> paramTaplyticsVar, Object paramObject1, String paramString, Object paramObject2)
  {
    if (paramTaplyticsVar != null) {}
    try
    {
      if (!paramObject1.equals(value))
      {
        value = paramObject1;
        if (listener != null) {
          listener.variableUpdated(paramObject1);
        }
      }
      return null;
    }
    catch (Exception paramTaplyticsVar)
    {
      for (;;) {}
    }
  }
  
  private void a(String paramString, Object paramObject)
  {
    if (fy.e().g()) {
      im.a().b().a(new au(this, paramString, paramObject));
    }
  }
  
  public <T> T a(String paramString, T paramT, TaplyticsVar<T> paramTaplyticsVar, boolean paramBoolean)
    throws Exception
  {
    Class localClass = paramT.getClass();
    localObject2 = paramT;
    for (;;)
    {
      try
      {
        if (fy.e().g())
        {
          localObject2 = paramT;
          a.put(paramString, paramTaplyticsVar);
        }
        localObject2 = paramT;
        if ((!fy.e().g()) && (paramBoolean))
        {
          localObject2 = paramT;
          if (b.containsKey(paramString))
          {
            localObject2 = paramT;
            return (T)b.get(paramString);
          }
        }
        localObject2 = paramT;
        if (fy.e().k() == null) {
          continue;
        }
        localObject2 = paramT;
        localObject3 = fy.e().k().h();
        localObject1 = paramT;
        if (localObject3 != null)
        {
          localObject1 = paramT;
          localObject2 = paramT;
          if (((en)localObject3).optJSONObject(paramString) != null)
          {
            localObject2 = paramT;
            Object localObject4 = ((en)localObject3).optJSONObject(paramString).opt("value");
            localObject1 = paramT;
            if (localObject4 != null) {
              localObject2 = paramT;
            }
          }
        }
      }
      catch (Exception paramT)
      {
        Object localObject1;
        boolean bool;
        Object localObject3 = localObject2;
        continue;
      }
      try
      {
        localObject1 = ((en)localObject3).optJSONObject(paramString).opt("value");
        localObject2 = paramT;
        bool = localObject1.getClass().equals(localClass);
        if (!bool) {
          continue;
        }
      }
      catch (Throwable localThrowable)
      {
        localObject2 = paramT;
        Log.w("Taplytics", "Problem casting dynamic variable", localThrowable);
        localObject2 = paramT;
        a(paramString, paramT);
        ? = paramT;
      }
    }
    localObject3 = localObject1;
    localObject2 = localObject1;
    if (listener != null)
    {
      localObject2 = localObject1;
      listener.variableUpdated(localObject1);
      localObject3 = localObject1;
    }
    for (;;)
    {
      if ((fy.e().g()) || (!paramBoolean)) {
        break label389;
      }
      b.put(paramString, localObject3);
      return (T)localObject3;
      localObject2 = paramT;
      a(paramString, paramT);
      localObject2 = paramT;
      ck.b("Variable types do no match. For " + paramString + " expected: " + localClass + " but found: " + localObject1.getClass() + ". Check variable config and try clearing app data.");
      localObject1 = paramT;
      break;
      T ?;
      localObject3 = paramT;
      if (!paramBoolean)
      {
        localObject2 = paramT;
        fy.e().d().a(new at(this, paramString, paramT, paramTaplyticsVar, localClass));
        localObject3 = paramT;
      }
    }
    label389:
    return (T)localObject3;
  }
  
  public void a(String paramString1, String paramString2)
  {
    paramString1 = fy.e().k().c(paramString1);
    if ((paramString1 != null) && (paramString1.optBoolean("hasDynamicVariables", false)))
    {
      paramString1 = fy.e().k().a(paramString1, paramString2);
      if (paramString1 != null)
      {
        paramString1 = paramString1.optJSONArray("dynamicVariables");
        if (paramString1 != null)
        {
          int i = 0;
          while (i < paramString1.length())
          {
            try
            {
              paramString2 = (JSONObject)paramString1.get(i);
              if (paramString2 != null)
              {
                TaplyticsVar localTaplyticsVar = (TaplyticsVar)a.get(paramString2.get("name"));
                if (localTaplyticsVar != null) {
                  a(localTaplyticsVar, paramString2.get("value"), (String)paramString2.get("name"), paramString2.get("defaultValue"));
                }
              }
            }
            catch (Exception paramString2)
            {
              for (;;) {}
            }
            i += 1;
          }
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.taplytics.as
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */