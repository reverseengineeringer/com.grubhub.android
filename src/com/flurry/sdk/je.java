package com.flurry.sdk;

import android.location.Criteria;
import android.location.Location;

public class je
  extends jf
{
  public static final Integer a = Integer.valueOf(202);
  public static final Integer b = Integer.valueOf(5);
  public static final Integer c = Integer.valueOf(5);
  public static final Integer d = Integer.valueOf(0);
  public static final String e = null;
  public static final Boolean f = Boolean.valueOf(true);
  public static final Boolean g = Boolean.valueOf(true);
  public static final String h = null;
  public static final Boolean i = Boolean.valueOf(true);
  public static final Criteria j = null;
  public static final Location k = null;
  public static final Long l = Long.valueOf(10000L);
  public static final Boolean m = Boolean.valueOf(true);
  public static final Long n = null;
  public static final Byte o = Byte.valueOf((byte)-1);
  public static final Boolean p = Boolean.valueOf(false);
  public static final String q = null;
  private static je r;
  
  private je()
  {
    c();
  }
  
  public static je a()
  {
    try
    {
      if (r == null) {
        r = new je();
      }
      je localje = r;
      return localje;
    }
    finally {}
  }
  
  public static void b()
  {
    try
    {
      if (r != null) {
        r.d();
      }
      r = null;
      return;
    }
    finally {}
  }
  
  public void c()
  {
    a("AgentVersion", a);
    a("ReleaseMajorVersion", b);
    a("ReleaseMinorVersion", c);
    a("ReleasePatchVersion", d);
    a("ReleaseBetaVersion", "");
    a("VersionName", e);
    a("CaptureUncaughtExceptions", f);
    a("UseHttps", g);
    a("ReportUrl", h);
    a("ReportLocation", i);
    a("ExplicitLocation", k);
    a("ContinueSessionMillis", l);
    a("LogEvents", m);
    a("Age", n);
    a("Gender", o);
    a("UserId", "");
    a("ProtonEnabled", p);
    a("ProtonConfigUrl", q);
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.je
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */