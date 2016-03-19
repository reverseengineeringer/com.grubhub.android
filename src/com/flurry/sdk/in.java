package com.flurry.sdk;

import android.content.Context;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public abstract class in
{
  private hw<hg> a = new hw()
  {
    public void a(hg paramAnonymoushg)
    {
      ib.a(4, c, "onNetworkStateChanged : isNetworkEnable = " + a);
      if (a) {
        e();
      }
    }
  };
  protected final String c;
  Set<String> d = new HashSet();
  ip e;
  protected String f = "defaultDataKey_";
  
  public in(String paramString1, String paramString2)
  {
    c = paramString2;
    hx.a().a("com.flurry.android.sdk.NetworkStateEvent", a);
    a(paramString1);
  }
  
  public String a(String paramString1, String paramString2)
  {
    return f + paramString1 + "_" + paramString2;
  }
  
  protected void a(final in.a parama)
  {
    a(new jp()
    {
      public void a()
      {
        g();
        if (parama != null) {
          parama.a();
        }
      }
    });
  }
  
  protected void a(jp paramjp)
  {
    hn.a().b(paramjp);
  }
  
  protected void a(final String paramString)
  {
    a(new jp()
    {
      public void a()
      {
        e = new ip(paramString);
      }
    });
  }
  
  protected void a(final String paramString1, final String paramString2, int paramInt)
  {
    a(new jp()
    {
      public void a()
      {
        if (!e.a(paramString1, paramString2)) {
          ib.a(6, c, "Internal error. Block wasn't deleted with id = " + paramString1);
        }
        if (!d.remove(paramString1)) {
          ib.a(6, c, "Internal error. Block with id = " + paramString1 + " was not in progress state");
        }
      }
    });
  }
  
  protected abstract void a(byte[] paramArrayOfByte, String paramString1, String paramString2);
  
  public void a(byte[] paramArrayOfByte, String paramString1, String paramString2, in.a parama)
  {
    if ((paramArrayOfByte == null) || (paramArrayOfByte.length == 0))
    {
      ib.a(6, c, "Report that has to be sent is EMPTY or NULL");
      return;
    }
    c(paramArrayOfByte, paramString1, paramString2);
    a(parama);
  }
  
  protected void b(final String paramString1, String paramString2)
  {
    a(new jp()
    {
      public void a()
      {
        if (!d.remove(paramString1)) {
          ib.a(6, c, "Internal error. Block with id = " + paramString1 + " was not in progress state");
        }
      }
    });
  }
  
  public void b(byte[] paramArrayOfByte, String paramString1, String paramString2)
  {
    a(paramArrayOfByte, paramString1, paramString2, null);
  }
  
  protected void c(String paramString1, String paramString2)
  {
    if (!e.a(paramString1, paramString2)) {
      ib.a(6, c, "Internal error. Block wasn't deleted with id = " + paramString1);
    }
    if (!d.remove(paramString1)) {
      ib.a(6, c, "Internal error. Block with id = " + paramString1 + " was not in progress state");
    }
  }
  
  protected void c(final byte[] paramArrayOfByte, final String paramString1, final String paramString2)
  {
    a(new jp()
    {
      public void a()
      {
        d(paramArrayOfByte, paramString1, paramString2);
      }
    });
  }
  
  public int d()
  {
    return d.size();
  }
  
  protected void d(byte[] paramArrayOfByte, String paramString1, String paramString2)
  {
    paramString1 = a(paramString1, paramString2);
    paramArrayOfByte = new io(paramArrayOfByte);
    paramString2 = paramArrayOfByte.a();
    new hu(hn.a().c().getFileStreamPath(io.a(paramString2)), ".yflurrydatasenderblock.", 1, new iy()
    {
      public iv<io> a(int paramAnonymousInt)
      {
        return new io.a();
      }
    }).a(paramArrayOfByte);
    ib.a(5, c, "Saving Block File " + paramString2 + " at " + hn.a().c().getFileStreamPath(io.a(paramString2)));
    e.a(paramArrayOfByte, paramString1);
  }
  
  protected void e()
  {
    a(null);
  }
  
  protected boolean f()
  {
    return d() <= 5;
  }
  
  protected void g()
  {
    if (!hh.a().c())
    {
      ib.a(5, c, "Reports were not sent! No Internet connection!");
      return;
    }
    label59:
    String str1;
    do
    {
      Object localObject1;
      do
      {
        localObject1 = e.a();
        if ((localObject1 == null) || (((List)localObject1).isEmpty()))
        {
          ib.a(4, c, "No more reports to send.");
          return;
        }
        localObject1 = ((List)localObject1).iterator();
      } while (!((Iterator)localObject1).hasNext());
      str1 = (String)((Iterator)localObject1).next();
    } while (!f());
    List localList = e.c(str1);
    ib.a(4, c, "Number of not sent blocks = " + localList.size());
    int i = 0;
    label130:
    String str2;
    if (i < localList.size())
    {
      str2 = (String)localList.get(i);
      if (!d.contains(str2)) {
        break label175;
      }
    }
    for (;;)
    {
      i += 1;
      break label130;
      break label59;
      label175:
      if (!f()) {
        break;
      }
      Object localObject2 = (io)new hu(hn.a().c().getFileStreamPath(io.a(str2)), ".yflurrydatasenderblock.", 1, new iy()
      {
        public iv<io> a(int paramAnonymousInt)
        {
          return new io.a();
        }
      }).a();
      if (localObject2 == null)
      {
        ib.a(6, c, "Internal ERROR! Cannot read!");
        e.a(str2, str1);
      }
      else
      {
        localObject2 = ((io)localObject2).b();
        if ((localObject2 == null) || (localObject2.length == 0))
        {
          ib.a(6, c, "Internal ERROR! Report is empty!");
          e.a(str2, str1);
        }
        else
        {
          ib.a(5, c, "Reading block info " + str2);
          d.add(str2);
          a((byte[])localObject2, str2, str1);
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.in
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */