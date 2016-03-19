package com.flurry.sdk;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class jo
{
  public static List<JSONObject> a(JSONArray paramJSONArray)
    throws JSONException
  {
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    while (i < paramJSONArray.length())
    {
      localArrayList.add((JSONObject)paramJSONArray.get(i));
      i += 1;
    }
    return localArrayList;
  }
  
  public static Map<String, String> a(JSONObject paramJSONObject)
    throws JSONException
  {
    HashMap localHashMap = new HashMap();
    Iterator localIterator = paramJSONObject.keys();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      localHashMap.put(str, (String)paramJSONObject.get(str));
    }
    return localHashMap;
  }
  
  public static void a(JSONObject paramJSONObject, String paramString, float paramFloat)
    throws IOException, JSONException
  {
    if (paramJSONObject == null) {
      throw new IOException("Null Json object");
    }
    paramJSONObject.putOpt(paramString, Float.valueOf(paramFloat));
  }
  
  public static void a(JSONObject paramJSONObject, String paramString, int paramInt)
    throws IOException, JSONException
  {
    if (paramJSONObject == null) {
      throw new IOException("Null Json object");
    }
    paramJSONObject.put(paramString, paramInt);
  }
  
  public static void a(JSONObject paramJSONObject, String paramString, long paramLong)
    throws IOException, JSONException
  {
    if (paramJSONObject == null) {
      throw new IOException("Null Json object");
    }
    paramJSONObject.put(paramString, paramLong);
  }
  
  public static void a(JSONObject paramJSONObject, String paramString, Object paramObject)
    throws JSONException
  {
    if (paramObject == null)
    {
      paramJSONObject.put(paramString, JSONObject.NULL);
      return;
    }
    paramJSONObject.put(paramString, paramObject);
  }
  
  public static void a(JSONObject paramJSONObject, String paramString1, String paramString2)
    throws IOException, JSONException
  {
    if (paramJSONObject == null) {
      throw new IOException("Null Json object");
    }
    if (paramString2 != null)
    {
      paramJSONObject.put(paramString1, paramString2);
      return;
    }
    paramJSONObject.put(paramString1, JSONObject.NULL);
  }
  
  public static void a(JSONObject paramJSONObject, String paramString, boolean paramBoolean)
    throws IOException, JSONException
  {
    if (paramJSONObject == null) {
      throw new IOException("Null Json object");
    }
    paramJSONObject.put(paramString, paramBoolean);
  }
  
  public static List<String> b(JSONArray paramJSONArray)
    throws JSONException
  {
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    while (i < paramJSONArray.length())
    {
      localArrayList.add((String)paramJSONArray.get(i));
      i += 1;
    }
    return localArrayList;
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.jo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */