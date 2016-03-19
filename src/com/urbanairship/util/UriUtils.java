package com.urbanairship.util;

import android.net.Uri;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class UriUtils
{
  public static Map<String, List<String>> getQueryParameters(Uri paramUri)
  {
    HashMap localHashMap = new HashMap();
    paramUri = paramUri.getEncodedQuery();
    if (UAStringUtil.isEmpty(paramUri)) {
      return localHashMap;
    }
    String[] arrayOfString = paramUri.split("&");
    int j = arrayOfString.length;
    int i = 0;
    if (i < j)
    {
      Object localObject = arrayOfString[i].split("=");
      if (localObject.length >= 1)
      {
        paramUri = Uri.decode(localObject[0]);
        label66:
        if (localObject.length < 2) {
          break label143;
        }
      }
      label143:
      for (localObject = Uri.decode(localObject[1]);; localObject = null)
      {
        if (!UAStringUtil.isEmpty(paramUri))
        {
          if (!localHashMap.containsKey(paramUri)) {
            localHashMap.put(paramUri, new ArrayList());
          }
          ((List)localHashMap.get(paramUri)).add(localObject);
        }
        i += 1;
        break;
        paramUri = null;
        break label66;
      }
    }
    return localHashMap;
  }
  
  public static Uri parse(Object paramObject)
  {
    if ((paramObject == null) || ((!(paramObject instanceof String)) && (!(paramObject instanceof Uri)) && (!(paramObject instanceof URL)))) {
      return null;
    }
    return Uri.parse(String.valueOf(paramObject));
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.util.UriUtils
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */