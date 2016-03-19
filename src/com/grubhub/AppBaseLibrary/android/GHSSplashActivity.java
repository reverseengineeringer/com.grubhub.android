package com.grubhub.AppBaseLibrary.android;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.support.v4.content.o;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.AnimationUtils;
import android.widget.TextView;
import com.grubhub.AppBaseLibrary.android.dataServices.a.i;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSFilterSortCriteria;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIUserAuthDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.pastOrders.GHSIPastOrderListDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.e;
import com.grubhub.AppBaseLibrary.android.welcome.GHSWelcomeActivity;
import java.util.ArrayList;

public class GHSSplashActivity
  extends GHSBaseActivity
{
  private String[] d;
  private Handler e;
  private BroadcastReceiver f;
  private boolean g;
  private l h;
  private boolean i;
  private boolean j;
  private boolean k;
  private boolean l;
  private boolean m;
  private boolean n;
  private boolean o;
  private boolean p;
  private com.grubhub.AppBaseLibrary.android.dataServices.a.a.a q;
  private com.grubhub.AppBaseLibrary.android.dataServices.a.i.b r;
  private com.grubhub.AppBaseLibrary.android.dataServices.a.f.c s;
  private com.grubhub.AppBaseLibrary.android.dataServices.a.e.c t;
  private com.grubhub.AppBaseLibrary.android.dataServices.a.c.b u;
  private com.grubhub.AppBaseLibrary.android.dataServices.a.h.b v;
  private Uri w;
  private String x;
  
  private void h()
  {
    if ((GHSApplication.b(this)) && (com.grubhub.AppBaseLibrary.android.utils.f.b(com.grubhub.AppBaseLibrary.android.utils.a.a.b(this))))
    {
      j();
      return;
    }
    if (d != null)
    {
      i();
      return;
    }
    l = true;
    m = true;
    n = true;
    o = true;
    p = true;
    l();
  }
  
  private void i()
  {
    if ((d != null) && (d.length == 2) && ((q == null) || (!q.h())))
    {
      q = new com.grubhub.AppBaseLibrary.android.dataServices.a.a.a(this, d[0], d[1], null, null, new i()
      {
        public void a()
        {
          GHSSplashActivity.a(GHSSplashActivity.this, null);
        }
      });
      q.a(new e()
      {
        public void a(GHSIUserAuthDataModel paramAnonymousGHSIUserAuthDataModel)
        {
          GHSSplashActivity.a(GHSSplashActivity.this, null);
          GHSApplication.l();
          GHSSplashActivity.e(GHSSplashActivity.this);
        }
      });
      q.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.d()
      {
        public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
        {
          GHSSplashActivity.b(GHSSplashActivity.this);
        }
      });
      q.a(false);
      q.a();
    }
  }
  
  private void j()
  {
    if ((!l) && ((r == null) || (!r.h())))
    {
      r = new com.grubhub.AppBaseLibrary.android.dataServices.a.i.b(this, true, null, new i()
      {
        public void a()
        {
          GHSSplashActivity.b(GHSSplashActivity.this, true);
          GHSSplashActivity.a(GHSSplashActivity.this, null);
          GHSSplashActivity.d(GHSSplashActivity.this);
        }
      });
      r.a();
    }
    if ((!m) && ((s == null) || (!s.h())))
    {
      s = new com.grubhub.AppBaseLibrary.android.dataServices.a.f.c(this, true, null, new i()
      {
        public void a()
        {
          GHSSplashActivity.c(GHSSplashActivity.this, true);
          GHSSplashActivity.a(GHSSplashActivity.this, null);
          GHSSplashActivity.d(GHSSplashActivity.this);
        }
      });
      s.a();
    }
    Object localObject = GHSApplication.a().b().N();
    if (localObject != null)
    {
      localObject = ((GHSIUserAuthDataModel)localObject).getUdid();
      if ((n) || (localObject == null)) {
        break label283;
      }
      if ((t == null) || (!t.h()))
      {
        t = new com.grubhub.AppBaseLibrary.android.dataServices.a.e.c(this, (String)localObject, true, false, null, new i()
        {
          public void a()
          {
            GHSSplashActivity.d(GHSSplashActivity.this, true);
            GHSSplashActivity.a(GHSSplashActivity.this, null);
            GHSSplashActivity.d(GHSSplashActivity.this);
          }
        });
        t.a(new e()
        {
          public void a(GHSIPastOrderListDataModel paramAnonymousGHSIPastOrderListDataModel)
          {
            paramAnonymousGHSIPastOrderListDataModel = com.grubhub.AppBaseLibrary.android.utils.d.a(paramAnonymousGHSIPastOrderListDataModel.getPastOrders(), null);
            if ((paramAnonymousGHSIPastOrderListDataModel != null) && (!paramAnonymousGHSIPastOrderListDataModel.isEmpty()))
            {
              GHSSplashActivity.a(GHSSplashActivity.this, new com.grubhub.AppBaseLibrary.android.dataServices.a.h.b(GHSSplashActivity.this, paramAnonymousGHSIPastOrderListDataModel, true, null, new i()
              {
                public void a()
                {
                  GHSSplashActivity.e(GHSSplashActivity.this, true);
                  GHSSplashActivity.a(GHSSplashActivity.this, null);
                  GHSSplashActivity.d(GHSSplashActivity.this);
                }
              }));
              GHSSplashActivity.f(GHSSplashActivity.this).a();
              return;
            }
            GHSSplashActivity.e(GHSSplashActivity.this, true);
            GHSSplashActivity.d(GHSSplashActivity.this);
          }
        });
        t.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.d()
        {
          public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
          {
            GHSSplashActivity.e(GHSSplashActivity.this, true);
            GHSSplashActivity.d(GHSSplashActivity.this);
          }
        });
        t.a();
      }
    }
    for (;;)
    {
      if ((o) || (localObject == null)) {
        break label291;
      }
      if ((u == null) || (!u.h()))
      {
        u = new com.grubhub.AppBaseLibrary.android.dataServices.a.c.b(this, (String)localObject, true, false, null, new i()
        {
          public void a()
          {
            GHSSplashActivity.f(GHSSplashActivity.this, true);
            GHSSplashActivity.a(GHSSplashActivity.this, null);
            GHSSplashActivity.d(GHSSplashActivity.this);
          }
        });
        u.a();
      }
      return;
      localObject = null;
      break;
      label283:
      n = true;
    }
    label291:
    o = true;
  }
  
  private void k()
  {
    Intent localIntent = getIntent();
    String str = localIntent.getAction();
    Uri localUri = localIntent.getData();
    if (str != null)
    {
      if ((!str.equals("com.google.android.gms.actions.SEARCH_ACTION")) && (!str.equals("android.intent.action.SEARCH"))) {
        break label60;
      }
      x = localIntent.getStringExtra("query");
      GHSApplication.a().b().i(true);
    }
    label60:
    while (localUri == null) {
      return;
    }
    w = localUri;
    GHSApplication.a().b().i(true);
  }
  
  private void l()
  {
    if ((j) && (k) && (l) && (m) && (n) && (o) && (p) && (e != null))
    {
      e.removeMessages(1);
      Message localMessage = e.obtainMessage(1);
      e.sendMessageDelayed(localMessage, 500L);
    }
  }
  
  private void m()
  {
    if (!g)
    {
      h = l.MAIN;
      if (i)
      {
        GHSApplication.a().v();
        g = true;
        startActivity(GHSMainActivity.a(this, x, w));
        finish();
      }
    }
  }
  
  private void n()
  {
    if (!g)
    {
      h = l.WELCOME;
      if (i)
      {
        GHSApplication.a().v();
        g = true;
        startActivity(GHSWelcomeActivity.a(this));
        finish();
      }
    }
  }
  
  private boolean o()
  {
    return (!GHSApplication.b(this)) && (!GHSApplication.a().b().v()) && (!p()) && (x == null) && (w == null);
  }
  
  private boolean p()
  {
    Object localObject = null;
    try
    {
      GHSFilterSortCriteria localGHSFilterSortCriteria = GHSApplication.a().b().z();
      localObject = localGHSFilterSortCriteria;
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
    return (localObject != null) && (((GHSFilterSortCriteria)localObject).getAddress() != null) && (com.grubhub.AppBaseLibrary.android.utils.f.b(((GHSFilterSortCriteria)localObject).getAddressString()));
  }
  
  protected void a(boolean paramBoolean1, boolean paramBoolean2, com.grubhub.AppBaseLibrary.android.dataServices.net.f paramf)
  {
    k = true;
    h();
  }
  
  protected void onCreate(final Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903073);
    k();
    d = GHSApplication.k();
    i = true;
    if ((o()) && (d == null)) {
      n();
    }
    paramBundle = (TextView)findViewById(2131689621);
    paramBundle.setText(getString(2131230997) + " " + getString(2131230935));
    Animation localAnimation = AnimationUtils.loadAnimation(this, 2130968625);
    localAnimation.setAnimationListener(new Animation.AnimationListener()
    {
      public void onAnimationEnd(Animation paramAnonymousAnimation)
      {
        paramBundle.setVisibility(0);
      }
      
      public void onAnimationRepeat(Animation paramAnonymousAnimation) {}
      
      public void onAnimationStart(Animation paramAnonymousAnimation) {}
    });
    paramBundle.startAnimation(localAnimation);
    e = new Handler()
    {
      public void handleMessage(Message paramAnonymousMessage)
      {
        if (what == 1)
        {
          if (GHSSplashActivity.a(GHSSplashActivity.this)) {
            GHSSplashActivity.b(GHSSplashActivity.this);
          }
        }
        else {
          return;
        }
        GHSSplashActivity.c(GHSSplashActivity.this);
      }
    };
    f = new BroadcastReceiver()
    {
      public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
      {
        if ("com.grubhub.AppBaseLibrary.android.utils.BROADCAST".equals(paramAnonymousIntent.getAction()))
        {
          GHSSplashActivity.a(GHSSplashActivity.this, true);
          GHSSplashActivity.d(GHSSplashActivity.this);
        }
      }
    };
    c();
  }
  
  protected void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    setIntent(paramIntent);
    k();
    d = GHSApplication.k();
    if ((o()) && (d == null)) {
      n();
    }
  }
  
  protected void onPause()
  {
    super.onPause();
    i = false;
    e.removeMessages(1);
  }
  
  protected void onResume()
  {
    super.onResume();
    i = true;
    Message localMessage = e.obtainMessage(1);
    Handler localHandler = e;
    if (d != null) {}
    for (long l1 = 12000L;; l1 = 8000L)
    {
      localHandler.sendMessageDelayed(localMessage, l1);
      return;
    }
  }
  
  protected void onStart()
  {
    super.onStart();
    o.a(this).a(f, new IntentFilter("com.grubhub.AppBaseLibrary.android.utils.BROADCAST"));
    if (h != null) {
      if (h == l.WELCOME) {
        n();
      }
    }
    while (!k)
    {
      return;
      m();
      return;
    }
    h();
  }
  
  protected void onStop()
  {
    o.a(this).a(f);
    if (q != null)
    {
      q.g();
      q = null;
    }
    if (r != null)
    {
      r.g();
      r = null;
    }
    if (s != null)
    {
      s.g();
      s = null;
    }
    if (t != null)
    {
      t.g();
      t = null;
    }
    if (u != null)
    {
      u.g();
      u = null;
    }
    if (v != null)
    {
      v.g();
      v = null;
    }
    super.onStop();
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.GHSSplashActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */