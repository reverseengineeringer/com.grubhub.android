package com.taplytics;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.net.URLDecoder;
import org.json.JSONObject;

class df
  implements Runnable
{
  df(de paramde) {}
  
  public void run()
  {
    for (;;)
    {
      try
      {
        Object localObject1 = Class.forName("com.adobe.mobile.AnalyticsWorker");
        localObject1 = ((Class)localObject1).getMethod("sharedInstance", new Class[0]).invoke(localObject1, new Object[0]);
        Object localObject4 = Class.forName("com.adobe.mobile.AbstractDatabaseBacking");
        ??? = ((Class)localObject4).getDeclaredField("dbMutex");
        ((Field)???).setAccessible(true);
        synchronized (((Field)???).get(localObject1))
        {
          localObject4 = ((Class)localObject4).getDeclaredField("database");
          ((Field)localObject4).setAccessible(true);
          localObject1 = (SQLiteDatabase)((Field)localObject4).get(localObject1);
          localObject4 = (String)null;
          String[] arrayOfString = (String[])null;
          String str2 = (String)null;
          String str3 = (String)null;
          localObject4 = ((SQLiteDatabase)localObject1).query("HITS", new String[] { "ID", "URL", "TIMESTAMP" }, (String)localObject4, arrayOfString, str2, str3, "ID ASC", "1");
          if (!((Cursor)localObject4).moveToFirst()) {
            continue;
          }
          localObject1 = ((Cursor)localObject4).getString(1);
          ((Cursor)localObject4).close();
          if (localObject1 == null) {
            break label403;
          }
          ??? = new JSONObject();
          localObject4 = URLDecoder.decode((String)localObject1, "UTF-8").split("&");
          localObject1 = "";
          i = 0;
          if (i >= localObject4.length) {
            break label404;
          }
          if (localObject4[i].contains("action="))
          {
            j = localObject4[i].indexOf("=");
            localObject1 = localObject4[i].substring(j + 1);
          }
          i += 1;
        }
        int i = k;
        if (j < localObject4.length)
        {
          if (!localObject4[j].equals(".a")) {
            break label412;
          }
          i = j + 1;
        }
        if ((i < localObject4.length) && (!localObject4[i].equals(".c")))
        {
          j = localObject4[i].indexOf("=");
          ((JSONObject)???).put(localObject4[i].substring(0, j), localObject4[i].substring(j + 1));
          i += 1;
          continue;
        }
        localObject4 = fy.e().n();
        if (((JSONObject)???).length() == 0)
        {
          ??? = null;
          ((cc)localObject4).a("adobe", str1, null, (JSONObject)???);
          return;
        }
        continue;
        Object localObject2 = null;
        continue;
        return;
      }
      catch (Exception localException) {}
      label403:
      label404:
      int k = 13;
      int j = 0;
      continue;
      label412:
      j += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.taplytics.df
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */