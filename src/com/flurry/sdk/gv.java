package com.flurry.sdk;

import android.widget.Toast;

public class gv
  extends in
  implements jf.a
{
  static String a = "http://data.flurry.com/aap.do";
  static String b = "https://data.flurry.com/aap.do";
  private static final String g = gv.class.getSimpleName();
  private String h;
  private boolean i;
  
  public gv()
  {
    this(null);
  }
  
  public gv(in.a parama)
  {
    super("Analytics", gv.class.getSimpleName());
    f = "AnalyticsData_";
    h();
    a(parama);
  }
  
  private void b(String paramString)
  {
    if ((paramString != null) && (!paramString.endsWith(".do"))) {
      ib.a(5, g, "overriding analytics agent report URL without an endpoint, are you sure?");
    }
    h = paramString;
  }
  
  private void h()
  {
    je localje = je.a();
    i = ((Boolean)localje.a("UseHttps")).booleanValue();
    localje.a("UseHttps", this);
    ib.a(4, g, "initSettings, UseHttps = " + i);
    String str = (String)localje.a("ReportUrl");
    localje.a("ReportUrl", this);
    b(str);
    ib.a(4, g, "initSettings, ReportUrl = " + str);
  }
  
  public void a()
  {
    je.a().b("UseHttps", this);
    je.a().b("ReportUrl", this);
  }
  
  public void a(String paramString, Object paramObject)
  {
    int j = -1;
    switch (paramString.hashCode())
    {
    }
    for (;;)
    {
      switch (j)
      {
      default: 
        ib.a(6, g, "onSettingUpdate internal error!");
        return;
        if (paramString.equals("UseHttps"))
        {
          j = 0;
          continue;
          if (paramString.equals("ReportUrl")) {
            j = 1;
          }
        }
        break;
      }
    }
    i = ((Boolean)paramObject).booleanValue();
    ib.a(4, g, "onSettingUpdate, UseHttps = " + i);
    return;
    paramString = (String)paramObject;
    b(paramString);
    ib.a(4, g, "onSettingUpdate, ReportUrl = " + paramString);
  }
  
  protected void a(String paramString1, String paramString2, final int paramInt)
  {
    a(new jp()
    {
      public void a()
      {
        if (paramInt == 200) {
          fu.a().f();
        }
      }
    });
    super.a(paramString1, paramString2, paramInt);
  }
  
  protected void a(byte[] paramArrayOfByte, final String paramString1, final String paramString2)
  {
    String str = b();
    ib.a(4, g, "FlurryDataSender: start upload data " + paramArrayOfByte + " with id = " + paramString1 + " to " + str);
    ii localii = new ii();
    localii.a(str);
    localii.a(100000);
    localii.a(ij.a.c);
    localii.a("Content-Type", "application/octet-stream");
    localii.a(new ir());
    localii.a(paramArrayOfByte);
    localii.a(new ii.a()
    {
      public void a(ii<byte[], Void> paramAnonymousii, Void paramAnonymousVoid)
      {
        final int i = paramAnonymousii.f();
        if (i > 0)
        {
          ib.e(gv.c(), "Analytics report sent.");
          ib.a(3, gv.c(), "FlurryDataSender: report " + paramString1 + " sent. HTTP response: " + i);
          if ((ib.c() <= 3) && (ib.d())) {
            hn.a().a(new Runnable()
            {
              public void run()
              {
                Toast.makeText(hn.a().c(), "SD HTTP Response Code: " + i, 0).show();
              }
            });
          }
          a(paramString1, paramString2, i);
          gv.a(gv.this);
          return;
        }
        gv.a(gv.this, paramString1, paramString2);
      }
    });
    hl.a().a(this, localii);
  }
  
  String b()
  {
    if (h != null) {
      return h;
    }
    if (i) {
      return b;
    }
    return a;
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.gv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */