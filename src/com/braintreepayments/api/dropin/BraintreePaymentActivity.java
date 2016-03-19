package com.braintreepayments.api.dropin;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.ActionBar;
import android.app.Activity;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.MenuItem;
import android.view.View;
import com.braintreepayments.api.exceptions.ErrorWithResponse;
import com.braintreepayments.api.exceptions.f;
import com.braintreepayments.api.exceptions.g;
import com.braintreepayments.api.exceptions.i;
import com.braintreepayments.api.h;
import com.braintreepayments.api.models.AndroidPayCard;
import com.braintreepayments.api.models.Card;
import com.braintreepayments.api.models.PayPalAccount;
import com.braintreepayments.api.models.PaymentMethod;
import com.google.android.gms.wallet.Cart;
import java.util.List;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

public class BraintreePaymentActivity
  extends Activity
  implements com.braintreepayments.api.d, com.braintreepayments.api.e, h, com.braintreepayments.api.j
{
  private com.braintreepayments.api.c a;
  private a b;
  private m c;
  private AtomicBoolean d = new AtomicBoolean(false);
  private Bundle e;
  private d f;
  
  private <T extends View> T a(int paramInt)
  {
    return findViewById(paramInt);
  }
  
  private void a(View paramView)
  {
    if (b == null) {
      b = new a(this, e, paramView, a, f);
    }
  }
  
  private void a(c paramc, Bundle paramBundle)
  {
    if (paramc != null) {
      paramc.a(paramBundle);
    }
  }
  
  @TargetApi(11)
  private void a(boolean paramBoolean)
  {
    if (Build.VERSION.SDK_INT >= 11)
    {
      ActionBar localActionBar = getActionBar();
      if (localActionBar != null) {
        localActionBar.setDisplayHomeAsUpEnabled(paramBoolean);
      }
    }
  }
  
  private void e()
  {
    a.c();
    a.a("sdk.initialized");
    a.a(this);
    a.o();
    if (a.l())
    {
      if (e.getBoolean("com.braintreepayments.api.dropin.PAYMENT_METHOD_ADD_FORM"))
      {
        a();
        return;
      }
      a(a.m());
      return;
    }
    a.i();
    g();
  }
  
  private void f()
  {
    b.c();
    h();
    c.b(0);
  }
  
  private void g()
  {
    Executors.newScheduledThreadPool(1).schedule(new Runnable()
    {
      public void run()
      {
        if (!BraintreePaymentActivity.a(BraintreePaymentActivity.this).get()) {
          runOnUiThread(new Runnable()
          {
            public void run()
            {
              BraintreePaymentActivity.a(BraintreePaymentActivity.this).set(true);
              a();
            }
          });
        }
      }
    }, 10L, TimeUnit.SECONDS);
    b();
  }
  
  private void h()
  {
    View localView = b.SELECT_VIEW.show(this);
    if (c == null) {
      c = new m(this, e, localView, a, f);
    }
    a(false);
  }
  
  private String i()
  {
    String str2 = getIntent().getStringExtra("com.braintreepayments.api.dropin.EXTRA_CLIENT_TOKEN");
    String str1 = str2;
    if (str2 == null)
    {
      str2 = e.getString("com.braintreepayments.api.dropin.EXTRA_CLIENT_TOKEN");
      str1 = str2;
      if (str2 == null) {
        throw new IllegalArgumentException("A client token must be specified with " + BraintreePaymentActivity.class.getSimpleName() + ".EXTRA_CLIENT_TOKEN extra");
      }
    }
    return str1;
  }
  
  @SuppressLint({"NewApi"})
  private void j()
  {
    ActionBar localActionBar;
    if (Build.VERSION.SDK_INT >= 11)
    {
      localActionBar = getActionBar();
      if (localActionBar != null)
      {
        if (!TextUtils.isEmpty(f.a())) {
          break label81;
        }
        localActionBar.setTitle(getString(l.bt_default_action_bar_text));
      }
    }
    for (;;)
    {
      if (Build.VERSION.SDK_INT >= 14)
      {
        if (f.b() != 0) {
          break;
        }
        localActionBar.setLogo(new ColorDrawable(getResources().getColor(17170445)));
      }
      return;
      label81:
      localActionBar.setTitle(f.a());
    }
    localActionBar.setLogo(f.b());
  }
  
  private d k()
  {
    d locald2 = (d)getIntent().getSerializableExtra("com.braintreepayments.api.dropin.EXTRA_CUSTOMIZATION");
    d locald1 = locald2;
    if (locald2 == null) {
      locald1 = new e().a();
    }
    return locald1;
  }
  
  protected void a()
  {
    a.a("add-card.start");
    a(b.CARD_FORM.show(this));
    if (a.m().size() > 0) {
      a(true);
    }
  }
  
  public void a(ErrorWithResponse paramErrorWithResponse)
  {
    b.a(paramErrorWithResponse);
  }
  
  public void a(final PaymentMethod paramPaymentMethod)
  {
    if ((paramPaymentMethod instanceof Card)) {
      if ((paramPaymentMethod.e() != null) && (paramPaymentMethod.e().equals("venmo-app"))) {
        f();
      }
    }
    do
    {
      return;
      a.a("add-card.success");
      b.d();
      Executors.newScheduledThreadPool(1).schedule(new Runnable()
      {
        public void run()
        {
          runOnUiThread(new Runnable()
          {
            public void run()
            {
              b(a);
            }
          });
        }
      }, 1L, TimeUnit.SECONDS);
      return;
      if ((paramPaymentMethod instanceof PayPalAccount))
      {
        a.a("add-paypal.success");
        f();
        return;
      }
    } while (!(paramPaymentMethod instanceof AndroidPayCard));
    a.a("add-android-pay.success");
    f();
  }
  
  public void a(Throwable paramThrowable)
  {
    if ((b.access$000(b.LOADING_VIEW)) && (!d.get()))
    {
      d.set(true);
      a();
      return;
    }
    if (((paramThrowable instanceof com.braintreepayments.api.exceptions.b)) || ((paramThrowable instanceof com.braintreepayments.api.exceptions.c)) || ((paramThrowable instanceof com.braintreepayments.api.exceptions.k)) || ((paramThrowable instanceof f)))
    {
      a.a("sdk.exit.developer-error");
      setResult(2, new Intent().putExtra("com.braintreepayments.api.dropin.EXTRA_ERROR_MESSAGE", paramThrowable));
    }
    for (;;)
    {
      finish();
      return;
      if (((paramThrowable instanceof i)) || ((paramThrowable instanceof com.braintreepayments.api.exceptions.j)))
      {
        a.a("sdk.exit.server-error");
        setResult(3, new Intent().putExtra("com.braintreepayments.api.dropin.EXTRA_ERROR_MESSAGE", paramThrowable));
      }
      else if ((paramThrowable instanceof g))
      {
        a.a("sdk.exit.server-unavailable");
        setResult(4, new Intent().putExtra("com.braintreepayments.api.dropin.EXTRA_ERROR_MESSAGE", paramThrowable));
      }
    }
  }
  
  public void a(List<PaymentMethod> paramList)
  {
    d.set(true);
    if (paramList.size() == 0)
    {
      a();
      return;
    }
    h();
  }
  
  public void a(boolean paramBoolean, com.braintreepayments.api.c paramc, String paramString, Exception paramException)
  {
    if (!paramBoolean)
    {
      setResult(3, new Intent().putExtra("com.braintreepayments.api.dropin.EXTRA_ERROR_MESSAGE", paramException));
      finish();
      return;
    }
    a = paramc;
    e();
  }
  
  protected void b()
  {
    b.LOADING_VIEW.show(this);
  }
  
  protected void b(PaymentMethod paramPaymentMethod)
  {
    a.a("sdk.exit.success");
    Intent localIntent = new Intent();
    localIntent.putExtra("com.braintreepayments.api.dropin.EXTRA_PAYMENT_METHOD", paramPaymentMethod);
    localIntent.putExtra("com.braintreepayments.api.dropin.EXTRA_PAYMENT_METHOD_NONCE", paramPaymentMethod.d());
    setResult(-1, localIntent);
    finish();
  }
  
  protected Cart c()
    throws NoClassDefFoundError
  {
    return (Cart)getIntent().getParcelableExtra("com.braintreepayments.api.dropin.EXTRA_CART");
  }
  
  protected boolean d()
  {
    return getIntent().getBooleanExtra("com.braintreepayments.api.dropin.EXTRA_ANDROID_PAY_IS_BILLING_AGREEMENT", false);
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (paramInt2 == -1) {
      if (paramInt1 == 11876)
      {
        a(b.CARD_FORM.inflateOrFind(this));
        b();
        b.a(paramInt1, paramInt2, paramIntent);
      }
    }
    do
    {
      return;
      if (paramInt2 == 0) {
        a.a("add-paypal.user-canceled");
      }
    } while (paramInt1 != 11876);
    a();
  }
  
  public void onBackPressed()
  {
    if ((b.access$000(b.CARD_FORM)) && (a.m().size() > 0)) {
      h();
    }
    while ((b != null) && (b.b())) {
      return;
    }
    if (a != null) {
      a.a("sdk.exit.user-canceled");
    }
    setResult(0);
    finish();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(k.bt_drop_in_ui);
    if (paramBundle != null) {}
    for (;;)
    {
      e = paramBundle;
      f = k();
      j();
      a = com.braintreepayments.api.c.a(this, e);
      if (a == null) {
        break;
      }
      e();
      return;
      paramBundle = new Bundle();
    }
    com.braintreepayments.api.c.a(this, i(), this);
    b();
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 16908332)
    {
      onBackPressed();
      return true;
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
  
  protected void onPause()
  {
    super.onPause();
    if (a != null) {
      a.b(this);
    }
  }
  
  protected void onResume()
  {
    super.onResume();
    if (a != null) {
      a.a(this);
    }
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putString("com.braintreepayments.api.dropin.EXTRA_CLIENT_TOKEN", i());
    if (b.access$000(b.CARD_FORM)) {
      paramBundle.putBoolean("com.braintreepayments.api.dropin.PAYMENT_METHOD_ADD_FORM", true);
    }
    a(b, paramBundle);
    a(c, paramBundle);
    if (a != null) {
      a.a(paramBundle);
    }
  }
}

/* Location:
 * Qualified Name:     com.braintreepayments.api.dropin.BraintreePaymentActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */