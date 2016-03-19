package com.grubhub.AppBaseLibrary.android;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.Fragment;
import android.support.v4.app.ag;
import android.support.v4.app.w;
import android.support.v4.app.x;
import android.support.v4.content.o;
import android.support.v4.widget.DrawerLayout;
import android.support.v4.widget.p;
import android.view.View;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSFilterSortCriteria;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAddressDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel;
import com.grubhub.AppBaseLibrary.android.order.GHSOrderStatusFragment;
import com.grubhub.AppBaseLibrary.android.order.GHSOrderTrackingMapFragment;
import com.grubhub.AppBaseLibrary.android.order.cart.GHSCartActivity;
import com.grubhub.AppBaseLibrary.android.order.cart.i;
import com.grubhub.AppBaseLibrary.android.order.favorites.GHSFavoritesActivity;
import com.grubhub.AppBaseLibrary.android.order.futureOrders.GHSFutureOrdersActivity;
import com.grubhub.AppBaseLibrary.android.order.pastOrders.GHSPastOrdersActivity;
import com.grubhub.AppBaseLibrary.android.order.pastOrders.GHSPastOrdersFragment;
import com.grubhub.AppBaseLibrary.android.order.search.GHSRestaurantFragment;
import com.grubhub.AppBaseLibrary.android.order.search.GHSSearchFragment;
import com.grubhub.AppBaseLibrary.android.order.search.l;
import com.grubhub.AppBaseLibrary.android.views.GHSFeedbackView;
import com.grubhub.AppBaseLibrary.android.views.GHSReviewPromptView;

public class GHSMainActivity
  extends GHSBaseActivity
  implements p, e, com.grubhub.AppBaseLibrary.android.order.cart.c, com.grubhub.AppBaseLibrary.android.order.e, com.grubhub.AppBaseLibrary.android.order.h, com.grubhub.AppBaseLibrary.android.order.search.g, com.grubhub.AppBaseLibrary.android.order.search.h, l
{
  public GHSNavigationDrawerFragment d;
  private int e;
  private boolean f;
  private String g;
  private Handler h;
  
  private void A()
  {
    d = ((GHSNavigationDrawerFragment)getSupportFragmentManager().a(2131689612));
    d.a(2131689612, (DrawerLayout)findViewById(2131689606));
    d.a(this);
  }
  
  private void B()
  {
    org.b.a.a.a(new org.b.a.c());
    org.b.a.a.b(true);
    org.b.a.a.a(true);
    org.b.a.a.a(getResources().getInteger(2131492883));
    org.b.a.a.b(getResources().getInteger(2131492884));
  }
  
  public static Intent a(Context paramContext)
  {
    return new Intent(paramContext, GHSMainActivity.class);
  }
  
  public static Intent a(Context paramContext, String paramString, Uri paramUri)
  {
    paramContext = new Intent(paramContext, GHSMainActivity.class);
    paramContext.putExtra("search_query", paramString);
    paramContext.putExtra("deep_link_uri", paramUri);
    return paramContext;
  }
  
  public static Intent a(Context paramContext, String paramString, GHSIAddressDataModel paramGHSIAddressDataModel, com.grubhub.AppBaseLibrary.android.order.g paramg)
  {
    paramContext = new Intent(paramContext, GHSMainActivity.class);
    paramContext.putExtra("restaurant_id", paramString);
    paramContext.putExtra("search_address", com.grubhub.AppBaseLibrary.android.order.a.a(paramGHSIAddressDataModel));
    paramContext.putExtra("order_type", paramg);
    return paramContext;
  }
  
  public static Intent a(Context paramContext, boolean paramBoolean)
  {
    paramContext = new Intent(paramContext, GHSMainActivity.class);
    paramContext.putExtra("application_reset", paramBoolean);
    return paramContext;
  }
  
  private void a(boolean paramBoolean1, String paramString1, GHSIAddressDataModel paramGHSIAddressDataModel, com.grubhub.AppBaseLibrary.android.order.g paramg, String paramString2, Uri paramUri, boolean paramBoolean2)
  {
    w localw = getSupportFragmentManager();
    if ((localw.a(2131689609) == null) || (paramBoolean1))
    {
      localw.b(null, 1);
      if ((com.grubhub.AppBaseLibrary.android.utils.f.b(paramString1)) || (paramUri != null)) {
        e();
      }
      if (!paramBoolean2) {
        break label90;
      }
      paramString1 = GHSSearchFragment.a(true);
    }
    for (;;)
    {
      localw.a().b(2131689609, paramString1, GHSSearchFragment.class.getSimpleName()).a();
      g = GHSSearchFragment.class.getSimpleName();
      e = -100;
      return;
      label90:
      if (paramString1 != null) {
        paramString1 = GHSSearchFragment.a(paramBoolean1, paramString1, paramGHSIAddressDataModel, paramg);
      } else {
        paramString1 = GHSSearchFragment.a(paramBoolean1, paramString2, paramUri);
      }
    }
  }
  
  private void e(boolean paramBoolean)
  {
    a(paramBoolean, null, null, null, null, null, false);
  }
  
  private void z()
  {
    w localw = getSupportFragmentManager();
    int i = localw.e();
    x localx = null;
    if (i >= 1) {
      localx = localw.b(i - 1);
    }
    if (localx != null)
    {
      g = localx.c();
      return;
    }
    g = GHSSearchFragment.class.getSimpleName();
  }
  
  public void a(int paramInt) {}
  
  public void a(View paramView, float paramFloat) {}
  
  public void a(String paramString, boolean paramBoolean1, boolean paramBoolean2, Uri paramUri, GHSIAddressDataModel paramGHSIAddressDataModel, com.grubhub.AppBaseLibrary.android.order.g paramg)
  {
    GHSApplication.a().b().a(null);
    w localw = getSupportFragmentManager();
    localw.b(GHSRestaurantFragment.class.getSimpleName(), 1);
    paramString = localw.a().b(2131689609, GHSRestaurantFragment.a(paramString, paramGHSIAddressDataModel, paramg, paramBoolean1, paramBoolean2, paramUri, f), GHSRestaurantFragment.class.getSimpleName());
    paramString.a(GHSRestaurantFragment.class.getSimpleName());
    paramString.a();
    g = GHSRestaurantFragment.class.getSimpleName();
    f = false;
  }
  
  protected void a(boolean paramBoolean1, boolean paramBoolean2, com.grubhub.AppBaseLibrary.android.dataServices.net.f paramf)
  {
    if ((paramBoolean1) && (paramBoolean2) && (paramf == com.grubhub.AppBaseLibrary.android.dataServices.net.f.ANONYMOUS_USER))
    {
      i.a();
      startActivity(a(this));
      return;
    }
    paramf = new Intent("com.grubhub.AppBaseLibrary.android.utils.BROADCAST");
    o.a(this).a(paramf);
  }
  
  public void c(int paramInt)
  {
    e = paramInt;
  }
  
  public void c(String paramString) {}
  
  public void d(int paramInt)
  {
    if (d != null) {
      d.a(paramInt);
    }
  }
  
  public void d(String paramString)
  {
    paramString = GHSOrderTrackingMapFragment.a(paramString);
    w localw = getSupportFragmentManager();
    g = GHSOrderTrackingMapFragment.class.getSimpleName();
    localw.a().b(2131689609, paramString, g).a(g).a();
  }
  
  public void d(boolean paramBoolean)
  {
    if (d != null) {
      d.a(Boolean.valueOf(paramBoolean));
    }
  }
  
  public void g_() {}
  
  public void h()
  {
    f = true;
    Object localObject = getSupportFragmentManager();
    if (((w)localObject).a(GHSRestaurantFragment.class.getSimpleName()) != null)
    {
      ((w)localObject).b(GHSRestaurantFragment.class.getSimpleName(), 1);
      localObject = ((w)localObject).a(GHSSearchFragment.class.getSimpleName());
      if ((localObject != null) && ((localObject instanceof GHSSearchFragment))) {
        ((GHSSearchFragment)localObject).q();
      }
    }
    for (;;)
    {
      z();
      return;
      if (((w)localObject).a(GHSPastOrdersFragment.class.getSimpleName()) != null) {
        ((w)localObject).b(GHSPastOrdersFragment.class.getSimpleName(), 1);
      }
    }
  }
  
  public void i()
  {
    w localw = getSupportFragmentManager();
    GHSSearchFragment localGHSSearchFragment = (GHSSearchFragment)localw.a(GHSSearchFragment.class.getSimpleName());
    if (localGHSSearchFragment != null) {
      localGHSSearchFragment.b(true);
    }
    localw.b(GHSRestaurantFragment.class.getSimpleName(), 1);
  }
  
  public void j()
  {
    e(true);
  }
  
  public void k()
  {
    getSupportFragmentManager().b(GHSRestaurantFragment.class.getSimpleName(), 1);
    l();
  }
  
  public void l()
  {
    startActivityForResult(new Intent(this, GHSCartActivity.class), 1);
  }
  
  public void m()
  {
    finish();
  }
  
  public int n()
  {
    return e;
  }
  
  public boolean o()
  {
    return (d != null) && (d.a());
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if (paramInt1 == 1) {
      if (paramInt2 == -1)
      {
        paramIntent = paramIntent.getStringExtra("restaurant_name");
        GHSICartDataModel localGHSICartDataModel = GHSApplication.a().b().X();
        if (localGHSICartDataModel != null) {
          a(paramIntent, false, false, null, localGHSICartDataModel.getDeliveryAddress(), localGHSICartDataModel.getOrderType());
        }
      }
    }
    do
    {
      do
      {
        return;
        if (paramInt2 == 23)
        {
          h();
          return;
        }
      } while (paramInt2 != 22);
      e(true);
      return;
      if ((paramInt1 == 2) && (paramInt2 == -1))
      {
        y();
        return;
      }
    } while ((paramInt1 != 2995) || (paramInt2 != 19));
    u();
  }
  
  public void onBackPressed()
  {
    if (o()) {
      d.b();
    }
    for (;;)
    {
      return;
      Object localObject = getSupportFragmentManager();
      if (g != null)
      {
        localObject = ((w)localObject).a(g);
        if ((localObject == null) || (!(localObject instanceof a))) {}
      }
      for (boolean bool = ((a)localObject).f_(); !bool; bool = false)
      {
        super.onBackPressed();
        z();
        return;
      }
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903068);
    a = ((GHSFeedbackView)findViewById(2131689610));
    if (a != null) {
      a.setListener(this);
    }
    b = ((GHSReviewPromptView)findViewById(2131689611));
    if (b != null) {
      b.setListener(this);
    }
    c = findViewById(2131690253);
    B();
    Intent localIntent = getIntent();
    String str1 = localIntent.getStringExtra("restaurant_id");
    GHSIAddressDataModel localGHSIAddressDataModel = (GHSIAddressDataModel)localIntent.getParcelableExtra("search_address");
    com.grubhub.AppBaseLibrary.android.order.g localg = (com.grubhub.AppBaseLibrary.android.order.g)localIntent.getSerializableExtra("order_type");
    String str2 = localIntent.getStringExtra("search_query");
    if (localIntent.getParcelableExtra("deep_link_uri") != null) {}
    for (paramBundle = (Uri)localIntent.getParcelableExtra("deep_link_uri");; paramBundle = null)
    {
      a(false, str1, localGHSIAddressDataModel, localg, str2, paramBundle, localIntent.getBooleanExtra("application_reset", false));
      e = -100;
      h = new Handler();
      A();
      return;
    }
  }
  
  public void onDrawerClosed(View paramView)
  {
    if (g != null)
    {
      paramView = getSupportFragmentManager().a(g);
      if ((paramView != null) && ((paramView instanceof a))) {
        ((a)paramView).b();
      }
    }
  }
  
  public void onDrawerOpened(View paramView)
  {
    if (g != null)
    {
      paramView = getSupportFragmentManager().a(g);
      if ((paramView != null) && ((paramView instanceof a))) {
        ((a)paramView).c();
      }
    }
    com.grubhub.AppBaseLibrary.android.utils.c.h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.b(com.grubhub.AppBaseLibrary.android.utils.c.e.CONVENIENCE_FEATURES, com.grubhub.AppBaseLibrary.android.utils.c.f.APP_NAVIGATION, "app navigation menu"));
  }
  
  protected void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    setIntent(paramIntent);
    String str1 = paramIntent.getStringExtra("restaurant_id");
    GHSIAddressDataModel localGHSIAddressDataModel = (GHSIAddressDataModel)paramIntent.getParcelableExtra("search_address");
    com.grubhub.AppBaseLibrary.android.order.g localg = (com.grubhub.AppBaseLibrary.android.order.g)paramIntent.getSerializableExtra("order_type");
    String str2 = paramIntent.getStringExtra("search_query");
    if (paramIntent.getParcelableExtra("deep_link_uri") != null) {}
    for (Uri localUri = (Uri)paramIntent.getParcelableExtra("deep_link_uri");; localUri = null)
    {
      a(true, str1, localGHSIAddressDataModel, localg, str2, localUri, paramIntent.getBooleanExtra("application_reset", false));
      return;
    }
  }
  
  protected void onRestoreInstanceState(Bundle paramBundle)
  {
    super.onRestoreInstanceState(paramBundle);
    g = paramBundle.getString("current_fragment");
  }
  
  protected void onResume()
  {
    super.onResume();
    Handler localHandler = h;
    Runnable local1 = new Runnable()
    {
      public void run()
      {
        invalidateOptionsMenu();
      }
    };
    if (Build.VERSION.SDK_INT < 19) {}
    for (long l = 500L;; l = 0L)
    {
      localHandler.postDelayed(local1, l);
      return;
    }
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putString("current_fragment", g);
  }
  
  public void p()
  {
    if (d != null) {
      d.b();
    }
  }
  
  public void r() {}
  
  public void s()
  {
    e(true);
  }
  
  public void t()
  {
    com.grubhub.AppBaseLibrary.android.dataServices.b.b localb = GHSApplication.a().b();
    GHSFilterSortCriteria localGHSFilterSortCriteria = localb.z();
    if (localGHSFilterSortCriteria != null)
    {
      com.grubhub.AppBaseLibrary.android.order.g localg = localGHSFilterSortCriteria.getOrderType();
      localGHSFilterSortCriteria.resetFilterValues();
      localGHSFilterSortCriteria.setOrderType(localg);
      localb.a(localGHSFilterSortCriteria);
    }
    e(true);
  }
  
  public void u()
  {
    GHSOrderStatusFragment localGHSOrderStatusFragment = GHSOrderStatusFragment.a();
    w localw = getSupportFragmentManager();
    g = GHSOrderStatusFragment.class.getSimpleName();
    localw.b(g, 1);
    localw.a().b(2131689609, localGHSOrderStatusFragment, g).a(g).a();
  }
  
  public void v()
  {
    startActivity(GHSPastOrdersActivity.a(this));
  }
  
  public void w()
  {
    startActivity(GHSFavoritesActivity.a(this));
  }
  
  public void x()
  {
    startActivityForResult(GHSFutureOrdersActivity.a(this), 2995);
  }
  
  public void y()
  {
    Fragment localFragment = getSupportFragmentManager().a(GHSSearchFragment.class.getSimpleName());
    if (localFragment != null) {
      ((GHSSearchFragment)localFragment).r();
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.GHSMainActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */