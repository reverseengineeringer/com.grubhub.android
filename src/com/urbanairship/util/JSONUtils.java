package com.urbanairship.util;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

@Deprecated
public class JSONUtils
{
  public static List<Object> convertToList(JSONArray paramJSONArray)
  {
    ArrayList localArrayList = new ArrayList(paramJSONArray.length());
    int i = 0;
    if (i < paramJSONArray.length())
    {
      if (paramJSONArray.isNull(i)) {
        localArrayList.add(null);
      }
      for (;;)
      {
        i += 1;
        break;
        Object localObject = paramJSONArray.optJSONArray(i);
        if (localObject != null)
        {
          localArrayList.add(convertToList((JSONArray)localObject));
        }
        else
        {
          localObject = paramJSONArray.optJSONObject(i);
          if (localObject != null) {
            localArrayList.add(convertToMap((JSONObject)localObject));
          } else {
            localArrayList.add(paramJSONArray.opt(i));
          }
        }
      }
    }
    return localArrayList;
  }
  
  public static Map<String, Object> convertToMap(JSONObject paramJSONObject)
  {
    HashMap localHashMap = new HashMap();
    if ((paramJSONObject == null) || (paramJSONObject.length() == 0)) {
      return localHashMap;
    }
    Iterator localIterator = paramJSONObject.keys();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      if (paramJSONObject.isNull(str))
      {
        localHashMap.put(str, null);
      }
      else
      {
        Object localObject = paramJSONObject.optJSONArray(str);
        if (localObject != null)
        {
          localHashMap.put(str, convertToList((JSONArray)localObject));
        }
        else
        {
          localObject = paramJSONObject.optJSONObject(str);
          if (localObject != null) {
            localHashMap.put(str, convertToMap((JSONObject)localObject));
          } else {
            localHashMap.put(str, paramJSONObject.opt(str));
          }
        }
      }
    }
    return localHashMap;
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.util.JSONUtils
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */