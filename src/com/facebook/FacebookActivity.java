package com.facebook;

import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.ag;
import android.support.v4.app.q;
import android.support.v4.app.w;
import com.facebook.internal.FacebookDialogFragment;
import com.facebook.internal.ac;
import com.facebook.login.LoginFragment;

public class FacebookActivity
  extends q
{
  public static String a = "PassThrough";
  private static String b = "SingleFragment";
  private Fragment c;
  
  private void a()
  {
    Intent localIntent = getIntent();
    setResult(0, ac.a(localIntent, null, ac.a(ac.d(localIntent))));
    finish();
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    if (c != null) {
      c.onConfigurationChanged(paramConfiguration);
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(al.com_facebook_activity_layout);
    Intent localIntent = getIntent();
    if (a.equals(localIntent.getAction()))
    {
      a();
      return;
    }
    w localw = getSupportFragmentManager();
    Fragment localFragment = localw.a(b);
    paramBundle = localFragment;
    if (localFragment == null)
    {
      if (!"FacebookDialogFragment".equals(localIntent.getAction())) {
        break label96;
      }
      paramBundle = new FacebookDialogFragment();
      paramBundle.setRetainInstance(true);
      paramBundle.show(localw, b);
    }
    for (;;)
    {
      c = paramBundle;
      return;
      label96:
      paramBundle = new LoginFragment();
      paramBundle.setRetainInstance(true);
      localw.a().a(ak.com_facebook_fragment_container, paramBundle, b).a();
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.FacebookActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */