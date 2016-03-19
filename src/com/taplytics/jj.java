package com.taplytics;

import android.os.AsyncTask;
import java.io.File;
import java.io.FileOutputStream;
import java.io.ObjectOutput;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Date;
import org.json.JSONArray;
import org.json.JSONObject;

class jj
  extends AsyncTask<Void, Void, Void>
{
  private JSONObject a;
  private JSONArray b;
  private Object c;
  private String d;
  private File e;
  private final hz f;
  private Exception g = null;
  
  public jj(Object paramObject, String paramString, File paramFile, hz paramhz)
  {
    if ((paramObject instanceof JSONObject)) {
      a = ((JSONObject)paramObject);
    }
    for (;;)
    {
      d = paramString;
      e = paramFile;
      f = paramhz;
      return;
      if ((paramObject instanceof JSONArray)) {
        b = ((JSONArray)paramObject);
      } else if ((paramObject instanceof Serializable)) {
        c = paramObject;
      }
    }
  }
  
  private void a()
    throws Exception
  {
    if (((a == null) && (b == null) && (c == null)) || (d == null) || (f == null)) {
      ck.c("Missing json, fileName, or listener to write JSON to disk");
    }
    ObjectOutputStream localObjectOutputStream;
    for (;;)
    {
      return;
      localObjectOutputStream = new ObjectOutputStream(new FileOutputStream(new File(e, d)));
      try
      {
        Date localDate = new Date();
        if (c != null)
        {
          Object localObject1 = c;
          localObjectOutputStream.writeObject(localObject1);
          localObjectOutputStream.close();
          if (!ck.c()) {
            continue;
          }
          ck.a("Wrote JSON to Disk", localDate);
        }
      }
      catch (Throwable localThrowable)
      {
        if (!(localThrowable instanceof Exception)) {}
      }
    }
    for (Object localObject2 = (Exception)localThrowable;; localObject2 = null)
    {
      ck.b("RW err", (Exception)localObject2);
      localObjectOutputStream.close();
      return;
      if (a != null)
      {
        localObject2 = a.toString();
        break;
      }
      localObject2 = b.toString();
      break;
    }
  }
  
  protected Void a(Void... paramVarArgs)
  {
    try
    {
      a();
      return null;
    }
    catch (Exception paramVarArgs)
    {
      for (;;)
      {
        g = paramVarArgs;
      }
    }
  }
  
  protected void a(Void paramVoid)
  {
    f.a(g);
  }
}

/* Location:
 * Qualified Name:     com.taplytics.jj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */