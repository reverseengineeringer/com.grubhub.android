package com.google.android.gms.tagmanager;

import com.google.android.gms.d.b;
import com.google.android.gms.d.cq;
import com.google.android.gms.d.cr;
import com.google.android.gms.d.cs;
import com.google.android.gms.d.ct;
import com.google.android.gms.d.o;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

class ar
{
  public static cs a(String paramString)
    throws JSONException
  {
    paramString = b(new JSONObject(paramString));
    ct localct = cs.a();
    int i = 0;
    while (i < d.length)
    {
      localct.a(cq.a().a(b.zzfr.toString(), d[i]).a(b.zzfg.toString(), dm.a(ec.d())).a(ec.e(), e[i]).a());
      i += 1;
    }
    return localct.a();
  }
  
  static Object a(Object paramObject)
    throws JSONException
  {
    if ((paramObject instanceof JSONArray)) {
      throw new RuntimeException("JSONArrays are not supported");
    }
    if (JSONObject.NULL.equals(paramObject)) {
      throw new RuntimeException("JSON nulls are not supported");
    }
    Object localObject = paramObject;
    if ((paramObject instanceof JSONObject))
    {
      paramObject = (JSONObject)paramObject;
      localObject = new HashMap();
      Iterator localIterator = ((JSONObject)paramObject).keys();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        ((Map)localObject).put(str, a(((JSONObject)paramObject).get(str)));
      }
    }
    return localObject;
  }
  
  private static o b(Object paramObject)
    throws JSONException
  {
    return dm.e(a(paramObject));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.ar
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */