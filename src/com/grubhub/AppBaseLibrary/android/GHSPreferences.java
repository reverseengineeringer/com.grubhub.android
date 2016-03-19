package com.grubhub.AppBaseLibrary.android;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.Resources;
import android.os.Bundle;
import android.preference.ListPreference;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import android.preference.PreferenceActivity;
import android.preference.PreferenceManager;
import android.preference.SwitchPreference;
import android.view.GestureDetector;
import android.view.GestureDetector.OnGestureListener;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSFilterSortCriteria;
import com.grubhub.AppBaseLibrary.android.order.l;

public class GHSPreferences
  extends PreferenceActivity
{
  private static Preference b;
  private static Preference c;
  private static Preference d;
  private static Preference e;
  private static Preference f;
  private static Preference g;
  private static Preference h;
  private static Preference i;
  private static Preference.OnPreferenceChangeListener k = new Preference.OnPreferenceChangeListener()
  {
    public boolean onPreferenceChange(Preference paramAnonymousPreference, Object paramAnonymousObject)
    {
      paramAnonymousObject = paramAnonymousObject.toString();
      if ((paramAnonymousPreference instanceof ListPreference))
      {
        ListPreference localListPreference = (ListPreference)paramAnonymousPreference;
        int i = localListPreference.findIndexOfValue((String)paramAnonymousObject);
        if (i >= 0)
        {
          paramAnonymousObject = localListPreference.getEntries()[i];
          paramAnonymousPreference.setSummary((CharSequence)paramAnonymousObject);
        }
      }
      for (;;)
      {
        return true;
        paramAnonymousObject = null;
        break;
        paramAnonymousPreference.setSummary((CharSequence)paramAnonymousObject);
      }
    }
  };
  GestureDetector.OnGestureListener a = new GestureDetector.OnGestureListener()
  {
    public boolean onDown(MotionEvent paramAnonymousMotionEvent)
    {
      return false;
    }
    
    public boolean onFling(MotionEvent paramAnonymousMotionEvent1, MotionEvent paramAnonymousMotionEvent2, float paramAnonymousFloat1, float paramAnonymousFloat2)
    {
      int i;
      int j;
      label14:
      int k;
      if (paramAnonymousMotionEvent1 != null)
      {
        i = 1;
        if (paramAnonymousMotionEvent2 == null) {
          break label84;
        }
        j = 1;
        if (Math.abs(paramAnonymousFloat1) <= 900.0F) {
          break label90;
        }
        k = 1;
      }
      for (;;)
      {
        if ((k & i & j) != 0)
        {
          paramAnonymousFloat1 = paramAnonymousMotionEvent1.getX();
          paramAnonymousFloat2 = paramAnonymousMotionEvent2.getX();
          if (paramAnonymousFloat2 - paramAnonymousFloat1 > 200.0F)
          {
            finish();
            overridePendingTransition(0, 2130968616);
            return true;
            i = 0;
            break;
            label84:
            j = 0;
            break label14;
            label90:
            k = 0;
            continue;
          }
          if (paramAnonymousFloat1 - paramAnonymousFloat2 > 200.0F)
          {
            finish();
            overridePendingTransition(0, 2130968615);
            return true;
          }
        }
      }
      return false;
    }
    
    public void onLongPress(MotionEvent paramAnonymousMotionEvent) {}
    
    public boolean onScroll(MotionEvent paramAnonymousMotionEvent1, MotionEvent paramAnonymousMotionEvent2, float paramAnonymousFloat1, float paramAnonymousFloat2)
    {
      return false;
    }
    
    public void onShowPress(MotionEvent paramAnonymousMotionEvent) {}
    
    public boolean onSingleTapUp(MotionEvent paramAnonymousMotionEvent)
    {
      return false;
    }
  };
  private GestureDetector j;
  
  public static k a()
  {
    k localk = new k();
    SharedPreferences localSharedPreferences = b();
    k.a(localk, localSharedPreferences.getBoolean("api_selection_switch", GHSApplication.a().getResources().getBoolean(2131361798)));
    k.b(localk, localSharedPreferences.getBoolean("use_ssl_switch", GHSApplication.a().getResources().getBoolean(2131361799)));
    k.a(localk, localSharedPreferences.getString("pref_api_key_selected", GHSApplication.a().getString(2131231022)));
    k.b(localk, localSharedPreferences.getString("pref_new_api_selected", GHSApplication.a().getString(2131231023)));
    k.c(localk, localSharedPreferences.getString("pref_old_api_selected", GHSApplication.a().getString(2131231026)));
    return localk;
  }
  
  private static void a(Preference paramPreference)
  {
    paramPreference.setOnPreferenceChangeListener(k);
    if ((paramPreference instanceof SwitchPreference))
    {
      k.onPreferenceChange(paramPreference, Boolean.valueOf(b().getBoolean(paramPreference.getKey(), false)));
      return;
    }
    k.onPreferenceChange(paramPreference, b().getString(paramPreference.getKey(), ""));
    com.grubhub.AppBaseLibrary.android.utils.e.a.c("SharedPrefs ", paramPreference.getContext().getPackageName() + "_preferences");
  }
  
  private static SharedPreferences b()
  {
    return GHSApplication.a().getSharedPreferences("com.grubhub.seamless.android_preferences", 0);
  }
  
  private void c()
  {
    addPreferencesFromResource(2131099648);
    b = findPreference("api_selection_switch");
    f = findPreference("use_ssl_switch");
    c = findPreference("pref_old_api_selected");
    d = findPreference("pref_new_api_selected");
    e = findPreference("pref_api_key_selected");
    g = findPreference("feature_nearby");
    h = findPreference("feature_future_orders");
    i = findPreference("feature_urban_airship");
    a(c);
    a(d);
    a(e);
    a(b);
    a(f);
    a(g);
    a(h);
    a(i);
  }
  
  private void d()
  {
    b().edit().commit();
  }
  
  private void e()
  {
    Object localObject = b();
    String str = ((SharedPreferences)localObject).getString("session_timeout_minutes", Integer.toString(getResources().getInteger(2131492885)));
    GHSApplication.a().b().c(Long.valueOf(str).longValue() * getResources().getInteger(2131492882));
    localObject = ((SharedPreferences)localObject).getString("cart_search_data_lifetime_minutes", Integer.toString(getResources().getInteger(2131492869)));
    GHSApplication.a().b().e(Long.valueOf((String)localObject).longValue() * getResources().getInteger(2131492882));
  }
  
  private void f()
  {
    SharedPreferences localSharedPreferences = b();
    com.grubhub.AppBaseLibrary.android.dataServices.b.b localb = GHSApplication.a().b();
    localb.a(localSharedPreferences.getBoolean("feature_nearby", false));
    boolean bool = localSharedPreferences.getBoolean("feature_future_orders", false);
    localb.d(bool);
    if (!bool)
    {
      GHSFilterSortCriteria localGHSFilterSortCriteria = localb.z();
      if (localGHSFilterSortCriteria != null)
      {
        localGHSFilterSortCriteria.setSubOrderType(l.DEFAULT);
        localGHSFilterSortCriteria.setWhenFor(0L);
        localb.a(localGHSFilterSortCriteria);
      }
    }
    bool = localSharedPreferences.getBoolean("feature_urban_airship", false);
    localb.b(bool);
    com.grubhub.AppBaseLibrary.android.utils.urbanAirship.a.a().a(bool);
  }
  
  public void finish()
  {
    e();
    f();
    new com.grubhub.AppBaseLibrary.android.dataServices.a.a.b(this, null, null).a();
    super.finish();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    d();
    getPreferenceManager().setSharedPreferencesName("com.grubhub.seamless.android_preferences");
    c();
    j = new GestureDetector(this, a);
  }
  
  protected void onPostCreate(Bundle paramBundle)
  {
    super.onPostCreate(paramBundle);
    overridePendingTransition(2130968608, 2130968616);
  }
  
  protected void onResume()
  {
    super.onResume();
    getListView().setOnTouchListener(new View.OnTouchListener()
    {
      public boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
      {
        return onTouchEvent(paramAnonymousMotionEvent);
      }
    });
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    return j.onTouchEvent(paramMotionEvent);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.GHSPreferences
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */