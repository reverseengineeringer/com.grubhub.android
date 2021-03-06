package com.paypal.android.sdk.payments;

import android.app.Activity;
import android.app.Dialog;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.util.Log;
import android.widget.TextView;
import com.paypal.android.sdk.ek;
import com.paypal.android.sdk.em;
import com.paypal.android.sdk.es;
import com.paypal.android.sdk.et;
import com.paypal.android.sdk.eu;
import com.paypal.android.sdk.ev;
import com.paypal.android.sdk.ft;
import java.util.Arrays;
import java.util.Date;
import java.util.Timer;

public final class PayPalProfileSharingActivity
  extends Activity
{
  private static final String a = PayPalProfileSharingActivity.class.getSimpleName();
  private Date b;
  private Timer c;
  private PayPalService d;
  private final ServiceConnection e = new bt(this);
  private boolean f;
  
  public final void finish()
  {
    super.finish();
    new StringBuilder().append(getClass().getSimpleName()).append(".finish");
  }
  
  protected final void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    new StringBuilder().append(getClass().getSimpleName()).append(".onActivityResult");
    if (paramInt1 == 1) {
      switch (paramInt2)
      {
      default: 
        Log.wtf(a, "unexpected request code " + paramInt1 + " call it a cancel");
      }
    }
    for (;;)
    {
      finish();
      return;
      if (paramIntent != null)
      {
        paramIntent = (PayPalAuthorization)paramIntent.getParcelableExtra("com.paypal.android.sdk.authorization");
        if (paramIntent != null)
        {
          Intent localIntent = new Intent();
          localIntent.putExtra("com.paypal.android.sdk.authorization", paramIntent);
          setResult(-1, localIntent);
        }
        else
        {
          Log.e(a, "result was OK, have data, but no authorization state in bundle, oops");
        }
      }
      else
      {
        Log.e(a, "result was OK, no intent data, oops");
      }
    }
  }
  
  protected final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    new StringBuilder().append(getClass().getSimpleName()).append(".onCreate");
    new ev(this).a();
    new eu(this).a();
    new et(this).a(Arrays.asList(new String[] { PayPalProfileSharingActivity.class.getName(), LoginActivity.class.getName(), FuturePaymentInfoActivity.class.getName(), ProfileSharingConsentActivity.class.getName() }));
    f = bindService(by.a(this), e, 1);
    ft.b(this);
    ft.a(this);
    paramBundle = new es(this);
    setContentView(a);
    b.setText(ek.a(em.y));
    by.a(this, null, em.y);
  }
  
  protected final Dialog onCreateDialog(int paramInt, Bundle paramBundle)
  {
    switch (paramInt)
    {
    default: 
      return by.a(this, em.bc, paramBundle, paramInt);
    case 2: 
      return by.a(this, new bs(this));
    }
    return by.a(this, em.be, paramBundle, paramInt);
  }
  
  protected final void onDestroy()
  {
    new StringBuilder().append(getClass().getSimpleName()).append(".onDestroy");
    if (d != null)
    {
      d.o();
      d.r();
    }
    if (f)
    {
      unbindService(e);
      f = false;
    }
    super.onDestroy();
  }
}

/* Location:
 * Qualified Name:     com.paypal.android.sdk.payments.PayPalProfileSharingActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */