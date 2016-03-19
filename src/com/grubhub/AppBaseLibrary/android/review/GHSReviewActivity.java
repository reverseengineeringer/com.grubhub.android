package com.grubhub.AppBaseLibrary.android.review;

import android.app.ActionBar;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.ag;
import android.support.v4.app.w;
import android.support.v4.content.o;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.GHSBaseActivity;
import com.grubhub.AppBaseLibrary.android.c;
import com.grubhub.AppBaseLibrary.android.dataServices.a.i;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSCreateOrderReviewDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSCreateOrderReviewDataModel.GHSAnswerDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSCreateOrderReviewDataModel.GHSInteractionType;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSCreateOrderReviewDataModel.GHSLocationType;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIOrderReviewSurveyDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIUserAuthDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.services.GHSReviewService;
import com.grubhub.AppBaseLibrary.android.order.g;
import com.grubhub.AppBaseLibrary.android.views.GHSLoadingViewFlipper;
import java.util.ArrayList;
import java.util.HashMap;

public class GHSReviewActivity
  extends GHSBaseActivity
  implements d, e
{
  private String d;
  private String e;
  private String f;
  private g g;
  private GHSCreateOrderReviewDataModel.GHSInteractionType h;
  private GHSCreateOrderReviewDataModel.GHSLocationType i;
  private w j;
  private GHSCreateOrderReviewDataModel k;
  private ArrayList<GHSIOrderReviewSurveyDataModel> l;
  private com.grubhub.AppBaseLibrary.android.dataServices.a.h.a m;
  private boolean n;
  private boolean o;
  private boolean p;
  private boolean q;
  private boolean r;
  private boolean s;
  private boolean t;
  private b u;
  private GHSLoadingViewFlipper v;
  private BroadcastReceiver w = new BroadcastReceiver()
  {
    public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
    {
      paramAnonymousContext = paramAnonymousIntent.getAction();
      String str = paramAnonymousIntent.getStringExtra("com.grubhub.service.GHSReviewService.ORDER_ID");
      int i;
      if ((paramAnonymousContext != null) && (paramAnonymousContext.equals("com.grubhub.service.GHSReviewService.BROADCAST")) && (str != null) && (str.equals(GHSReviewActivity.a(GHSReviewActivity.this))))
      {
        if (paramAnonymousIntent.getIntExtra("com.grubhub.service.GHSReviewService.STATUS_CODE", 0) != -1) {
          break label101;
        }
        i = 1;
        if (!GHSReviewActivity.b(GHSReviewActivity.this)) {
          break label136;
        }
        a(false);
        if (i == 0) {
          break label106;
        }
        GHSReviewActivity.a(GHSReviewActivity.this, com.grubhub.AppBaseLibrary.android.b.a.ERROR_CODE_UNKNOWN);
      }
      for (;;)
      {
        GHSReviewActivity.a(GHSReviewActivity.this, false);
        return;
        label101:
        i = 0;
        break;
        label106:
        if (GHSReviewActivity.c(GHSReviewActivity.this)) {
          GHSReviewActivity.d(GHSReviewActivity.this);
        } else {
          finish();
        }
      }
      label136:
      paramAnonymousIntent = GHSReviewActivity.this;
      if (i != 0) {
        paramAnonymousContext = b.ERROR;
      }
      for (;;)
      {
        GHSReviewActivity.a(paramAnonymousIntent, paramAnonymousContext);
        break;
        if (GHSReviewActivity.c(GHSReviewActivity.this)) {
          paramAnonymousContext = b.SURVEY_COMPLETE;
        } else {
          paramAnonymousContext = b.QUIT;
        }
      }
    }
  };
  
  public static Intent a(Context paramContext, String paramString1, String paramString2, String paramString3, g paramg, GHSCreateOrderReviewDataModel.GHSInteractionType paramGHSInteractionType, GHSCreateOrderReviewDataModel.GHSLocationType paramGHSLocationType)
  {
    paramContext = new Intent(paramContext, GHSReviewActivity.class);
    paramContext.putExtra("order_id", paramString1);
    paramContext.putExtra("restaurant_id", paramString2);
    paramContext.putExtra("restaurant_name", paramString3);
    paramContext.putExtra("order_type", paramg);
    paramContext.putExtra("interaction_type", paramGHSInteractionType);
    paramContext.putExtra("location_type", paramGHSLocationType);
    return paramContext;
  }
  
  private void a(Bundle paramBundle)
  {
    Intent localIntent = getIntent();
    d = localIntent.getStringExtra("order_id");
    e = localIntent.getStringExtra("restaurant_id");
    f = localIntent.getStringExtra("restaurant_name");
    g = ((g)localIntent.getSerializableExtra("order_type"));
    h = ((GHSCreateOrderReviewDataModel.GHSInteractionType)localIntent.getSerializableExtra("interaction_type"));
    i = ((GHSCreateOrderReviewDataModel.GHSLocationType)localIntent.getSerializableExtra("location_type"));
    k = new GHSCreateOrderReviewDataModel();
    k.setOrderId(d);
    k.setRestaurantId(e);
    k.setInteraction(h);
    k.setLocation(i);
    boolean bool;
    if (paramBundle != null)
    {
      l = paramBundle.getParcelableArrayList("review_survey_list");
      bool = paramBundle.getBoolean("review_complete_loaded");
      if (l == null) {
        break label209;
      }
    }
    label209:
    for (p = true;; p = false)
    {
      if (!bool) {
        break label217;
      }
      n = true;
      o = true;
      r = true;
      s = true;
      q = false;
      u = b.SURVEY_COMPLETE;
      return;
      l = null;
      bool = false;
      break;
    }
    label217:
    n = false;
    o = false;
    r = false;
    s = false;
    q = false;
    u = null;
  }
  
  private void a(com.grubhub.AppBaseLibrary.android.b.a parama)
  {
    parama = new com.grubhub.AppBaseLibrary.android.b.b(com.grubhub.AppBaseLibrary.android.b.a.ERROR_CODE_REVIEW_SURVEY_INVALID);
    c.a(this, parama.f(), parama.getLocalizedMessage(), parama.g(), parama.h(), parama.i(), new com.grubhub.AppBaseLibrary.android.d()
    {
      public void a(DialogInterface paramAnonymousDialogInterface)
      {
        finish();
      }
      
      public void a(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        finish();
      }
      
      public void b(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        finish();
      }
      
      public void c(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        finish();
      }
    });
  }
  
  private void a(ArrayList<GHSIOrderReviewSurveyDataModel> paramArrayList)
  {
    paramArrayList = GHSReviewSurveyFragment.a(paramArrayList);
    ag localag = j.a();
    localag.b(2131689619, paramArrayList, GHSReviewSurveyFragment.class.getSimpleName());
    localag.a();
    r = true;
  }
  
  private void b(String paramString, int paramInt)
  {
    paramString = GHSReviewWriteupFragment.a(paramString, paramInt);
    ag localag = j.a();
    localag.a(GHSReviewWriteupFragment.class.getSimpleName());
    localag.a(2130968609, 2130968615, 2130968608, 2130968616);
    localag.b(2131689619, paramString, GHSReviewWriteupFragment.class.getSimpleName());
    localag.a();
  }
  
  private void i()
  {
    if (l == null) {
      if (!p) {
        k();
      }
    }
    while (v == null)
    {
      do
      {
        return;
      } while (v == null);
      v.a(2131231596, new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          GHSReviewActivity.e(GHSReviewActivity.this);
        }
      });
      return;
    }
    v.b();
  }
  
  private void j()
  {
    c.a(this, 2131231853, 2131231852, 2131232071, 2131231711, 0, new com.grubhub.AppBaseLibrary.android.b()
    {
      public void a(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        GHSReviewActivity.f(GHSReviewActivity.this);
      }
    });
  }
  
  private void k()
  {
    if ((m == null) || (!m.h()))
    {
      m = new com.grubhub.AppBaseLibrary.android.dataServices.a.h.a(this, d, g, "1", new i()new i
      {
        public void a()
        {
          GHSReviewActivity.g(GHSReviewActivity.this).a();
        }
      }, new i()
      {
        public void a()
        {
          GHSReviewActivity.a(GHSReviewActivity.this, null);
        }
      });
      m.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.e()
      {
        public void a(final ArrayList<GHSIOrderReviewSurveyDataModel> paramAnonymousArrayList)
        {
          GHSReviewActivity.a(GHSReviewActivity.this, paramAnonymousArrayList);
          GHSReviewActivity.b(GHSReviewActivity.this, true);
          GHSReviewActivity.g(GHSReviewActivity.this).b();
          final com.grubhub.AppBaseLibrary.android.utils.e locale = com.grubhub.AppBaseLibrary.android.utils.d.a(GHSReviewActivity.h(GHSReviewActivity.this));
          if (a)
          {
            GHSReviewActivity.b(GHSReviewActivity.this, GHSReviewActivity.h(GHSReviewActivity.this));
            return;
          }
          GHSReviewActivity.a(GHSReviewActivity.this, com.grubhub.AppBaseLibrary.android.b.a.ERROR_CODE_REVIEW_SURVEY_INVALID);
          paramAnonymousArrayList = GHSApplication.a().b().N();
          if (paramAnonymousArrayList != null) {}
          for (paramAnonymousArrayList = paramAnonymousArrayList.getUdid();; paramAnonymousArrayList = null)
          {
            com.grubhub.AppBaseLibrary.android.utils.e.a.a.a("SURVEY_UNSUPPORTED_ERROR", new HashMap() {});
            return;
          }
        }
      });
      final com.grubhub.AppBaseLibrary.android.dataServices.a.h.a locala = m;
      m.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.d()
      {
        public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
        {
          GHSReviewActivity.b(GHSReviewActivity.this, true);
          if (paramAnonymousb.d())
          {
            c.a(GHSReviewActivity.this, paramAnonymousb.f(), paramAnonymousb.getLocalizedMessage(), paramAnonymousb.g(), paramAnonymousb.h(), paramAnonymousb.i(), new com.grubhub.AppBaseLibrary.android.b()
            {
              public void a(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
              {
                a.a();
              }
            });
            GHSReviewActivity.g(GHSReviewActivity.this).a(2131231596, new View.OnClickListener()
            {
              public void onClick(View paramAnonymous2View)
              {
                GHSReviewActivity.e(GHSReviewActivity.this);
              }
            });
            return;
          }
          GHSReviewActivity.a(GHSReviewActivity.this, com.grubhub.AppBaseLibrary.android.b.a.ERROR_CODE_REVIEW_SURVEY_INVALID);
        }
      });
      m.a();
    }
  }
  
  private void l()
  {
    startService(GHSReviewService.a(this, k));
    a(true);
    q = true;
  }
  
  private void m()
  {
    startService(GHSReviewService.a(this, d));
  }
  
  private void n()
  {
    GHSReviewCompleteFragment localGHSReviewCompleteFragment = GHSReviewCompleteFragment.a(d);
    ag localag = j.a();
    localag.a(2130968609, 2130968615, 2130968608, 2130968616);
    localag.b(2131689619, localGHSReviewCompleteFragment, GHSReviewCompleteFragment.class.getSimpleName());
    localag.a();
    s = true;
  }
  
  public void a(GHSCreateOrderReviewDataModel.GHSAnswerDataModel paramGHSAnswerDataModel)
  {
    if ((k != null) && (paramGHSAnswerDataModel != null)) {
      k.addAnswer(paramGHSAnswerDataModel);
    }
    n = true;
  }
  
  public void a(String paramString, int paramInt)
  {
    b(paramString, paramInt);
  }
  
  public void c(String paramString)
  {
    GHSReviewSurveyFragment localGHSReviewSurveyFragment = (GHSReviewSurveyFragment)j.a(GHSReviewSurveyFragment.class.getSimpleName());
    if (localGHSReviewSurveyFragment != null) {
      localGHSReviewSurveyFragment.a(paramString);
    }
  }
  
  public void h()
  {
    o = true;
    l();
  }
  
  public void onBackPressed()
  {
    w localw = getSupportFragmentManager();
    Fragment localFragment = localw.a(2131689619);
    if ((localFragment != null) && ((localFragment instanceof com.grubhub.AppBaseLibrary.android.a))) {}
    for (boolean bool = ((com.grubhub.AppBaseLibrary.android.a)localFragment).f_();; bool = false)
    {
      int i1;
      if (!bool)
      {
        i1 = localw.e();
        if ((s) || (q)) {
          finish();
        }
      }
      else
      {
        return;
      }
      if (i1 == 0)
      {
        if (n)
        {
          j();
          return;
        }
        m();
        finish();
        return;
      }
      super.onBackPressed();
      return;
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903072);
    c = findViewById(2131690253);
    v = ((GHSLoadingViewFlipper)findViewById(2131689618));
    j = getSupportFragmentManager();
    IntentFilter localIntentFilter = new IntentFilter("com.grubhub.service.GHSReviewService.BROADCAST");
    o.a(this).a(w, localIntentFilter);
    a(paramBundle);
  }
  
  protected void onDestroy()
  {
    if (w != null) {
      o.a(this).a(w);
    }
    super.onDestroy();
  }
  
  protected void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    setIntent(paramIntent);
    a(null);
    i();
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    int i1 = paramMenuItem.getItemId();
    if ((!r) && (i1 == 16908332))
    {
      onBackPressed();
      return true;
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
  
  protected void onPause()
  {
    super.onPause();
    t = false;
  }
  
  public boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    getActionBar().setDisplayHomeAsUpEnabled(true);
    a(getString(2131230863), f);
    return super.onPrepareOptionsMenu(paramMenu);
  }
  
  protected void onResume()
  {
    super.onResume();
    t = true;
    if (u != null) {
      a(false);
    }
    switch (9.a[u.ordinal()])
    {
    default: 
      return;
    case 1: 
      n();
      u = null;
      return;
    case 2: 
      a(com.grubhub.AppBaseLibrary.android.b.a.ERROR_CODE_UNKNOWN);
      u = null;
      return;
    }
    finish();
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    Bundle localBundle = paramBundle;
    if (paramBundle == null) {
      localBundle = new Bundle();
    }
    localBundle.putBoolean("review_complete_loaded", s);
    localBundle.putParcelableArrayList("review_survey_list", l);
    super.onSaveInstanceState(localBundle);
  }
  
  protected void onStart()
  {
    super.onStart();
    i();
  }
  
  protected void onStop()
  {
    super.onStop();
    if (m != null)
    {
      m.g();
      m = null;
      if (v != null) {
        v.b();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.review.GHSReviewActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */