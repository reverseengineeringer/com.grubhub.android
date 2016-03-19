package com.google.android.gms.analytics.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.text.TextUtils;
import com.google.android.gms.d.bc;

public class l
  extends t
{
  private SharedPreferences a;
  private long b;
  private long c = -1L;
  private final m d = new m(this, "monitoring", zzhR().G(), null);
  
  protected l(v paramv)
  {
    super(paramv);
  }
  
  public long a()
  {
    zzhO();
    zzia();
    long l;
    if (b == 0L)
    {
      l = a.getLong("first_run", 0L);
      if (l == 0L) {
        break label46;
      }
    }
    for (b = l;; b = l)
    {
      return b;
      label46:
      l = zzhP().a();
      SharedPreferences.Editor localEditor = a.edit();
      localEditor.putLong("first_run", l);
      if (!localEditor.commit()) {
        zzaW("Failed to commit first run time");
      }
    }
  }
  
  public void a(String paramString)
  {
    zzhO();
    zzia();
    SharedPreferences.Editor localEditor = a.edit();
    if (TextUtils.isEmpty(paramString)) {
      localEditor.remove("installation_campaign");
    }
    for (;;)
    {
      if (!localEditor.commit()) {
        zzaW("Failed to commit campaign data");
      }
      return;
      localEditor.putString("installation_campaign", paramString);
    }
  }
  
  public n b()
  {
    return new n(zzhP(), a());
  }
  
  public long c()
  {
    zzhO();
    zzia();
    if (c == -1L) {
      c = a.getLong("last_dispatch", 0L);
    }
    return c;
  }
  
  public void d()
  {
    zzhO();
    zzia();
    long l = zzhP().a();
    SharedPreferences.Editor localEditor = a.edit();
    localEditor.putLong("last_dispatch", l);
    localEditor.apply();
    c = l;
  }
  
  public String e()
  {
    zzhO();
    zzia();
    String str = a.getString("installation_campaign", null);
    if (TextUtils.isEmpty(str)) {
      return null;
    }
    return str;
  }
  
  public m f()
  {
    return d;
  }
  
  protected void zzhn()
  {
    a = getContext().getSharedPreferences("com.google.android.gms.analytics.prefs", 0);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.internal.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */