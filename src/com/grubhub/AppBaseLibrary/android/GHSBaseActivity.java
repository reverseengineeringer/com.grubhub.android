package com.grubhub.AppBaseLibrary.android;

import android.app.ActionBar;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.ag;
import android.support.v4.app.q;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.view.MenuItem;
import android.view.View;
import com.appsflyer.AppsFlyerLib;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSCreateOrderReviewDataModel.GHSInteractionType;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSCreateOrderReviewDataModel.GHSLocationType;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSFilterSortCriteria;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAddressDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIUserAuthDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIUserAuthDataModel.GHSISession;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.pastOrders.GHSIPastOrderDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.services.GHSReviewService;
import com.grubhub.AppBaseLibrary.android.feedback.GHSFeedbackConfirmationDialogFragment;
import com.grubhub.AppBaseLibrary.android.feedback.GHSFeedbackSelectionDialogFragment;
import com.grubhub.AppBaseLibrary.android.order.cart.i;
import com.grubhub.AppBaseLibrary.android.review.GHSReviewActivity;
import com.grubhub.AppBaseLibrary.android.utils.GHSAmazonLaunchService;
import com.grubhub.AppBaseLibrary.android.views.GHSFeedbackView;
import com.grubhub.AppBaseLibrary.android.views.GHSReviewPromptView;
import com.grubhub.AppBaseLibrary.android.views.GHSTypefaceSpan;
import com.grubhub.AppBaseLibrary.android.welcome.GHSWelcomeActivity;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;

public abstract class GHSBaseActivity
  extends q
  implements com.grubhub.AppBaseLibrary.android.feedback.a, com.grubhub.AppBaseLibrary.android.feedback.c, com.grubhub.AppBaseLibrary.android.feedback.e, com.grubhub.AppBaseLibrary.android.review.a, com.grubhub.AppBaseLibrary.android.views.f, com.grubhub.AppBaseLibrary.android.views.w
{
  private static final String d = GHSBaseActivity.class.getSimpleName();
  protected GHSFeedbackView a;
  protected GHSReviewPromptView b;
  protected View c;
  
  private void a(long paramLong)
  {
    long l1 = new Date().getTime();
    com.grubhub.AppBaseLibrary.android.dataServices.b.b localb = GHSApplication.a().b();
    long l2 = localb.d(getResources().getInteger(2131492869) * getResources().getInteger(2131492882));
    if ((paramLong == 0L) || (l1 - paramLong < l2)) {}
    do
    {
      return;
      a(localb);
    } while (((this instanceof GHSSplashActivity)) || ((this instanceof GHSWelcomeActivity)));
    if ((this instanceof GHSMainActivity))
    {
      startActivity(GHSMainActivity.a(this, true));
      return;
    }
    finish();
  }
  
  private void a(com.grubhub.AppBaseLibrary.android.dataServices.b.b paramb)
  {
    i.a();
    paramb.c(null);
    b(paramb);
  }
  
  private void a(GHSIUserAuthDataModel paramGHSIUserAuthDataModel)
  {
    if ((paramGHSIUserAuthDataModel != null) && (GHSApplication.m()))
    {
      paramGHSIUserAuthDataModel = new com.grubhub.AppBaseLibrary.android.dataServices.a.a.c(this, paramGHSIUserAuthDataModel.getSession().getRefresh_token(), null, null);
      paramGHSIUserAuthDataModel.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.e()
      {
        public void a(GHSIUserAuthDataModel paramAnonymousGHSIUserAuthDataModel)
        {
          a(true, true, com.grubhub.AppBaseLibrary.android.dataServices.net.f.USER);
        }
      });
      paramGHSIUserAuthDataModel.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.d()
      {
        public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
        {
          a(false, false, com.grubhub.AppBaseLibrary.android.dataServices.net.f.USER);
        }
      });
      paramGHSIUserAuthDataModel.a();
      return;
    }
    a(false, false, com.grubhub.AppBaseLibrary.android.dataServices.net.f.USER);
  }
  
  private void a(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    paramString4 = new StringBuilder().append("mailto:");
    if (!TextUtils.isEmpty(paramString1)) {
      paramString4.append(paramString1);
    }
    Intent localIntent = new Intent("android.intent.action.SENDTO", Uri.parse(paramString4.toString()));
    paramString1 = "";
    try
    {
      paramString4 = getPackageManagergetPackageInfogetPackageName0versionName;
      paramString1 = paramString4;
      i = getPackageManagergetPackageInfogetPackageName0versionCode;
    }
    catch (PackageManager.NameNotFoundException paramString4)
    {
      for (;;)
      {
        com.grubhub.AppBaseLibrary.android.utils.e.a.b(d, paramString4.getMessage());
        int i = 0;
        paramString4 = paramString1;
      }
    }
    if (!TextUtils.isEmpty(paramString2)) {
      localIntent.putExtra("android.intent.extra.SUBJECT", paramString2);
    }
    paramString1 = new StringBuilder().append(paramString4).append(" (").append(i).append(")");
    localIntent.putExtra("android.intent.extra.TEXT", String.format(Locale.US, getString(2131231626), new Object[] { paramString3, paramString1.toString(), Build.VERSION.RELEASE, Build.MODEL }));
    startActivity(Intent.createChooser(localIntent, getString(2131231624)));
  }
  
  private void b(com.grubhub.AppBaseLibrary.android.dataServices.b.b paramb)
  {
    Object localObject = paramb.z();
    if (localObject == null)
    {
      localObject = paramb.R();
      if ((localObject != null) && (!((List)localObject).isEmpty()))
      {
        GHSFilterSortCriteria localGHSFilterSortCriteria = new GHSFilterSortCriteria();
        localGHSFilterSortCriteria.setAddress((GHSIAddressDataModel)((List)localObject).get(0), com.grubhub.AppBaseLibrary.android.order.a.b((GHSIAddressDataModel)((List)localObject).get(0)));
        paramb.a(localGHSFilterSortCriteria);
      }
      return;
    }
    if ((((GHSFilterSortCriteria)localObject).getAddress() == null) || (((GHSFilterSortCriteria)localObject).getOrderType() == null) || (((GHSFilterSortCriteria)localObject).getAddress().getLatitude() == null))
    {
      paramb.a(null);
      return;
    }
    ((GHSFilterSortCriteria)localObject).resetFilterValues();
    paramb.a((GHSFilterSortCriteria)localObject);
  }
  
  private void h()
  {
    if (GHSApplication.b(this))
    {
      Date localDate = new Date();
      GHSIUserAuthDataModel localGHSIUserAuthDataModel = GHSApplication.d(this);
      if (com.grubhub.AppBaseLibrary.android.utils.a.a.a(localGHSIUserAuthDataModel.getSession(), localDate, true))
      {
        if (com.grubhub.AppBaseLibrary.android.utils.a.a.a(localGHSIUserAuthDataModel.getSession(), localDate))
        {
          a(localGHSIUserAuthDataModel);
          return;
        }
        i();
        return;
      }
      a(true, false, com.grubhub.AppBaseLibrary.android.dataServices.net.f.USER);
      return;
    }
    i();
  }
  
  private void i()
  {
    Object localObject = GHSApplication.c(this);
    Date localDate = new Date();
    if (((localObject == null) || (com.grubhub.AppBaseLibrary.android.utils.a.a.a(((GHSIUserAuthDataModel)localObject).getSession(), localDate, true))) && (GHSApplication.m()))
    {
      if ((localObject != null) && (com.grubhub.AppBaseLibrary.android.utils.a.a.a(((GHSIUserAuthDataModel)localObject).getSession(), new Date()))) {}
      for (localObject = ((GHSIUserAuthDataModel)localObject).getRefreshToken();; localObject = null)
      {
        final boolean bool = com.grubhub.AppBaseLibrary.android.utils.f.a((String)localObject);
        localObject = new com.grubhub.AppBaseLibrary.android.dataServices.a.a.d(this, (String)localObject, null, null);
        ((com.grubhub.AppBaseLibrary.android.dataServices.a.a.d)localObject).a(new com.grubhub.AppBaseLibrary.android.dataServices.net.e()
        {
          public void a(GHSIUserAuthDataModel paramAnonymousGHSIUserAuthDataModel)
          {
            a(true, bool, com.grubhub.AppBaseLibrary.android.dataServices.net.f.ANONYMOUS_USER);
          }
        });
        ((com.grubhub.AppBaseLibrary.android.dataServices.a.a.d)localObject).a(new com.grubhub.AppBaseLibrary.android.dataServices.net.d()
        {
          public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
          {
            a(false, false, com.grubhub.AppBaseLibrary.android.dataServices.net.f.ANONYMOUS_USER);
          }
        });
        ((com.grubhub.AppBaseLibrary.android.dataServices.a.a.d)localObject).a();
        return;
      }
    }
    a(true, false, com.grubhub.AppBaseLibrary.android.dataServices.net.f.ANONYMOUS_USER);
  }
  
  public void a(GHSCreateOrderReviewDataModel.GHSLocationType paramGHSLocationType)
  {
    if (b != null) {
      b.setLocationType(paramGHSLocationType);
    }
  }
  
  public void a(GHSIPastOrderDataModel paramGHSIPastOrderDataModel)
  {
    if (b != null) {
      b.setPastOrder(paramGHSIPastOrderDataModel);
    }
  }
  
  public void a(GHSIPastOrderDataModel paramGHSIPastOrderDataModel, GHSCreateOrderReviewDataModel.GHSLocationType paramGHSLocationType)
  {
    if ((paramGHSIPastOrderDataModel != null) && (com.grubhub.AppBaseLibrary.android.utils.f.b(paramGHSIPastOrderDataModel.getOrderId()))) {
      startActivity(GHSReviewActivity.a(this, paramGHSIPastOrderDataModel.getOrderId(), paramGHSIPastOrderDataModel.getRestaurantId(), paramGHSIPastOrderDataModel.getRestaurantName(), paramGHSIPastOrderDataModel.getOrderType(), GHSCreateOrderReviewDataModel.GHSInteractionType.AUTOMATICALLY_LAUNCHED_MODAL, paramGHSLocationType));
    }
    com.grubhub.AppBaseLibrary.android.utils.c.h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.c("submit ratings and reviews", "submit ratings prompt-rate_cta", "restaurant search_modal"));
  }
  
  public void a(com.grubhub.AppBaseLibrary.android.feedback.b paramb)
  {
    if (paramb == com.grubhub.AppBaseLibrary.android.feedback.b.TRAY) {
      com.grubhub.AppBaseLibrary.android.utils.c.h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.c("in-app feedback", "app navigation", "give feedback app nav_CTA"));
    }
    GHSFeedbackSelectionDialogFragment.a(paramb).show(getSupportFragmentManager(), GHSFeedbackSelectionDialogFragment.class.getSimpleName());
  }
  
  public void a(com.grubhub.AppBaseLibrary.android.feedback.b paramb, String paramString1, String paramString2)
  {
    GHSFeedbackConfirmationDialogFragment.a(paramb, paramString1, paramString2).show(getSupportFragmentManager(), GHSFeedbackConfirmationDialogFragment.class.getSimpleName());
    GHSApplication.a().b().j(true);
  }
  
  public void a(String paramString)
  {
    a(paramString, null);
  }
  
  public void a(String paramString1, String paramString2)
  {
    ActionBar localActionBar = getActionBar();
    localActionBar.setNavigationMode(0);
    Typeface localTypeface = com.grubhub.AppBaseLibrary.android.views.h.a(this, getString(2131231646));
    int i = getResources().getDimensionPixelSize(2131427460);
    int j = getResources().getColor(2131558472);
    paramString1 = new SpannableString(paramString1);
    paramString1.setSpan(new GHSTypefaceSpan(null, localTypeface, i), 0, paramString1.length(), 33);
    paramString1.setSpan(new ForegroundColorSpan(j), 0, paramString1.length(), 33);
    localActionBar.setTitle(paramString1);
    if (com.grubhub.AppBaseLibrary.android.utils.f.b(paramString2))
    {
      paramString1 = com.grubhub.AppBaseLibrary.android.views.h.a(this, getString(2131231646));
      i = getResources().getDimensionPixelSize(2131427459);
      j = getResources().getColor(2131558472);
      paramString2 = new SpannableString(paramString2);
      paramString2.setSpan(new GHSTypefaceSpan(null, paramString1, i), 0, paramString2.length(), 33);
      paramString2.setSpan(new ForegroundColorSpan(j), 0, paramString2.length(), 33);
      localActionBar.setSubtitle(paramString2);
    }
    for (;;)
    {
      localActionBar.setDisplayShowCustomEnabled(false);
      localActionBar.setDisplayShowHomeEnabled(false);
      return;
      localActionBar.setSubtitle(null);
    }
  }
  
  public void a(boolean paramBoolean)
  {
    if (c != null)
    {
      if (paramBoolean) {
        c.setVisibility(0);
      }
    }
    else {
      return;
    }
    c.setVisibility(8);
  }
  
  public void a(boolean paramBoolean1, boolean paramBoolean2)
  {
    ActionBar localActionBar = getActionBar();
    if (localActionBar != null)
    {
      localActionBar.setTitle(null);
      if (paramBoolean1) {
        localActionBar.setDisplayShowCustomEnabled(true);
      }
      if (paramBoolean2) {
        localActionBar.setDisplayShowHomeEnabled(true);
      }
    }
  }
  
  protected void a(boolean paramBoolean1, boolean paramBoolean2, com.grubhub.AppBaseLibrary.android.dataServices.net.f paramf)
  {
    if ((paramBoolean1) && (paramBoolean2) && (paramf == com.grubhub.AppBaseLibrary.android.dataServices.net.f.ANONYMOUS_USER) && (GHSApplication.a().b().v()))
    {
      i.a();
      startActivity(GHSMainActivity.a(this));
    }
  }
  
  public void b(int paramInt)
  {
    a(getString(paramInt));
  }
  
  public void b(GHSIPastOrderDataModel paramGHSIPastOrderDataModel, GHSCreateOrderReviewDataModel.GHSLocationType paramGHSLocationType)
  {
    if ((paramGHSIPastOrderDataModel != null) && (com.grubhub.AppBaseLibrary.android.utils.f.b(paramGHSIPastOrderDataModel.getOrderId()))) {
      startService(GHSReviewService.a(this, paramGHSIPastOrderDataModel.getOrderId()));
    }
  }
  
  public void b(com.grubhub.AppBaseLibrary.android.feedback.b paramb)
  {
    if (a != null) {
      a.setMode(paramb);
    }
  }
  
  public void b(com.grubhub.AppBaseLibrary.android.feedback.b paramb, String paramString1, String paramString2)
  {
    com.grubhub.AppBaseLibrary.android.utils.c.h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.c("in-app feedback", "send more details modal_CTA", "yes"));
    com.grubhub.AppBaseLibrary.android.utils.c.h.a().d();
    int i = 5.a[paramb.ordinal()];
    a(getString(2131231623), getString(2131231625), paramString1, paramString2);
  }
  
  public void b(String paramString)
  {
    android.support.v4.app.w localw = getSupportFragmentManager();
    if ((com.grubhub.AppBaseLibrary.android.utils.f.b(paramString)) && (localw != null))
    {
      localw.a(paramString, 1);
      return;
    }
    onBackPressed();
  }
  
  public void b(boolean paramBoolean)
  {
    if (a != null)
    {
      if (paramBoolean)
      {
        if (b != null) {
          b.c();
        }
        a.b();
      }
    }
    else {
      return;
    }
    a.c();
  }
  
  protected void c()
  {
    startService(new Intent(this, GHSAmazonLaunchService.class));
  }
  
  public void c(com.grubhub.AppBaseLibrary.android.feedback.b paramb)
  {
    com.grubhub.AppBaseLibrary.android.utils.c.h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.c("in-app feedback", "give feedback modal_CTA", "yes"));
    a(paramb);
  }
  
  public void c(boolean paramBoolean)
  {
    if (b != null)
    {
      if (paramBoolean)
      {
        if (a != null) {
          a.c();
        }
        b.b();
      }
    }
    else {
      return;
    }
    b.c();
  }
  
  public void d(com.grubhub.AppBaseLibrary.android.feedback.b paramb)
  {
    com.grubhub.AppBaseLibrary.android.utils.c.h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.c("in-app feedback", "give feedback modal_CTA", "no"));
    GHSApplication.a().b().j(true);
  }
  
  protected void e()
  {
    android.support.v4.app.w localw = getSupportFragmentManager();
    Fragment localFragment = localw.a(GHSFeedbackSelectionDialogFragment.class.getSimpleName());
    if (localFragment != null) {
      localw.a().a(localFragment).a();
    }
    localFragment = localw.a(GHSFeedbackConfirmationDialogFragment.class.getSimpleName());
    if (localFragment != null) {
      localw.a().a(localFragment).a();
    }
  }
  
  protected void e_()
  {
    if (!com.grubhub.AppBaseLibrary.android.utils.c.h.a().g())
    {
      AppsFlyerLib.b(getResources().getString(2131230936));
      AppsFlyerLib.a(getApplicationContext());
      com.grubhub.AppBaseLibrary.android.utils.c.h.a().a(AppsFlyerLib.d(this));
    }
  }
  
  public boolean f()
  {
    return (a != null) && (a.d());
  }
  
  public boolean g()
  {
    if (b != null) {
      return b.d();
    }
    return false;
  }
  
  protected void k_()
  {
    if (!com.grubhub.AppBaseLibrary.android.utils.c.h.a().h())
    {
      boolean bool = GHSApplication.b(this);
      String str = null;
      GHSIUserAuthDataModel localGHSIUserAuthDataModel = GHSApplication.d(this);
      if (localGHSIUserAuthDataModel != null) {
        str = localGHSIUserAuthDataModel.getUdid();
      }
      com.grubhub.AppBaseLibrary.android.utils.c.h.a().a(bool, str);
    }
  }
  
  protected void l_()
  {
    long l1 = new Date().getTime();
    Object localObject1 = GHSApplication.a().b();
    com.grubhub.AppBaseLibrary.android.c.c.a locala = ((com.grubhub.AppBaseLibrary.android.dataServices.b.b)localObject1).D();
    long l2 = ((com.grubhub.AppBaseLibrary.android.dataServices.b.b)localObject1).b(getResources().getInteger(2131492885) * getResources().getInteger(2131492882));
    if ((locala != null) && ((locala.c() == 0L) || (l1 - locala.c() < l2)))
    {
      int i = GHSApplication.a().b().p();
      localObject1 = new HashMap();
      ((Map)localObject1).put("SessionID", locala.a());
      ((Map)localObject1).put("SessionSequence", Integer.valueOf(i));
      com.grubhub.AppBaseLibrary.android.utils.c.h.a().a((Map)localObject1);
      return;
    }
    if (locala != null)
    {
      com.grubhub.AppBaseLibrary.android.utils.e.a.c("Old Session Ended", "SessionId: " + locala.a());
      localObject2 = new com.grubhub.AppBaseLibrary.android.utils.e.a.a.a();
      locala.accept((com.grubhub.AppBaseLibrary.android.utils.e.a.a.c)localObject2);
      com.grubhub.AppBaseLibrary.android.utils.e.a.a.a("SESSION_END", ((com.grubhub.AppBaseLibrary.android.utils.e.a.a.a)localObject2).a());
    }
    locala = new com.grubhub.AppBaseLibrary.android.c.c.a(String.format("%s%s", new Object[] { Long.valueOf(l1), UUID.randomUUID().toString() }), l1, 0L);
    com.grubhub.AppBaseLibrary.android.utils.e.a.c("New Session Started", "SessionId: " + locala.a());
    Object localObject2 = new com.grubhub.AppBaseLibrary.android.utils.e.a.a.a();
    locala.accept((com.grubhub.AppBaseLibrary.android.utils.e.a.a.c)localObject2);
    com.grubhub.AppBaseLibrary.android.utils.e.a.a.a("SESSION_START", ((com.grubhub.AppBaseLibrary.android.utils.e.a.a.a)localObject2).a());
    localObject2 = new HashMap();
    ((Map)localObject2).put("SessionID", locala.a());
    ((Map)localObject2).put("SessionSequence", Integer.valueOf(-1));
    com.grubhub.AppBaseLibrary.android.utils.c.h.a().a((Map)localObject2);
    ((com.grubhub.AppBaseLibrary.android.dataServices.b.b)localObject1).a(locala);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = getActionBar();
    if (paramBundle != null)
    {
      paramBundle.setDisplayShowHomeEnabled(false);
      paramBundle.setDisplayShowTitleEnabled(true);
      paramBundle.setNavigationMode(0);
      paramBundle.setTitle(null);
    }
  }
  
  public boolean onMenuItemSelected(int paramInt, MenuItem paramMenuItem)
  {
    if ((Build.VERSION.SDK_INT < 18) && (paramMenuItem.getTitleCondensed() != null)) {
      paramMenuItem.setTitleCondensed(paramMenuItem.getTitleCondensed().toString());
    }
    return super.onMenuItemSelected(paramInt, paramMenuItem);
  }
  
  protected void onStart()
  {
    super.onStart();
    e_();
    k_();
    h();
    com.grubhub.AppBaseLibrary.android.c.c.a locala = GHSApplication.a().b().D();
    if (locala != null) {}
    for (long l = locala.c();; l = 0L)
    {
      l_();
      a(l);
      return;
    }
  }
  
  protected void onStop()
  {
    super.onStop();
    com.grubhub.AppBaseLibrary.android.dataServices.b.b localb = GHSApplication.a().b();
    com.grubhub.AppBaseLibrary.android.c.c.a locala = localb.D();
    if (locala != null)
    {
      locala.a(new Date().getTime());
      localb.a(locala);
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.GHSBaseActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */