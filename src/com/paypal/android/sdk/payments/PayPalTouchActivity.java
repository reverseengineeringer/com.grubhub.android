package com.paypal.android.sdk.payments;

import android.app.Activity;
import android.app.Dialog;
import android.content.Intent;
import android.content.ServiceConnection;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.util.Log;
import android.view.Window;
import com.paypal.android.sdk.em;
import com.paypal.android.sdk.et;
import com.paypal.android.sdk.eu;
import com.paypal.android.sdk.ev;
import com.paypal.android.sdk.u;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Set;

public final class PayPalTouchActivity
  extends Activity
{
  private static final String a = PayPalTouchActivity.class.getSimpleName();
  private boolean b;
  private PayPalService c;
  private final ServiceConnection d = new as(this);
  private boolean e;
  
  private static void a(Bundle paramBundle)
  {
    if (paramBundle != null)
    {
      Iterator localIterator = paramBundle.keySet().iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        Object localObject = paramBundle.get(str);
        if (localObject == null) {
          String.format("%s:null", new Object[] { str });
        } else {
          String.format("%s:%s (%s)", new Object[] { str, localObject.toString(), localObject.getClass().getName() });
        }
      }
    }
  }
  
  private static void b(Bundle paramBundle)
  {
    Iterator localIterator = paramBundle.keySet().iterator();
    if (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      Object localObject = paramBundle.get(str);
      if (localObject == null) {}
      for (str = String.format("%s:null", new Object[] { str });; str = String.format("%s:%s (%s)", new Object[] { str, localObject.toString(), localObject.getClass().getName() }))
      {
        Log.w("paypal.sdk", str);
        break;
      }
    }
  }
  
  public final void finish()
  {
    super.finish();
    new StringBuilder().append(a).append(".finish");
  }
  
  protected final void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    new StringBuilder().append(a).append(".onActivityResult(").append(paramInt1).append(",").append(paramInt2).append(",").append(paramIntent).append(")");
    if (paramIntent != null) {
      a(paramIntent.getExtras());
    }
    switch (paramInt1)
    {
    default: 
      Log.wtf(a, "unexpected request code " + paramInt1 + " call it a cancel");
      return;
    }
    Intent localIntent;
    if ((paramIntent != null) && (paramIntent.getExtras() != null) && (!paramIntent.getExtras().isEmpty())) {
      if (paramInt2 == -1)
      {
        paramIntent = paramIntent.getExtras();
        paramIntent = new PayPalTouchConfirmation(new PayPalTouchResponseBundle(paramIntent.getString("version"), paramIntent.getString("display_name"), paramIntent.getString("access_token"), paramIntent.getString("response_type"), paramIntent.getString("authorization_code"), paramIntent.getString("expires_in"), paramIntent.getString("scope"), paramIntent.getString("email"), paramIntent.getString("photo_url"), paramIntent.getString("error"), null));
        localIntent = new Intent();
        localIntent.putExtra("com.paypal.android.sdk.loginConfirmation", paramIntent);
        setResult(-1, localIntent);
        finish();
      }
    }
    for (;;)
    {
      finish();
      return;
      localIntent = new Intent();
      localIntent.putExtras(paramIntent.getExtras());
      Log.w("paypal.sdk", "RESULT_CANCELED");
      b(paramIntent.getExtras());
      setResult(0, localIntent);
      continue;
      setResult(0);
    }
  }
  
  protected final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    new StringBuilder().append(a).append(".onCreate");
    if (paramBundle == null)
    {
      new ev(this).a();
      new eu(this).a();
      new et(this).a(Arrays.asList(new String[] { PayPalTouchActivity.class.getName() }));
      new u(this).a(PayPalTouchActivity.class);
    }
    for (b = true;; b = false)
    {
      e = bindService(by.a(this), d, 1);
      getWindow().setBackgroundDrawable(new ColorDrawable(0));
      setTheme(16973840);
      return;
    }
  }
  
  protected final Dialog onCreateDialog(int paramInt, Bundle paramBundle)
  {
    switch (paramInt)
    {
    default: 
      return by.a(this, em.bc, paramBundle, paramInt);
    }
    return by.a(this, em.be, paramBundle, paramInt);
  }
  
  protected final void onDestroy()
  {
    new StringBuilder().append(a).append(".onDestroy");
    if (c != null) {
      c.r();
    }
    if (e)
    {
      unbindService(d);
      e = false;
    }
    super.onDestroy();
  }
}

/* Location:
 * Qualified Name:     com.paypal.android.sdk.payments.PayPalTouchActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */