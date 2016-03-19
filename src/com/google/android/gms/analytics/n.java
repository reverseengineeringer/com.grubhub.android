package com.google.android.gms.analytics;

import android.app.Activity;
import android.content.Intent;
import android.text.TextUtils;
import com.google.android.gms.analytics.internal.o;
import com.google.android.gms.analytics.internal.t;
import com.google.android.gms.analytics.internal.v;
import com.google.android.gms.d.bc;
import java.util.HashMap;
import java.util.Map;

class n
  extends t
  implements f
{
  private boolean b;
  private int c;
  private long d = -1L;
  private boolean e;
  private long f;
  
  protected n(Tracker paramTracker, v paramv)
  {
    super(paramv);
  }
  
  private void c()
  {
    if ((d >= 0L) || (b))
    {
      zzhg().a(Tracker.zza(a));
      return;
    }
    zzhg().b(Tracker.zza(a));
  }
  
  public void a(long paramLong)
  {
    d = paramLong;
    c();
  }
  
  public void a(Activity paramActivity)
  {
    if ((c == 0) && (b())) {
      e = true;
    }
    c += 1;
    HashMap localHashMap;
    Tracker localTracker;
    if (b)
    {
      localObject = paramActivity.getIntent();
      if (localObject != null) {
        a.setCampaignParamsOnNextHit(((Intent)localObject).getData());
      }
      localHashMap = new HashMap();
      localHashMap.put("&t", "screenview");
      localTracker = a;
      if (Tracker.zzk(a) == null) {
        break label159;
      }
    }
    label159:
    for (Object localObject = Tracker.zzk(a).a(paramActivity);; localObject = paramActivity.getClass().getCanonicalName())
    {
      localTracker.set("&cd", (String)localObject);
      if (TextUtils.isEmpty((CharSequence)localHashMap.get("&dr")))
      {
        paramActivity = Tracker.zzp(paramActivity);
        if (!TextUtils.isEmpty(paramActivity)) {
          localHashMap.put("&dr", paramActivity);
        }
      }
      a.send(localHashMap);
      return;
    }
  }
  
  public void a(boolean paramBoolean)
  {
    b = paramBoolean;
    c();
  }
  
  public boolean a()
  {
    try
    {
      boolean bool = e;
      e = false;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void b(Activity paramActivity)
  {
    c -= 1;
    c = Math.max(0, c);
    if (c == 0) {
      f = zzhP().b();
    }
  }
  
  boolean b()
  {
    return zzhP().b() >= f + Math.max(1000L, d);
  }
  
  protected void zzhn() {}
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */