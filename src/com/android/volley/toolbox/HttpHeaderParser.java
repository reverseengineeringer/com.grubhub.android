package com.android.volley.toolbox;

import com.android.volley.Cache.Entry;
import com.android.volley.NetworkResponse;
import java.util.Date;
import java.util.Map;
import org.apache.http.impl.cookie.DateParseException;
import org.apache.http.impl.cookie.DateUtils;

public class HttpHeaderParser
{
  public static Cache.Entry parseCacheHeaders(NetworkResponse paramNetworkResponse)
  {
    int i = 0;
    long l4 = 0L;
    long l5 = System.currentTimeMillis();
    Map localMap = headers;
    Object localObject1 = (String)localMap.get("Date");
    if (localObject1 != null) {}
    for (long l2 = parseDateAsEpoch((String)localObject1);; l2 = 0L)
    {
      localObject1 = (String)localMap.get("Cache-Control");
      long l1;
      Object localObject2;
      if (localObject1 != null)
      {
        localObject1 = ((String)localObject1).split(",");
        i = 0;
        l1 = 0L;
        if (i < localObject1.length)
        {
          localObject2 = localObject1[i].trim();
          if ((((String)localObject2).equals("no-cache")) || (((String)localObject2).equals("no-store"))) {
            return null;
          }
          if (((String)localObject2).startsWith("max-age=")) {}
          for (;;)
          {
            try
            {
              l3 = Long.parseLong(((String)localObject2).substring(8));
              l1 = l3;
            }
            catch (Exception localException)
            {
              continue;
              long l3 = 0L;
              continue;
            }
            i += 1;
            break;
            if ((((String)localObject2).equals("must-revalidate")) || (((String)localObject2).equals("proxy-revalidate"))) {
              l1 = 0L;
            }
          }
        }
        i = 1;
      }
      for (;;)
      {
        localObject1 = (String)localMap.get("Expires");
        if (localObject1 != null)
        {
          l3 = parseDateAsEpoch((String)localObject1);
          localObject1 = (String)localMap.get("ETag");
          if (i != 0) {
            l1 = 1000L * l1 + l5;
          }
          for (;;)
          {
            localObject2 = new Cache.Entry();
            data = data;
            etag = ((String)localObject1);
            softTtl = l1;
            ttl = softTtl;
            serverDate = l2;
            responseHeaders = localMap;
            return (Cache.Entry)localObject2;
            l1 = l4;
            if (l2 > 0L)
            {
              l1 = l4;
              if (l3 >= l2) {
                l1 = l3 - l2 + l5;
              }
            }
          }
        }
        l1 = 0L;
      }
    }
  }
  
  public static String parseCharset(Map<String, String> paramMap)
  {
    paramMap = (String)paramMap.get("Content-Type");
    if (paramMap != null)
    {
      paramMap = paramMap.split(";");
      int i = 1;
      while (i < paramMap.length)
      {
        String[] arrayOfString = paramMap[i].trim().split("=");
        if ((arrayOfString.length == 2) && (arrayOfString[0].equals("charset"))) {
          return arrayOfString[1];
        }
        i += 1;
      }
    }
    return "ISO-8859-1";
  }
  
  public static long parseDateAsEpoch(String paramString)
  {
    try
    {
      long l = DateUtils.parseDate(paramString).getTime();
      return l;
    }
    catch (DateParseException paramString) {}
    return 0L;
  }
}

/* Location:
 * Qualified Name:     com.android.volley.toolbox.HttpHeaderParser
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */