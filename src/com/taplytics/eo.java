package com.taplytics;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class eo
{
  private String a;
  private String b;
  private String c;
  private en d;
  private en e;
  private en f;
  private en g;
  private JSONObject h;
  private JSONArray i;
  private JSONArray j;
  private JSONArray k;
  private JSONObject l;
  private JSONArray m;
  private JSONObject n;
  private JSONArray o;
  private JSONArray p;
  private double q = -1.0D;
  private JSONObject r;
  private JSONObject s;
  private JSONObject t;
  private HashMap<String, String> u = new HashMap();
  
  public eo(JSONObject paramJSONObject)
    throws JSONException
  {
    if (paramJSONObject != null)
    {
      Object localObject = paramJSONObject.opt("projectInfo");
      if ((localObject != null) && ((localObject instanceof JSONObject)))
      {
        d = new en((JSONObject)localObject);
        localObject = d.opt("name");
        if ((localObject != null) && ((localObject instanceof String))) {
          b = ((String)localObject);
        }
        localObject = d.opt("deviceToken");
        if ((localObject != null) && ((localObject instanceof String))) {
          c = ((String)localObject);
        }
      }
      localObject = paramJSONObject.opt("sid");
      if ((localObject != null) && ((localObject instanceof String))) {
        a = ((String)localObject);
      }
      localObject = paramJSONObject.opt("as");
      if ((localObject != null) && ((localObject instanceof JSONObject))) {
        e = new en((JSONObject)localObject);
      }
      localObject = paramJSONObject.opt("codeExp");
      if ((localObject != null) && ((localObject instanceof JSONObject))) {
        f = new en((JSONObject)localObject);
      }
      localObject = paramJSONObject.opt("experiments");
      if ((localObject != null) && ((localObject instanceof JSONArray))) {
        i = ((JSONArray)localObject);
      }
      localObject = paramJSONObject.opt("exp");
      if ((localObject != null) && ((localObject instanceof JSONArray))) {
        j = ((JSONArray)localObject);
      }
      localObject = paramJSONObject.opt("var");
      if ((localObject != null) && ((localObject instanceof JSONArray))) {
        k = ((JSONArray)localObject);
      }
      localObject = paramJSONObject.opt("dynamicVars");
      if ((localObject != null) && ((localObject instanceof JSONObject))) {
        g = new en((JSONObject)localObject);
      }
      localObject = paramJSONObject.opt("au");
      if ((localObject != null) && ((localObject instanceof JSONObject))) {
        l = ((JSONObject)localObject);
      }
      localObject = paramJSONObject.opt("views");
      if ((localObject != null) && ((localObject instanceof JSONArray))) {
        m = ((JSONArray)localObject);
      }
      localObject = paramJSONObject.opt("images");
      if ((localObject != null) && ((localObject instanceof JSONObject)))
      {
        h = ((JSONObject)localObject);
        new kg().execute(new JSONObject[] { h });
      }
      localObject = paramJSONObject.opt("regions");
      if ((localObject != null) && ((localObject instanceof JSONArray))) {
        o = ((JSONArray)localObject);
      }
      localObject = paramJSONObject.opt("eventDelay");
      if ((localObject != null) && ((localObject instanceof Double))) {
        q = ((Double)localObject).doubleValue();
      }
      localObject = paramJSONObject.opt("pas");
      if ((localObject != null) && ((localObject instanceof JSONObject))) {
        t = ((JSONObject)localObject);
      }
      localObject = paramJSONObject.opt("clientControl");
      if ((localObject != null) && ((localObject instanceof JSONObject)))
      {
        r = ((JSONObject)localObject);
        s = r.optJSONObject("disabledEvents");
      }
      paramJSONObject = paramJSONObject.opt("activities");
      if ((paramJSONObject != null) && ((paramJSONObject instanceof JSONObject)))
      {
        n = ((JSONObject)paramJSONObject);
        paramJSONObject = n.keys();
        while (paramJSONObject.hasNext())
        {
          localObject = (String)paramJSONObject.next();
          if ((!u.containsKey(localObject)) && ((n.get((String)localObject) instanceof JSONObject)))
          {
            String str = ((JSONObject)n.get((String)localObject)).optString("_id");
            u.put(str, localObject);
          }
        }
      }
    }
  }
  
  public HashMap<String, String> a()
  {
    return u;
  }
  
  public JSONObject a(JSONObject paramJSONObject, String paramString)
  {
    if (paramString.equals("baseline")) {
      paramJSONObject = paramJSONObject.optJSONObject("baseline");
    }
    for (;;)
    {
      return paramJSONObject;
      JSONArray localJSONArray = paramJSONObject.optJSONArray("variations");
      int i1 = 0;
      paramJSONObject = null;
      try
      {
        while (i1 < localJSONArray.length())
        {
          JSONObject localJSONObject = localJSONArray.getJSONObject(i1);
          boolean bool = localJSONObject.optString("name").equals(paramString);
          paramJSONObject = localJSONObject;
          if (bool) {
            break;
          }
          i1 += 1;
          paramJSONObject = localJSONObject;
        }
        return null;
      }
      catch (JSONException paramJSONObject) {}
    }
  }
  
  public void a(String paramString)
  {
    a = paramString;
  }
  
  public void a(JSONArray paramJSONArray)
  {
    p = paramJSONArray;
  }
  
  public void a(JSONObject paramJSONObject)
  {
    l = paramJSONObject;
  }
  
  public String[] a(boolean paramBoolean)
  {
    ArrayList localArrayList = new ArrayList();
    int i1 = 0;
    for (;;)
    {
      int i2;
      int i3;
      try
      {
        Object localObject;
        if (i1 < i.length())
        {
          JSONObject localJSONObject = i.getJSONObject(i1);
          if ((!localJSONObject.has("distFilters")) || (localJSONObject.optJSONArray("distFilters") == null)) {
            break label303;
          }
          JSONArray localJSONArray1 = localJSONObject.optJSONArray("distFilters");
          i2 = 0;
          if (i2 >= localJSONArray1.length()) {
            break label303;
          }
          localObject = localJSONArray1.optJSONObject(i2);
          if ((localObject == null) || (!((JSONObject)localObject).has("type")) || (!(((JSONObject)localObject).get("type") instanceof String)) || (!((JSONObject)localObject).get("type").equals("osType")) || (!((JSONObject)localObject).has("values")) || (((JSONObject)localObject).optJSONArray("values") == null)) {
            break label296;
          }
          JSONArray localJSONArray2 = ((JSONObject)localObject).optJSONArray("values");
          i3 = 0;
          if (i3 >= localJSONArray2.length()) {
            break label296;
          }
          if (((localJSONArray2.get(i3) instanceof String)) && (localJSONArray2.get(i3).equals("Android"))) {
            if (paramBoolean)
            {
              localObject = localJSONObject.optString("name") + " (" + localJSONObject.optString("status") + ")";
              localArrayList.add(localObject);
            }
            else
            {
              localObject = localJSONObject.optString("name");
              continue;
            }
          }
        }
        else
        {
          localObject = (String[])localArrayList.toArray(new String[localArrayList.size()]);
          return (String[])localObject;
        }
      }
      catch (JSONException localJSONException)
      {
        return null;
      }
      i3 += 1;
      continue;
      label296:
      i2 += 1;
      continue;
      label303:
      i1 += 1;
    }
  }
  
  public String b()
  {
    return a;
  }
  
  public String[] b(String paramString)
  {
    int i2 = 0;
    int i1 = 0;
    JSONArray localJSONArray = null;
    label113:
    do
    {
      for (;;)
      {
        try
        {
          if (i1 >= i.length()) {
            break;
          }
          if (!i.getJSONObject(i1).getString("name").equals(paramString)) {
            break label113;
          }
          localJSONArray = i.getJSONObject(i1).optJSONArray("variations");
        }
        catch (JSONException paramString)
        {
          return null;
        }
        paramString = new String[localJSONArray.length() + 1];
        i1 = i2;
        if (i1 < localJSONArray.length())
        {
          paramString[i1] = localJSONArray.getJSONObject(i1).optString("name");
          i1 += 1;
        }
        else
        {
          paramString[localJSONArray.length()] = "baseline";
          return paramString;
          i1 += 1;
        }
      }
    } while (localJSONArray != null);
    return null;
  }
  
  public en c()
  {
    return d;
  }
  
  public JSONObject c(String paramString)
  {
    int i1 = 0;
    JSONObject localJSONObject = null;
    try
    {
      for (;;)
      {
        if (i1 < i.length())
        {
          localJSONObject = i.getJSONObject(i1);
          boolean bool = localJSONObject.optString("name").equals(paramString);
          if (!bool) {}
        }
        else
        {
          return localJSONObject;
        }
        i1 += 1;
      }
      return null;
    }
    catch (JSONException paramString) {}
  }
  
  public en d()
  {
    return e;
  }
  
  public en e()
  {
    return f;
  }
  
  public JSONArray f()
  {
    return i;
  }
  
  public JSONArray g()
  {
    return j;
  }
  
  public en h()
  {
    return g;
  }
  
  public JSONArray i()
  {
    return k;
  }
  
  public JSONObject j()
  {
    return l;
  }
  
  public JSONArray k()
  {
    return m;
  }
  
  public JSONObject l()
  {
    return h;
  }
  
  public String m()
  {
    return c;
  }
  
  public JSONArray n()
  {
    return o;
  }
  
  public JSONArray o()
  {
    return p;
  }
  
  public double p()
  {
    return q;
  }
  
  public JSONObject q()
  {
    return r;
  }
  
  public JSONObject r()
  {
    return s;
  }
  
  public JSONObject s()
  {
    return t;
  }
}

/* Location:
 * Qualified Name:     com.taplytics.eo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */