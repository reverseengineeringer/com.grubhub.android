package com.taplytics;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.SystemClock;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.ImageView;
import com.taplytics.sdk.TaplyticsDelayLoadListener;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class gq
{
  private static gq t;
  boolean a = false;
  long b = -1L;
  long c = -1L;
  private boolean d;
  private boolean e;
  private boolean f = false;
  private boolean g;
  private boolean h = false;
  private boolean i = true;
  private boolean j = false;
  private Class k = null;
  private HashMap l = new HashMap();
  private ImageView m;
  private b n = b.alligator;
  private String o;
  private String p;
  private JSONObject q;
  private jo r;
  private jw s;
  private ViewGroup u = null;
  private Map<String, byte[]> v = new HashMap();
  private int w = 500;
  private TaplyticsDelayLoadListener x;
  private int y;
  
  public gq()
  {
    try
    {
      y = epgetPackageManagergetApplicationInfoepgetPackageName128icon;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      for (;;)
      {
        try
        {
          k = Class.forName("com.google.android.youtube.player.YouTubePlayerView");
          return;
        }
        catch (Exception localException) {}
        localNameNotFoundException = localNameNotFoundException;
        ck.b("Name not found", localNameNotFoundException);
      }
    }
  }
  
  private View.OnTouchListener A()
  {
    return new gt(this);
  }
  
  private JSONArray a(float paramFloat1, float paramFloat2, ViewGroup paramViewGroup)
  {
    localJSONArray = new JSONArray();
    try
    {
      paramViewGroup = jk.a(paramFloat1, paramFloat2, paramViewGroup).iterator();
      while (paramViewGroup.hasNext()) {
        localJSONArray.put(jk.a((View)paramViewGroup.next()));
      }
      return localJSONArray;
    }
    catch (JSONException paramViewGroup)
    {
      ck.b("Err: vw jsn. ", paramViewGroup);
    }
  }
  
  private void b(Activity paramActivity, Drawable paramDrawable, int paramInt)
  {
    if (paramActivity != null) {}
    try
    {
      if ((!h) && (!iz.a(kb.cat)))
      {
        paramActivity.runOnUiThread(new ha(this, (ViewGroup)paramActivity.findViewById(16908290).getRootView(), paramDrawable));
        new Handler().postDelayed(new hb(this), paramInt);
      }
      return;
    }
    catch (Exception paramActivity)
    {
      ck.b("error making delay screen", paramActivity);
    }
  }
  
  private void b(TaplyticsDelayLoadListener paramTaplyticsDelayLoadListener, int paramInt)
  {
    try
    {
      if (!h)
      {
        if (iz.a(kb.cat)) {
          return;
        }
        x = paramTaplyticsDelayLoadListener;
        x.startDelay();
        iz.d().schedule(new gz(this), paramInt, TimeUnit.MILLISECONDS);
        return;
      }
    }
    catch (Exception paramTaplyticsDelayLoadListener)
    {
      ck.b("Problem delaying loading", paramTaplyticsDelayLoadListener);
    }
  }
  
  public static gq h()
  {
    if (t != null) {
      return t;
    }
    t = new gq();
    return t;
  }
  
  private void x()
  {
    try
    {
      if (b == -1L)
      {
        Rect localRect = new Rect();
        fy.e().q().getWindow().getDecorView().getWindowVisibleDisplayFrame(localRect);
        b = top;
      }
      return;
    }
    catch (Exception localException)
    {
      ck.b("Error setting statusbar offset", localException);
    }
  }
  
  private void y()
  {
    if ((SystemClock.elapsedRealtime() < c) && (!h))
    {
      h = true;
      iz.d().schedule(new hf(this), c - SystemClock.elapsedRealtime(), TimeUnit.MILLISECONDS);
    }
    while (h) {
      return;
    }
    if (x != null)
    {
      x.delayComplete();
      x = null;
      h = true;
    }
    r();
  }
  
  private void z()
  {
    try
    {
      if ((fy.e().g()) && (fy.e().q() != null) && (fy.e().i())) {
        fy.e().q().runOnUiThread(new hg(this));
      }
      return;
    }
    catch (Exception localException)
    {
      ck.b(getClass().toString(), localException);
    }
  }
  
  public void a(Activity paramActivity, Drawable paramDrawable, int paramInt)
  {
    c = -1L;
    b(paramActivity, paramDrawable, paramInt);
  }
  
  public void a(Activity paramActivity, Drawable paramDrawable, int paramInt1, int paramInt2)
  {
    c = (SystemClock.elapsedRealtime() + paramInt2);
    b(paramActivity, paramDrawable, paramInt1);
  }
  
  public void a(ViewGroup paramViewGroup)
  {
    boolean bool2 = false;
    u = paramViewGroup;
    j = false;
    jk.a(paramViewGroup, false, new AtomicBoolean(false));
    boolean bool1 = bool2;
    if (fy.e().q() != null)
    {
      bool1 = bool2;
      if (!fy.e().q().getIntent().getBooleanExtra("TLRefreshed", false)) {
        bool1 = true;
      }
    }
    a = bool1;
    for (;;)
    {
      try
      {
        if (fy.e().k() == null) {
          continue;
        }
        j();
        u.post(new he(this));
      }
      catch (Exception paramViewGroup)
      {
        ck.b("setcurrentviewgroup err", paramViewGroup);
        continue;
        p();
        continue;
      }
      if (!g) {
        continue;
      }
      k();
      if ((!j) && (!f)) {
        m();
      }
      return;
      if (fy.e().d().e() != g.alligator) {
        fy.e().d().a(new gs(this));
      }
    }
  }
  
  public void a(TaplyticsDelayLoadListener paramTaplyticsDelayLoadListener, int paramInt)
  {
    c = -1L;
    b(paramTaplyticsDelayLoadListener, paramInt);
  }
  
  public void a(TaplyticsDelayLoadListener paramTaplyticsDelayLoadListener, int paramInt1, int paramInt2)
  {
    c = (SystemClock.elapsedRealtime() + paramInt2);
    b(paramTaplyticsDelayLoadListener, paramInt1);
  }
  
  public void a(String paramString1, String paramString2)
  {
    if (fy.e().g())
    {
      if ((!paramString2.equals(p)) || (!paramString1.equals(o)))
      {
        o = paramString1;
        p = paramString2;
        a = true;
        n = b.alligator;
        z();
      }
      k();
    }
  }
  
  public void a(String paramString, byte[] paramArrayOfByte)
  {
    v.put(paramString, paramArrayOfByte);
  }
  
  public void a(boolean paramBoolean)
  {
    g = paramBoolean;
  }
  
  public boolean a()
  {
    return g;
  }
  
  public Class b()
  {
    return k;
  }
  
  public void b(boolean paramBoolean)
  {
    i = paramBoolean;
  }
  
  public HashMap c()
  {
    return l;
  }
  
  public void c(boolean paramBoolean)
  {
    j = paramBoolean;
  }
  
  public b d()
  {
    return n;
  }
  
  public String e()
  {
    return o;
  }
  
  public String f()
  {
    return p;
  }
  
  public JSONObject g()
  {
    return q;
  }
  
  public ViewGroup i()
  {
    return u;
  }
  
  public void j()
  {
    try
    {
      if ((fy.e().g()) && (jk.a(u)) && (p != null) && (fy.e().j()) && (!iz.a(kb.beaver))) {
        z();
      }
      jk.c(u);
      y();
      return;
    }
    catch (JSONException localJSONException)
    {
      ck.b("Err: setprp", localJSONException);
    }
  }
  
  public void k()
  {
    try
    {
      if ((fy.e().g()) && (fy.e().q() != null) && (fy.e().i()) && (i))
      {
        fy.e().q().runOnUiThread(new hh(this));
        if (n.equals(b.alligator)) {
          g = true;
        }
      }
      return;
    }
    catch (Exception localException)
    {
      ck.b("app bd", localException);
    }
  }
  
  public void l()
  {
    n = b.ape;
    k();
  }
  
  public void m()
  {
    if ((fy.e().q() != null) && (fy.e().i())) {
      fy.e().q().runOnUiThread(new hi(this));
    }
  }
  
  public void n()
  {
    if ((fy.e().q() != null) && (fy.e().i())) {
      fy.e().q().runOnUiThread(new hk(this));
    }
  }
  
  public void o()
  {
    s = null;
  }
  
  public void p()
  {
    try
    {
      if ((fy.e().g()) && (fy.e().q() != null) && (fy.e().i())) {
        fy.e().q().runOnUiThread(new gy(this));
      }
      return;
    }
    catch (Exception localException)
    {
      ck.b("rem bd", localException);
    }
  }
  
  public Map<String, byte[]> q()
  {
    HashMap localHashMap = new HashMap(v);
    v.clear();
    return localHashMap;
  }
  
  public void r()
  {
    if ((fy.e().q() != null) && (fy.e().i())) {
      fy.e().q().runOnUiThread(new hc(this));
    }
  }
  
  public boolean s()
  {
    return i;
  }
  
  public int t()
  {
    return y;
  }
  
  public long u()
  {
    return b;
  }
  
  public void v()
  {
    f = true;
    n();
  }
  
  public void w()
  {
    f = false;
    m();
  }
}

/* Location:
 * Qualified Name:     com.taplytics.gq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */