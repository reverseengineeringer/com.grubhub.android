package com.crashlytics.android;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import com.crashlytics.android.internal.Z;
import com.crashlytics.android.internal.ab;
import com.crashlytics.android.internal.av;
import com.crashlytics.android.internal.ax;
import com.crashlytics.android.internal.ay;
import com.crashlytics.android.internal.q;
import com.crashlytics.android.internal.r;
import com.crashlytics.android.internal.v;
import java.io.Closeable;
import java.io.InputStream;

abstract class a
  extends Z
{
  public a(String paramString1, String paramString2, av paramav, ax paramax)
  {
    super(paramString1, paramString2, paramav, paramax);
  }
  
  private static ay a(ay paramay, b paramb)
  {
    ay localay = paramay.b("app[identifier]", b).b("app[name]", f).b("app[display_version]", c).b("app[build_version]", d).a("app[source]", Integer.valueOf(g)).b("app[minimum_sdk_version]", h).b("app[built_sdk_version]", i);
    if (!ab.e(e)) {
      localay.b("app[instance_identifier]", e);
    }
    Object localObject;
    if (j != null)
    {
      localObject = null;
      paramay = null;
    }
    try
    {
      InputStream localInputStream = v.a().getContext().getResources().openRawResource(j.b);
      paramay = localInputStream;
      localObject = localInputStream;
      localay.b("app[icon][hash]", j.a).a("app[icon][data]", "icon.png", "application/octet-stream", localInputStream).a("app[icon][width]", Integer.valueOf(j.c)).a("app[icon][height]", Integer.valueOf(j.d));
      ab.a(localInputStream, "Failed to close app icon InputStream.");
      return localay;
    }
    catch (Resources.NotFoundException localNotFoundException)
    {
      localObject = paramay;
      v.a().b().a("Crashlytics", "Failed to find app icon with resource ID: " + j.b, localNotFoundException);
      ab.a(paramay, "Failed to close app icon InputStream.");
      return localay;
    }
    finally
    {
      ab.a((Closeable)localObject, "Failed to close app icon InputStream.");
    }
  }
  
  public final boolean a(b paramb)
  {
    ay localay = a(b().a("X-CRASHLYTICS-API-KEY", a).a("X-CRASHLYTICS-API-CLIENT-TYPE", "android").a("X-CRASHLYTICS-API-CLIENT-VERSION", v.a().getVersion()), paramb);
    v.a().b().a("Crashlytics", "Sending app info to " + a());
    if (j != null)
    {
      v.a().b().a("Crashlytics", "App icon hash is " + j.a);
      v.a().b().a("Crashlytics", "App icon size is " + j.c + "x" + j.d);
    }
    int i = localay.b();
    if ("POST".equals(localay.d())) {}
    for (paramb = "Create";; paramb = "Update")
    {
      v.a().b().a("Crashlytics", paramb + " app request ID: " + localay.a("X-REQUEST-ID"));
      v.a().b().a("Crashlytics", "Result was " + i);
      if (r.a(i) != 0) {
        break;
      }
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */