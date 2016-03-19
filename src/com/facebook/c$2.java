package com.facebook;

import android.util.Log;
import com.facebook.internal.al;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONObject;

class c$2
  implements r
{
  c$2(c paramc, AtomicBoolean paramAtomicBoolean, Set paramSet1, Set paramSet2) {}
  
  public void a(aa paramaa)
  {
    paramaa = paramaa.b();
    if (paramaa == null) {}
    do
    {
      return;
      paramaa = paramaa.optJSONArray("data");
    } while (paramaa == null);
    a.set(true);
    int i = 0;
    label31:
    Object localObject;
    if (i < paramaa.length())
    {
      localObject = paramaa.optJSONObject(i);
      if (localObject != null) {
        break label58;
      }
    }
    for (;;)
    {
      i += 1;
      break label31;
      break;
      label58:
      String str = ((JSONObject)localObject).optString("permission");
      localObject = ((JSONObject)localObject).optString("status");
      if ((!al.a(str)) && (!al.a((String)localObject)))
      {
        localObject = ((String)localObject).toLowerCase(Locale.US);
        if (((String)localObject).equals("granted")) {
          b.add(str);
        } else if (((String)localObject).equals("declined")) {
          c.add(str);
        } else {
          Log.w("AccessTokenManager", "Unexpected status: " + (String)localObject);
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.c.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */