package com.facebook;

import com.facebook.internal.al;
import com.facebook.internal.q;
import java.net.HttpURLConnection;
import org.json.JSONException;
import org.json.JSONObject;

public final class j
{
  static final l a = new l(200, 299, null);
  private final k b;
  private final int c;
  private final int d;
  private final int e;
  private final String f;
  private final String g;
  private final String h;
  private final String i;
  private final String j;
  private final JSONObject k;
  private final JSONObject l;
  private final Object m;
  private final HttpURLConnection n;
  private final h o;
  
  private j(int paramInt1, int paramInt2, int paramInt3, String paramString1, String paramString2, String paramString3, String paramString4, boolean paramBoolean, JSONObject paramJSONObject1, JSONObject paramJSONObject2, Object paramObject, HttpURLConnection paramHttpURLConnection, h paramh)
  {
    c = paramInt1;
    d = paramInt2;
    e = paramInt3;
    f = paramString1;
    g = paramString2;
    l = paramJSONObject1;
    k = paramJSONObject2;
    m = paramObject;
    n = paramHttpURLConnection;
    h = paramString3;
    i = paramString4;
    paramInt1 = 0;
    if (paramh != null)
    {
      o = paramh;
      paramInt1 = 1;
      paramString2 = g();
      if (paramInt1 == 0) {
        break label133;
      }
    }
    label133:
    for (paramString1 = k.OTHER;; paramString1 = paramString2.a(paramInt2, paramInt3, paramBoolean))
    {
      b = paramString1;
      j = paramString2.a(b);
      return;
      o = new p(this, paramString2);
      break;
    }
  }
  
  public j(int paramInt, String paramString1, String paramString2)
  {
    this(-1, paramInt, -1, paramString1, paramString2, null, null, false, null, null, null, null, null);
  }
  
  j(HttpURLConnection paramHttpURLConnection, Exception paramException) {}
  
  static j a(JSONObject paramJSONObject, Object paramObject, HttpURLConnection paramHttpURLConnection)
  {
    for (;;)
    {
      try
      {
        if (paramJSONObject.has("code"))
        {
          int i4 = paramJSONObject.getInt("code");
          localObject1 = al.a(paramJSONObject, "body", "FACEBOOK_NON_JSON_RESULT");
          if ((localObject1 != null) && ((localObject1 instanceof JSONObject)))
          {
            JSONObject localJSONObject2 = (JSONObject)localObject1;
            localObject1 = null;
            String str = null;
            JSONObject localJSONObject1 = null;
            Object localObject4 = null;
            boolean bool2 = false;
            int i2 = -1;
            int i3 = -1;
            int i1 = 0;
            Object localObject2;
            Object localObject3;
            boolean bool1;
            if (localJSONObject2.has("error"))
            {
              localJSONObject1 = (JSONObject)al.a(localJSONObject2, "error", null);
              localObject1 = localJSONObject1.optString("type", null);
              str = localJSONObject1.optString("message", null);
              i2 = localJSONObject1.optInt("code", -1);
              i3 = localJSONObject1.optInt("error_subcode", -1);
              localObject2 = localJSONObject1.optString("error_user_msg", null);
              localObject3 = localJSONObject1.optString("error_user_title", null);
              bool1 = localJSONObject1.optBoolean("is_transient", false);
              i1 = 1;
              if (i1 != 0) {
                return new j(i4, i2, i3, (String)localObject1, str, (String)localObject3, (String)localObject2, bool1, localJSONObject2, paramJSONObject, paramObject, paramHttpURLConnection, null);
              }
            }
            else
            {
              if ((!localJSONObject2.has("error_code")) && (!localJSONObject2.has("error_msg")))
              {
                localObject3 = localObject4;
                localObject2 = localJSONObject1;
                bool1 = bool2;
                if (!localJSONObject2.has("error_reason")) {
                  continue;
                }
              }
              localObject1 = localJSONObject2.optString("error_reason", null);
              str = localJSONObject2.optString("error_msg", null);
              i2 = localJSONObject2.optInt("error_code", -1);
              i3 = localJSONObject2.optInt("error_subcode", -1);
              i1 = 1;
              localObject3 = localObject4;
              localObject2 = localJSONObject1;
              bool1 = bool2;
              continue;
            }
          }
          if (!a.a(i4))
          {
            if (!paramJSONObject.has("body")) {
              break label359;
            }
            localObject1 = (JSONObject)al.a(paramJSONObject, "body", "FACEBOOK_NON_JSON_RESULT");
            paramJSONObject = new j(i4, -1, -1, null, null, null, null, false, (JSONObject)localObject1, paramJSONObject, paramObject, paramHttpURLConnection, null);
            return paramJSONObject;
          }
        }
      }
      catch (JSONException paramJSONObject) {}
      return null;
      label359:
      Object localObject1 = null;
    }
  }
  
  /* Error */
  static q g()
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: invokestatic 165	com/facebook/m:i	()Ljava/lang/String;
    //   6: invokestatic 168	com/facebook/internal/al:d	(Ljava/lang/String;)Lcom/facebook/internal/an;
    //   9: astore_0
    //   10: aload_0
    //   11: ifnonnull +12 -> 23
    //   14: invokestatic 170	com/facebook/internal/q:a	()Lcom/facebook/internal/q;
    //   17: astore_0
    //   18: ldc 2
    //   20: monitorexit
    //   21: aload_0
    //   22: areturn
    //   23: aload_0
    //   24: invokevirtual 174	com/facebook/internal/an:c	()Lcom/facebook/internal/q;
    //   27: astore_0
    //   28: goto -10 -> 18
    //   31: astore_0
    //   32: ldc 2
    //   34: monitorexit
    //   35: aload_0
    //   36: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   9	19	0	localObject1	Object
    //   31	5	0	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   3	10	31	finally
    //   14	18	31	finally
    //   23	28	31	finally
  }
  
  public int a()
  {
    return c;
  }
  
  public int b()
  {
    return d;
  }
  
  public String c()
  {
    return f;
  }
  
  public String d()
  {
    if (g != null) {
      return g;
    }
    return o.getLocalizedMessage();
  }
  
  public JSONObject e()
  {
    return k;
  }
  
  public h f()
  {
    return o;
  }
  
  public String toString()
  {
    return "{HttpStatus: " + c + ", errorCode: " + d + ", errorType: " + f + ", errorMessage: " + d() + "}";
  }
}

/* Location:
 * Qualified Name:     com.facebook.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */