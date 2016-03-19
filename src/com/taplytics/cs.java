package com.taplytics;

import android.content.Context;
import java.io.File;
import java.io.FileInputStream;
import java.io.ObjectInputStream;
import java.util.Date;
import org.json.JSONArray;
import org.json.JSONObject;

public class cs
{
  private static final cs a = new cs();
  
  public static cs a()
  {
    return a;
  }
  
  public void a(gi paramgi)
  {
    if (paramgi == null)
    {
      if (ck.c()) {
        ck.a("No listener to read TLProperties from disk");
      }
      return;
    }
    if (fy.e().p() == null)
    {
      paramgi.a(null, new Exception("No App Context to write JSON to disk"));
      return;
    }
    a("TLEvents.json", "JSONArray", new ek(this, paramgi));
  }
  
  public void a(gr paramgr)
  {
    if (paramgr == null)
    {
      if (ck.c()) {
        ck.a("No listener to read TLProperties from disk");
      }
      return;
    }
    if (fy.e().p() == null)
    {
      paramgr.a(null, new Exception("No App Context to write JSON to disk"));
      return;
    }
    a("TLProperties.json", "JSONObject", new dv(this, paramgr));
  }
  
  public void a(hm paramhm)
  {
    if (paramhm == null)
    {
      if (ck.c()) {
        ck.a("No listener to read App User Attributes from disk");
      }
      return;
    }
    if (fy.e().p() == null)
    {
      paramhm.a(null, new Exception("No App Context to read App User Attributes from Disk!"));
      return;
    }
    a("TLUserAttributes.json", "JSONObject", new ey(this, paramhm));
  }
  
  public void a(String paramString, ga paramga)
  {
    Context localContext = fy.e().p();
    if (localContext == null) {
      if (paramga != null) {
        paramga.a(new Exception("No App Context to write JSON to disk"));
      }
    }
    for (;;)
    {
      return;
      Date localDate = new Date();
      paramString = new File(localContext.getCacheDir(), paramString);
      if (paramString.exists()) {
        if ((paramString.delete()) && (ck.c())) {
          ck.a("Deleted File", localDate);
        }
      }
      while (paramga != null)
      {
        paramga.a(null);
        return;
        if (ck.c()) {
          ck.a("File does not exist to delete");
        }
      }
    }
  }
  
  public void a(String paramString1, String paramString2, hj paramhj)
  {
    if (paramString1 == null)
    {
      paramString1 = new Exception("Missing fileName or listener to read from disk");
      ck.b("Reading item from disk: ", paramString1);
      paramhj.a(null, paramString1);
      return;
    }
    Object localObject = fy.e().p();
    Date localDate = new Date();
    paramString1 = new File(((Context)localObject).getCacheDir(), paramString1);
    if (paramString1.exists()) {}
    for (;;)
    {
      int i;
      try
      {
        ObjectInputStream localObjectInputStream = new ObjectInputStream(new FileInputStream(paramString1));
        localObject = localObjectInputStream.readObject();
        i = -1;
        switch (paramString2.hashCode())
        {
        case 1752376903: 
          paramhj.a(paramString1, null);
          if (ck.c()) {
            ck.a("Read item from disk: " + paramString2, localDate);
          }
          localObjectInputStream.close();
          return;
        }
      }
      catch (Exception paramString1)
      {
        ck.b("Reading file from disk: ", paramString1);
        paramhj.a(null, paramString1);
        return;
      }
      if (paramString2.equals("JSONObject"))
      {
        i = 0;
        break label297;
        if (paramString2.equals("JSONArray"))
        {
          i = 1;
          break label297;
          if (paramString2.equals("Serializable"))
          {
            i = 2;
            break label297;
            paramString1 = new JSONObject((String)localObject);
            continue;
            paramString1 = new JSONArray((String)localObject);
            continue;
            if (ck.c()) {
              ck.a("File does not exist");
            }
            paramhj.a(null, new Exception("File does not exist"));
            return;
          }
        }
      }
      label297:
      paramString1 = (String)localObject;
      switch (i)
      {
      }
      paramString1 = null;
    }
  }
  
  public void a(JSONObject paramJSONObject)
  {
    Context localContext = fy.e().p();
    if (localContext == null)
    {
      if (ck.c()) {
        ck.a("Writing Properties to Disk: No App Context to write JSON to disk");
      }
      return;
    }
    new jj(paramJSONObject, "TLProperties.json", localContext.getCacheDir(), new db(this)).execute(new Void[0]);
  }
  
  public void b()
  {
    if (ck.c()) {
      ck.a("Delete TLProperties File from disk");
    }
    a("TLProperties.json", new ei(this));
  }
  
  public void b(JSONObject paramJSONObject)
  {
    Context localContext = fy.e().p();
    if (localContext == null)
    {
      if (ck.c()) {
        ck.a("Writing User Attributes to Disk: No App Context to write JSON to disk");
      }
      return;
    }
    new jj(paramJSONObject, "TLUserAttributes.json", localContext.getCacheDir(), new er(this)).execute(new Void[0]);
  }
  
  public void c()
  {
    if (ck.c()) {
      ck.a("Delete App User Attributes From Disk");
    }
    a("TLUserAttributes.json", new fm(this));
  }
}

/* Location:
 * Qualified Name:     com.taplytics.cs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */