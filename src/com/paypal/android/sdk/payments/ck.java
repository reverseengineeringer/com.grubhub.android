package com.paypal.android.sdk.payments;

import android.app.Activity;
import android.app.Dialog;
import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.net.Uri;
import android.os.Bundle;
import android.text.Html;
import android.text.SpannableString;
import android.text.method.LinkMovementMethod;
import android.text.style.BulletSpan;
import android.text.style.URLSpan;
import android.util.Log;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.paypal.android.sdk.ad;
import com.paypal.android.sdk.bN;
import com.paypal.android.sdk.ej;
import com.paypal.android.sdk.ek;
import com.paypal.android.sdk.em;
import com.paypal.android.sdk.en;
import com.paypal.android.sdk.ft;
import com.paypal.android.sdk.o;
import com.paypal.android.sdk.r;
import com.paypal.android.sdk.s;
import com.paypal.android.sdk.t;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

abstract class ck
  extends Activity
{
  private static final String d = ck.class.getSimpleName();
  private static final Map l = new cm();
  protected PayPalService a;
  protected PayPalOAuthScopes b;
  protected en c;
  private boolean e;
  private ch f;
  private boolean g;
  private boolean h;
  private boolean i;
  private aQ j;
  private final ServiceConnection k = new cs(this);
  
  private void a(int paramInt, PayPalAuthorization paramPayPalAuthorization)
  {
    Intent localIntent = new Intent();
    localIntent.putExtra("com.paypal.android.sdk.authorization", paramPayPalAuthorization);
    setResult(paramInt, localIntent);
  }
  
  private void a(int paramInt, String paramString1, String paramString2, l paraml)
  {
    paramString1 = new SpannableString(Html.fromHtml(paramString2 + paramString1));
    if (paraml != null)
    {
      paramString2 = (URLSpan[])paramString1.getSpans(0, paramString1.length(), URLSpan.class);
      if (paramString2.length > 0)
      {
        paramString2 = paramString2[0];
        paramString1.setSpan(new b(paramString2, this, FuturePaymentInfoActivity.class, new cl(this), paraml), paramString1.getSpanStart(paramString2), paramString1.getSpanEnd(paramString2), 33);
        paramString1.removeSpan(paramString2);
      }
    }
    for (;;)
    {
      paramString1.setSpan(new BulletSpan(15), 0, paramString1.length(), 0);
      c.c[paramInt].setVisibility(0);
      c.c[paramInt].setFocusable(true);
      c.c[paramInt].setNextFocusLeftId(paramInt + 100 - 1);
      c.c[paramInt].setNextFocusRightId(paramInt + 100 + 1);
      c.c[paramInt].setText(paramString1);
      return;
      a(paramString1);
    }
  }
  
  private void a(SpannableString paramSpannableString)
  {
    int m = 0;
    URLSpan[] arrayOfURLSpan = (URLSpan[])paramSpannableString.getSpans(0, paramSpannableString.length(), URLSpan.class);
    int n = arrayOfURLSpan.length;
    while (m < n)
    {
      URLSpan localURLSpan = arrayOfURLSpan[m];
      paramSpannableString.setSpan(new aT(localURLSpan, new cn(this)), paramSpannableString.getSpanStart(localURLSpan), paramSpannableString.getSpanEnd(localURLSpan), 33);
      paramSpannableString.removeSpan(localURLSpan);
      m += 1;
    }
  }
  
  private void a(ch paramch)
  {
    a.d().j = a;
    a.d().f = b;
    a.d().d = c;
    j();
  }
  
  private void b(SpannableString paramSpannableString)
  {
    int m = 0;
    URLSpan[] arrayOfURLSpan = (URLSpan[])paramSpannableString.getSpans(0, paramSpannableString.length(), URLSpan.class);
    int n = arrayOfURLSpan.length;
    while (m < n)
    {
      URLSpan localURLSpan = arrayOfURLSpan[m];
      paramSpannableString.setSpan(new aT(localURLSpan, new co(this)), paramSpannableString.getSpanStart(localURLSpan), paramSpannableString.getSpanEnd(localURLSpan), 33);
      paramSpannableString.removeSpan(localURLSpan);
      m += 1;
    }
  }
  
  private void c()
  {
    if (a != null)
    {
      showDialog(2);
      if (!a.j())
      {
        new StringBuilder("token is expired, get new one. AccessToken: ").append(a.d().c);
        a.a(new cp(this), true);
      }
    }
    else
    {
      return;
    }
    a.p();
  }
  
  private void d()
  {
    e = bindService(by.a(this), k, 1);
  }
  
  private void e()
  {
    new StringBuilder().append(d).append(".doLogin");
    if (ci.a(this, a))
    {
      Intent localIntent = new r().a(a.e().j(), s.a, t.a, a.c().d().e());
      new StringBuilder("startActivityForResult(").append(localIntent).append(", 2").append(")");
      Log.w("paypal.sdk", "requesting code with scope=null from Authenticator.");
      startActivityForResult(localIntent, 2);
      return;
    }
    LoginActivity.a(this, 1, null, true, false, b.b(), a.e());
  }
  
  private void f()
  {
    if ((b == null) || (j == null)) {
      break label14;
    }
    label14:
    while (a == null) {
      return;
    }
    Object localObject1 = a.e().k();
    if (j.d() != null) {
      localObject1 = j.d();
    }
    String str2 = a.e().l().toString();
    if (j.b() != null) {
      str2 = j.b();
    }
    String str3 = a.e().m().toString();
    if (j.c() != null) {
      str3 = j.c();
    }
    Object localObject2 = String.format(ek.a(em.V), new Object[] { "<b>" + (String)localObject1 + "</b>" });
    String str1;
    if (ek.a)
    {
      str1 = "‏";
      label174:
      c.c[0].setText(Html.fromHtml(str1 + (String)localObject2));
      if (ek.a) {
        c.c[0].setGravity(5);
      }
      c.c[0].setVisibility(0);
      localObject2 = b.a();
      if ((!((List)localObject2).contains(o.a.a())) && (!((List)localObject2).contains(o.i.a())) && (!((List)localObject2).contains(o.j.a()))) {
        break label1077;
      }
      a(1, String.format(ek.a(em.Y), new Object[] { "future-payment-consent", "<b>" + (String)localObject1 + "</b>", "<b>" + (String)localObject1 + "</b>" }), str1, l.a);
    }
    label1072:
    label1077:
    for (int n = 2;; n = 1)
    {
      int m = n;
      if (((List)localObject2).contains(o.h.a()))
      {
        a(n, ek.a(em.X), str1, null);
        m = n + 1;
      }
      n = m;
      if (((List)localObject2).contains(o.k.a()))
      {
        a(m, ek.a(em.W), str1, l.b);
        n = m + 1;
      }
      m = n;
      if (((List)localObject2).contains(o.l.a()))
      {
        a(n, String.format(ek.a(em.ac), new Object[] { "", localObject1 }), str1, l.c);
        m = n + 1;
      }
      n = m;
      if (((List)localObject2).contains(o.m.a()))
      {
        a(m, String.format(ek.a(em.ab), new Object[] { "", localObject1 }), str1, l.d);
        n = m + 1;
      }
      int i1 = n;
      if (((List)localObject2).contains(o.n.a()))
      {
        a(n, ek.a(em.Z), str1, null);
        i1 = n + 1;
      }
      m = i1;
      if (((List)localObject2).contains(o.o.a()))
      {
        a(i1, ek.a(em.U), str1, null);
        m = i1 + 1;
      }
      i1 = m;
      if (!Collections.disjoint((Collection)localObject2, o.p)) {
        if (g().size() <= 0) {
          break label1072;
        }
      }
      for (n = 1;; n = 0)
      {
        i1 = m;
        if (n != 0)
        {
          a(m, String.format(ek.a(em.T), new Object[] { h() }), str1, null);
          i1 = m + 1;
        }
        a(i1, String.format(ek.a(em.aa), new Object[] { "<b>" + (String)localObject1 + "</b>", str2, str3 }), str1, null);
        c.c[i1].setNextFocusRightId(2);
        str3 = ek.a(em.aD);
        str2 = Locale.getDefault().getCountry().toLowerCase(Locale.US);
        localObject1 = str2;
        if (ft.b(str2)) {
          localObject1 = "us";
        }
        localObject1 = String.format(str3, new Object[] { String.format("https://www.paypal.com/%s/cgi-bin/webscr?cmd=p/gen/ua/policy_privacy-outside", new Object[] { localObject1 }) });
        localObject1 = new SpannableString(Html.fromHtml(str1 + (String)localObject1));
        b((SpannableString)localObject1);
        c.d.setText((CharSequence)localObject1);
        c.d.setMovementMethod(LinkMovementMethod.getInstance());
        c.d.setNextFocusLeftId(i1 + 1 + 100 - 1);
        c.d.setNextFocusRightId(1);
        localObject1 = ft.b(a.e().a());
        if (localObject1 != null)
        {
          c.e.setText((CharSequence)localObject1);
          c.e.setVisibility(0);
        }
        c.i.setText(ek.a(em.F));
        c.g.setOnClickListener(new cu(this));
        c.h.setOnClickListener(new a(this));
        c.h.setEnabled(true);
        if (f == null) {
          break;
        }
        a(f);
        f = null;
        return;
        str1 = "";
        break label174;
      }
    }
  }
  
  private Set g()
  {
    List localList = b.a();
    LinkedHashSet localLinkedHashSet = new LinkedHashSet();
    c[] arrayOfc = c.values();
    int n = arrayOfc.length;
    int m = 0;
    if (m < n)
    {
      Object localObject = arrayOfc[m];
      if ((j.a().contains(((c)localObject).name())) && (localList.contains(((o)l.get(localObject)).a())))
      {
        if (localObject != c.a) {
          break label112;
        }
        localObject = null;
      }
      for (;;)
      {
        if (localObject != null) {
          localLinkedHashSet.add(localObject);
        }
        m += 1;
        break;
        label112:
        if (localObject == c.k) {
          localObject = ek.a(em.G);
        } else if (localObject == c.i) {
          localObject = ek.a(em.H);
        } else if (localObject == c.j) {
          localObject = ek.a(em.I);
        } else if ((localObject == c.m) || (localObject == c.n) || (localObject == c.o) || (localObject == c.p) || (localObject == c.q) || (localObject == c.r)) {
          localObject = ek.a(em.J);
        } else if (localObject == c.h) {
          localObject = ek.a(em.K);
        } else if (localObject == c.d) {
          localObject = ek.a(em.L);
        } else if (localObject == c.l) {
          localObject = ek.a(em.M);
        } else if (localObject == c.b) {
          localObject = ek.a(em.N);
        } else if (localObject == c.c) {
          localObject = ek.a(em.O);
        } else if (localObject == c.g) {
          localObject = ek.a(em.P);
        } else if (localObject == c.f) {
          localObject = ek.a(em.Q);
        } else if (localObject == c.s) {
          localObject = ek.a(em.R);
        } else if (localObject == c.e) {
          localObject = ek.a(em.S);
        } else {
          localObject = ((c)localObject).name();
        }
      }
    }
    return localLinkedHashSet;
  }
  
  private String h()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    Iterator localIterator = g().iterator();
    int m = 1;
    if (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      if (m == 0) {
        localStringBuilder.append(", ");
      }
      for (;;)
      {
        localStringBuilder.append(str);
        break;
        m = 0;
      }
    }
    return localStringBuilder.toString();
  }
  
  private void i()
  {
    a(-1, new PayPalAuthorization(a.f(), a.d().f.b(), a.d().d));
    finish();
  }
  
  private void j()
  {
    String str = a.d().f.a();
    if ((str != null) && (Arrays.asList(str.split(" ")).containsAll(b.a())))
    {
      i();
      return;
    }
    c();
  }
  
  private void k()
  {
    try
    {
      dismissDialog(2);
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException) {}
  }
  
  protected abstract void a();
  
  public void finish()
  {
    super.finish();
    new StringBuilder().append(d).append(".finish");
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    new StringBuilder().append(d).append(".onActivityResult(").append(paramInt1).append(",").append(paramInt2).append(",").append(paramIntent).append(")");
    switch (paramInt1)
    {
    default: 
      Log.e(d, "unhandled requestCode " + paramInt1);
      return;
    case 1: 
      if (paramInt2 == -1)
      {
        if (a == null)
        {
          i = true;
          return;
        }
        j();
        return;
      }
      a(paramInt2, null);
      finish();
      return;
    }
    if (paramInt2 == -1)
    {
      paramIntent = cj.a(paramIntent.getExtras());
      if (a == null)
      {
        f = paramIntent;
        return;
      }
      a(paramIntent);
      return;
    }
    a(paramInt2, null);
    finish();
  }
  
  public void onBackPressed()
  {
    a.a(ej.m);
    super.onBackPressed();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    new StringBuilder().append(d).append(".onCreate");
    Object localObject;
    int m;
    if (paramBundle == null)
    {
      paramBundle = getClass().getName();
      localObject = getCallingActivity();
      if (localObject == null)
      {
        Log.e("paypal.sdk", paramBundle + " called by a null activity, not allowed");
        m = 0;
        if (m == 0) {
          finish();
        }
        g = false;
      }
    }
    for (;;)
    {
      a();
      j = ((aQ)getIntent().getParcelableExtra("com.paypal.android.sdk.payments.ppAppInfo"));
      d();
      ft.b(this);
      ft.a(this);
      c = new en(this);
      setContentView(c.a);
      by.a(this, c.b, null);
      c.g.setText(ek.a(em.f));
      c.g.setVisibility(0);
      f();
      return;
      localObject = ((ComponentName)localObject).getClassName();
      if (!((String)localObject).startsWith("com.paypal.android.sdk.payments."))
      {
        Log.e("paypal.sdk", paramBundle + " called by " + (String)localObject + " which is not part of the SDK, not allowed");
        m = 0;
        break;
      }
      m = 1;
      break;
      g = paramBundle.getBoolean("pageTrackingSent");
      h = paramBundle.getBoolean("isLoginActivityStarted");
    }
  }
  
  protected Dialog onCreateDialog(int paramInt, Bundle paramBundle)
  {
    switch (paramInt)
    {
    default: 
      return null;
    case 1: 
      return by.a(this, em.bk, paramBundle.getString("alert_errors"), new bz());
    case 2: 
      return by.a(this, em.aE, em.bp);
    case 3: 
      return by.a(this, em.an, paramBundle, paramInt);
    }
    return by.a(this, em.aM, paramBundle, new cr(this));
  }
  
  protected void onDestroy()
  {
    new StringBuilder().append(d).append(".onDestroy");
    if (a != null) {
      a.m();
    }
    if (e)
    {
      unbindService(k);
      e = false;
    }
    super.onDestroy();
  }
  
  protected void onRestart()
  {
    super.onRestart();
    d();
  }
  
  protected void onResume()
  {
    super.onResume();
    new StringBuilder().append(d).append(".onResume");
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putBoolean("pageTrackingSent", g);
    paramBundle.putBoolean("isLoginActivityStarted", h);
  }
}

/* Location:
 * Qualified Name:     com.paypal.android.sdk.payments.ck
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */