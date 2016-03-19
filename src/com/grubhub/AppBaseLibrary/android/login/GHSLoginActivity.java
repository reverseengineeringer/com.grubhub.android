package com.grubhub.AppBaseLibrary.android.login;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.ag;
import android.support.v4.app.w;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.GHSBaseActivity;
import com.grubhub.AppBaseLibrary.android.GHSMainActivity;
import com.grubhub.AppBaseLibrary.android.c;

public class GHSLoginActivity
  extends GHSBaseActivity
  implements b
{
  private a d;
  
  public static Intent a(Context paramContext, a parama)
  {
    return a(paramContext, parama, false, null);
  }
  
  public static Intent a(Context paramContext, a parama, boolean paramBoolean)
  {
    return a(paramContext, parama, paramBoolean, null);
  }
  
  public static Intent a(Context paramContext, a parama, boolean paramBoolean, String paramString)
  {
    paramContext = new Intent(paramContext, GHSLoginActivity.class);
    if (parama != null) {
      paramContext.putExtra("login_type", parama);
    }
    paramContext.putExtra("prefill_email", paramBoolean);
    if (paramString != null) {
      paramContext.putExtra("explanation_message", paramString);
    }
    return paramContext;
  }
  
  private void a(int paramInt)
  {
    GHSLoginTabsFragment localGHSLoginTabsFragment = GHSLoginTabsFragment.a(paramInt, getIntent().getBooleanExtra("prefill_email", false));
    ag localag = getSupportFragmentManager().a();
    localag.a(17432576, 17432577);
    localag.b(2131689613, localGHSLoginTabsFragment, GHSLoginTabsFragment.class.getSimpleName()).a();
  }
  
  public void d(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      startActivity(GHSMainActivity.a(this));
      finish();
      return;
    }
    Intent localIntent = new Intent();
    localIntent.putExtra("login_type", d);
    setResult(-1, localIntent);
    finish();
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    getSupportFragmentManager().a(2131689613).onActivityResult(paramInt1, paramInt2, paramIntent);
  }
  
  public void onBackPressed()
  {
    Fragment localFragment = getSupportFragmentManager().a(2131689613);
    if ((localFragment != null) && ((localFragment instanceof com.grubhub.AppBaseLibrary.android.a))) {}
    for (boolean bool = ((com.grubhub.AppBaseLibrary.android.a)localFragment).f_();; bool = false)
    {
      if (!bool) {
        super.onBackPressed();
      }
      return;
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    Object localObject = getIntent();
    d = ((a)((Intent)localObject).getSerializableExtra("login_type"));
    localObject = ((Intent)localObject).getStringExtra("explanation_message");
    if (localObject != null) {
      c.a(this, null, (String)localObject, getString(2131231717), null, null, null);
    }
    setContentView(2130903069);
    c = findViewById(2131690253);
    if (paramBundle == null)
    {
      if (d == null) {}
    }
    else
    {
      switch (1.a[d.ordinal()])
      {
      default: 
        a(1);
        return;
      }
      a(0);
      return;
    }
    a(1);
  }
  
  protected void onStart()
  {
    super.onStart();
    if ((d == a.ONBOARDING) && (GHSApplication.a().b().v()) && (!isFinishing())) {
      finish();
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.login.GHSLoginActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */