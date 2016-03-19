package com.paypal.android.sdk;

import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Random;
import java.util.Set;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.apache.http.Header;
import org.apache.http.client.HttpClient;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.entity.StringEntity;
import org.apache.http.message.BasicHeader;

public class dp
  extends dk
{
  private static final String a = dp.class.getSimpleName();
  private final ck b;
  private final String c;
  private final ea d;
  private final as e;
  private final as f;
  private final ef g;
  private final ScheduledExecutorService h;
  private final ConcurrentLinkedQueue i;
  
  public dp(ck paramck, String paramString1, ef paramef, ea paramea, int paramInt, String paramString2, String paramString3, boolean paramBoolean)
  {
    b = paramck;
    c = paramString1;
    g = paramef;
    d = paramea;
    paramck = dl.a();
    boolean bool2 = cj.d(paramString1);
    if ((bool2) && (!paramBoolean))
    {
      paramBoolean = true;
      if (bool2) {
        break label125;
      }
    }
    for (;;)
    {
      e = ao.a(90000, paramBoolean, bool1, paramString2);
      e.a(paramck);
      f = ao.a(90000, false, false, paramString3);
      f.a(paramck);
      h = Executors.newSingleThreadScheduledExecutor();
      i = new ConcurrentLinkedQueue();
      return;
      paramBoolean = false;
      break;
      label125:
      bool1 = false;
    }
  }
  
  private static String a(String paramString1, String paramString2)
  {
    String str = paramString1;
    if (paramString2 != null)
    {
      str = paramString1;
      if (!paramString1.endsWith("/")) {
        str = paramString1 + "/";
      }
      str = str + paramString2;
    }
    return str;
  }
  
  private void a(dz paramdz, String paramString, as paramas, ax paramax)
  {
    switch (ds.a[paramdz.i().b().ordinal()])
    {
    default: 
      throw new RuntimeException(paramdz.i().b() + " not supported.");
    case 1: 
      paramas.a(b.f(), a(paramString, paramdz.g()), a(paramdz, null), null, paramax);
      return;
    case 2: 
      String str = paramdz.g();
      StringEntity localStringEntity = new StringEntity(str, Charset.forName("UTF-8").name());
      paramas.a(b.f(), paramString, a(paramdz, str), localStringEntity, null, paramax);
      return;
    }
    e.a(b.f(), a(paramString, paramdz.g()), a(paramdz, null), new dt(this, paramdz, (byte)0));
  }
  
  private Header[] a(dz paramdz, String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = paramdz.j().entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      localArrayList.add(new BasicHeader((String)localEntry.getKey(), (String)localEntry.getValue()));
    }
    if (paramString != null) {}
    try
    {
      localArrayList.add(ft.a(g.c(), localArrayList, paramString));
      paramString = (Header[])localArrayList.toArray(new Header[0]);
      int k = paramString.length;
      int j = 0;
      if (j < k)
      {
        localArrayList = paramString[j];
        if (paramdz.a()) {
          new StringBuilder().append(paramdz.o()).append(" header: ").append(localArrayList.getName()).append("=").append(localArrayList.getValue());
        }
        for (;;)
        {
          j += 1;
          break;
          new StringBuilder().append(paramdz.o()).append(" header: ").append(localArrayList.getName()).append("=").append(localArrayList.getValue());
        }
      }
      return paramString;
    }
    catch (UnsupportedEncodingException paramString)
    {
      for (;;) {}
    }
    catch (NoSuchAlgorithmException paramString)
    {
      for (;;) {}
    }
    catch (InvalidKeyException paramString)
    {
      for (;;) {}
    }
  }
  
  final void a()
  {
    e.a(b.f(), true);
    f.a(b.f(), true);
  }
  
  final void b()
  {
    e.a().getConnectionManager().closeIdleConnections(1L, TimeUnit.MILLISECONDS);
    f.a().getConnectionManager().closeIdleConnections(1L, TimeUnit.MILLISECONDS);
  }
  
  public final boolean b(dz paramdz)
  {
    if (!b.a())
    {
      paramdz.a(new an(am.b.toString()));
      return false;
    }
    dz.l();
    String str = paramdz.a(paramdz.i());
    if (paramdz.a())
    {
      new StringBuilder().append(paramdz.o()).append(" endpoint: ").append(str);
      new StringBuilder().append(paramdz.o()).append(" request: ").append(paramdz.g());
    }
    try
    {
      if (paramdz.a())
      {
        i.offer(new dq(this, paramdz, str));
        int j = new Random().nextInt(190) + 10;
        new StringBuilder("Delaying tracking execution for ").append(j).append(" seconds");
        h.schedule(new dr(this), j, TimeUnit.SECONDS);
      }
      for (;;)
      {
        return true;
        new StringBuilder().append(paramdz.o()).append(" endpoint: ").append(str);
        new StringBuilder().append(paramdz.o()).append(" request: ").append(paramdz.g());
        break;
        a(paramdz, str, e, new dt(this, paramdz, (byte)0));
      }
      return false;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      paramdz.a(new an(am.d, localUnsupportedEncodingException));
    }
  }
}

/* Location:
 * Qualified Name:     com.paypal.android.sdk.dp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */