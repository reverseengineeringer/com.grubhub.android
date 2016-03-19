package com.google.android.gms.d;

import android.accounts.Account;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.appdatasearch.DocumentSection;
import com.google.android.gms.appdatasearch.UsageInfo;
import com.google.android.gms.appdatasearch.b;
import com.google.android.gms.appdatasearch.c;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class ae
{
  private static DocumentSection a(String paramString, bl parambl)
  {
    paramString = new b(paramString).a(true).b(paramString).a("blob").a();
    return new DocumentSection(ek.a(parambl), paramString);
  }
  
  public static UsageInfo a(com.google.android.gms.b.a parama, long paramLong, String paramString, int paramInt)
  {
    boolean bool = false;
    Bundle localBundle = new Bundle();
    localBundle.putAll(parama.a());
    Object localObject = localBundle.getBundle("object");
    int i;
    if (((Bundle)localObject).containsKey("id"))
    {
      parama = Uri.parse(((Bundle)localObject).getString("id"));
      String str1 = ((Bundle)localObject).getString("name");
      String str2 = ((Bundle)localObject).getString("type");
      localObject = af.a(paramString, Uri.parse(((Bundle)localObject).getString("url")));
      parama = UsageInfo.a((Intent)localObject, str1, parama, str2, null);
      if (localBundle.containsKey(".private:ssbContext"))
      {
        parama.a(DocumentSection.a(localBundle.getByteArray(".private:ssbContext")));
        localBundle.remove(".private:ssbContext");
      }
      if (localBundle.containsKey(".private:accountName"))
      {
        parama.a(new Account(localBundle.getString(".private:accountName"), "com.google"));
        localBundle.remove(".private:accountName");
      }
      if ((!localBundle.containsKey(".private:isContextOnly")) || (!localBundle.getBoolean(".private:isContextOnly"))) {
        break label290;
      }
      i = 4;
      localBundle.remove(".private:isContextOnly");
    }
    for (;;)
    {
      if (localBundle.containsKey(".private:isDeviceOnly"))
      {
        bool = localBundle.getBoolean(".private:isDeviceOnly", false);
        localBundle.remove(".private:isDeviceOnly");
      }
      parama.a(a(".private:action", a(localBundle)));
      return new c().a(UsageInfo.a(paramString, (Intent)localObject)).a(paramLong).a(i).a(parama.a()).a(bool).b(paramInt).a();
      parama = null;
      break;
      label290:
      i = 0;
    }
  }
  
  static bl a(Bundle paramBundle)
  {
    bl localbl = new bl();
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = paramBundle.keySet().iterator();
    if (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      Object localObject = paramBundle.get(str);
      bk localbk = new bk();
      a = str;
      b = new bm();
      if ((localObject instanceof String)) {
        b.b = ((String)localObject);
      }
      for (;;)
      {
        localArrayList.add(localbk);
        break;
        if ((localObject instanceof Bundle)) {
          b.e = a((Bundle)localObject);
        } else {
          Log.e("AppDataSearchClient", "Unsupported value: " + localObject);
        }
      }
    }
    if (paramBundle.containsKey("type")) {
      a = paramBundle.getString("type");
    }
    b = ((bk[])localArrayList.toArray(new bk[localArrayList.size()]));
    return localbl;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.d.ae
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */