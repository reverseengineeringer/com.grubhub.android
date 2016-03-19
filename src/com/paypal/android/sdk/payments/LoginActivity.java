package com.paypal.android.sdk.payments;

import android.app.Activity;
import android.app.Dialog;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.text.Editable;
import android.text.method.PasswordTransformationMethod;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TableLayout;
import android.widget.TextView;
import com.paypal.android.sdk.bE;
import com.paypal.android.sdk.ca;
import com.paypal.android.sdk.cg;
import com.paypal.android.sdk.cj;
import com.paypal.android.sdk.cm;
import com.paypal.android.sdk.cy;
import com.paypal.android.sdk.ed;
import com.paypal.android.sdk.ej;
import com.paypal.android.sdk.ek;
import com.paypal.android.sdk.em;
import com.paypal.android.sdk.eo;
import com.paypal.android.sdk.ep;
import com.paypal.android.sdk.eq;
import com.paypal.android.sdk.er;
import com.paypal.android.sdk.ey;
import com.paypal.android.sdk.ft;
import com.paypal.android.sdk.g;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Map;

public final class LoginActivity
  extends Activity
{
  private final String a = LoginActivity.class.getSimpleName();
  private aj b;
  private String c;
  private String d;
  private String e;
  private String f;
  private String g;
  private String h;
  private ca i;
  private String j;
  private boolean k;
  private boolean l;
  private boolean m;
  private boolean n;
  private int o;
  private ep p;
  private boolean q;
  private PayPalService r;
  private final ServiceConnection s = new w(this);
  
  private ca a(aj paramaj)
  {
    g();
    if (paramaj == aj.b)
    {
      paramaj = ed.a();
      if (f == null) {}
      for (paramaj = new cg(paramaj, e);; paramaj = new cg(paramaj, new g(f), e)) {
        return new ca(paramaj, g);
      }
    }
    if (paramaj == aj.a) {
      return new ca(c, d);
    }
    return i;
  }
  
  static void a(Activity paramActivity, int paramInt, bE parambE, boolean paramBoolean1, boolean paramBoolean2, String paramString, PayPalConfiguration paramPayPalConfiguration)
  {
    parambE = new Intent(paramActivity, LoginActivity.class);
    parambE.putExtras(paramActivity.getIntent());
    parambE.putExtra("com.paypal.android.sdk.payments.persistedLogin", null);
    parambE.putExtra("com.paypal.android.sdk.payments.useResponseTypeCode", true);
    parambE.putExtra("com.paypal.android.sdk.payments.forceLogin", false);
    parambE.putExtra("com.paypal.android.sdk.payments.requestedScopes", paramString);
    parambE.putExtra("com.paypal.android.sdk.paypalConfiguration", paramPayPalConfiguration);
    paramActivity.startActivityForResult(parambE, 1);
  }
  
  private String b()
  {
    if (c()) {
      return "code";
    }
    return "token";
  }
  
  private void b(aj paramaj)
  {
    new StringBuilder("changeLoginState:").append(paramaj);
    if (paramaj != null) {
      b = paramaj;
    }
    try
    {
      label24:
      dismissDialog(20);
      dismissDialog(21);
      switch (bb.a[b.ordinal()])
      {
      }
      for (;;)
      {
        switch (bb.a[b.ordinal()])
        {
        default: 
          return;
          new StringBuilder("null loginState, refreshing:").append(b);
          break label24;
          j();
          m();
          p.b.setEnabled(true);
          p.d.setEnabled(true);
          h();
          continue;
          j();
          n();
          p.b.setEnabled(true);
          p.d.setEnabled(true);
          h();
          continue;
          showDialog(20);
          j();
          m();
          p.b.setEnabled(false);
          p.d.setEnabled(false);
          p.h.setEnabled(false);
          continue;
          showDialog(20);
          j();
          n();
          p.h.setEnabled(false);
          continue;
          l();
          k();
          p.o.c.setText(ek.a(em.aY));
          p.l.setEnabled(false);
          p.l.setVisibility(8);
          p.m.setEnabled(false);
          p.m.setVisibility(8);
          continue;
          showDialog(21);
          l();
          k();
          p.o.c.setText(ek.a(em.aZ));
          p.l.setEnabled(false);
          p.l.setVisibility(8);
          p.m.setEnabled(false);
          p.m.setVisibility(8);
          continue;
          showDialog(21);
          l();
          k();
          p.o.c.setText(ek.a(em.aZ));
          p.l.setEnabled(false);
          p.l.setVisibility(0);
          p.m.setEnabled(false);
          p.m.setVisibility(0);
          continue;
          l();
          k();
          p.o.c.setText(ek.a(em.aZ));
          p.l.setEnabled(true);
          p.l.setVisibility(0);
          paramaj = p.l;
          paramaj.requestFocus();
          new Handler().postDelayed(new r(this, paramaj), 200L);
          p.m.setVisibility(0);
          i();
          continue;
          showDialog(20);
          l();
          k();
          p.o.c.setText(ek.a(em.aZ));
          p.l.setEnabled(false);
          p.l.setVisibility(0);
          p.m.setEnabled(false);
          p.m.setVisibility(0);
        }
      }
      r.a(new bi(this));
      return;
      r.a(new p(this));
      return;
      r.a(new q(this));
      return;
    }
    catch (IllegalArgumentException paramaj)
    {
      for (;;) {}
    }
  }
  
  private boolean c()
  {
    return getIntent().getBooleanExtra("com.paypal.android.sdk.payments.useResponseTypeCode", false);
  }
  
  private void d()
  {
    if (r.d().g.a.isEmpty())
    {
      o();
      by.a(this, ek.a(em.ba), 10);
      return;
    }
    b(aj.g);
  }
  
  private void e()
  {
    setResult(-1);
    finish();
  }
  
  private void f()
  {
    by.a(p.c.b, r.f());
    b(null);
  }
  
  private void g()
  {
    if (b == aj.b)
    {
      e = p.b.getText().toString();
      g = p.d.getText().toString();
      return;
    }
    c = p.b.getText().toString();
    d = p.d.getText().toString();
  }
  
  private void h()
  {
    boolean bool = true;
    String str1 = p.b.getText().toString();
    String str2 = p.d.getText().toString();
    if (b == aj.b) {
      if ((!ey.d(str1)) || (!ey.b(str2))) {}
    }
    for (;;)
    {
      p.h.setEnabled(bool);
      p.h.setFocusable(bool);
      return;
      bool = false;
      continue;
      if ((!ey.a(str1)) || (!ey.c(str2))) {
        bool = false;
      }
    }
  }
  
  private void i()
  {
    if (6 == p.l.getText().toString().length()) {}
    for (boolean bool = true;; bool = false)
    {
      p.m.setEnabled(bool);
      return;
    }
  }
  
  private void j()
  {
    p.o.a.setVisibility(8);
    p.k.setEnabled(false);
    p.k.setVisibility(8);
    p.o.c.setVisibility(8);
    p.m.setEnabled(false);
    p.m.setVisibility(8);
    p.l.setEnabled(false);
    p.l.setVisibility(8);
  }
  
  private void k()
  {
    by.a(this, null, em.aT);
    p.k.setEnabled(true);
    p.k.setVisibility(0);
    new StringBuilder("phone numbers: ").append(r.d().g.a);
    ArrayList localArrayList = new ArrayList(r.d().g.a.values());
    p.o.a((String)localArrayList.get(o));
    p.o.a.setVisibility(0);
    if (localArrayList.size() > 1)
    {
      p.o.a(true);
      eq localeq = new eq(this, localArrayList, o);
      new ListView(this).setAdapter(localeq);
      p.o.b.setOnClickListener(new u(this, localeq, localArrayList));
    }
    for (;;)
    {
      p.o.c.setVisibility(0);
      return;
      p.o.a(false);
    }
  }
  
  private void l()
  {
    p.h.setEnabled(false);
    p.h.setVisibility(8);
    p.b.setEnabled(false);
    p.b.setVisibility(8);
    p.d.setEnabled(false);
    p.d.setVisibility(8);
    p.e.setEnabled(false);
    p.e.setVisibility(8);
  }
  
  private void m()
  {
    by.a(this, null, em.aq);
    p.b.setVisibility(0);
    p.b.setText(c);
    p.b.setHint(ek.a(em.ae));
    p.b.setInputType(33);
    p.d.setVisibility(0);
    p.d.setText(d);
    p.d.setHint(ek.a(em.au));
    p.d.setInputType(129);
    if ((p.b.getText().length() > 0) && (p.d.getText().length() == 0)) {
      p.d.requestFocus();
    }
    p.h.setVisibility(0);
    p.e.setVisibility(0);
    p.f.setVisibility(0);
    p.g.setVisibility(0);
    p.j.setText(ek.a(em.bo));
  }
  
  private void n()
  {
    by.a(this, null, em.aq);
    p.b.setVisibility(0);
    p.b.setText(e);
    p.b.setHint(ek.a(em.aA));
    p.b.setInputType(3);
    p.d.setVisibility(0);
    p.d.setText(g);
    p.d.setHint(ek.a(em.aB));
    EditText localEditText = p.d;
    if (Build.VERSION.SDK_INT < 11) {}
    for (int i1 = 2;; i1 = 18)
    {
      localEditText.setInputType(i1);
      if (Build.VERSION.SDK_INT < 11) {
        localEditText.setTransformationMethod(PasswordTransformationMethod.getInstance());
      }
      if ((p.b.getText().length() > 0) && (p.d.getText().length() == 0)) {
        p.d.requestFocus();
      }
      p.h.setVisibility(0);
      p.e.setVisibility(0);
      p.f.setVisibility(0);
      p.g.setVisibility(4);
      p.j.setText(ek.a(em.bn));
      return;
    }
  }
  
  private void o()
  {
    switch (bb.a[b.ordinal()])
    {
    default: 
      new StringBuilder().append(b).append(" case not handled");
      return;
    case 1: 
      b(aj.e);
      return;
    case 2: 
      b(aj.f);
      return;
    case 5: 
      b(aj.m);
      return;
    }
    b(aj.l);
  }
  
  final void a()
  {
    int i1 = 1;
    Object localObject = r.e();
    if (ek.a)
    {
      p.d.setGravity(5);
      p.b.setGravity(5);
      p.l.setGravity(5);
    }
    if ((!ey.f(Locale.getDefault().getCountry().toLowerCase(Locale.US))) || (!r.d().i)) {
      p.j.setVisibility(4);
    }
    if (m)
    {
      m = false;
      c = ((PayPalConfiguration)localObject).c();
      String str = ((PayPalConfiguration)localObject).d();
      if (str != null) {
        e = str;
      }
      str = ((PayPalConfiguration)localObject).e();
      if (str != null) {
        f = str;
      }
      if ((((PayPalConfiguration)localObject).f()) && (!cj.c(((PayPalConfiguration)localObject).b())))
      {
        d = ((PayPalConfiguration)localObject).g();
        g = ((PayPalConfiguration)localObject).h();
      }
    }
    if ((getIntent().getBooleanExtra("com.paypal.android.sdk.payments.forceLogin", false)) && (!n))
    {
      n = true;
      r.i();
    }
    if (!r.k())
    {
      if (!k)
      {
        k = true;
        r.a(ej.e, Boolean.valueOf(l));
      }
      if (b == null)
      {
        localObject = (bE)getIntent().getParcelableExtra("com.paypal.android.sdk.payments.persistedLogin");
        if (localObject == null) {
          break label394;
        }
        l = true;
        if (ft.a(c))
        {
          if (ft.a(((bE)localObject).b())) {
            break label369;
          }
          if (i1 != 0) {
            c = ((bE)localObject).b();
          }
        }
        if ((e == null) && (((bE)localObject).a() != null)) {
          e = ((bE)localObject).a().a(ed.a());
        }
        switch (bb.b[localObject.c().ordinal()])
        {
        }
      }
      for (;;)
      {
        f();
        return;
        label369:
        i1 = 0;
        break;
        b(aj.a);
        continue;
        b(aj.b);
        continue;
        label394:
        b(aj.a);
      }
    }
    e();
  }
  
  public final void onBackPressed()
  {
    r.a(ej.j, Boolean.valueOf(l));
    super.onBackPressed();
  }
  
  protected final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    new StringBuilder().append(getClass().getSimpleName()).append(".onCreate");
    j = getIntent().getExtras().getString("com.paypal.android.sdk.payments.requestedScopes");
    q = bindService(by.a(this), s, 1);
    ft.b(this);
    ft.a(this);
    p = new ep(this);
    setContentView(p.a);
    p.f.setText(ek.a(em.aO));
    p.g.setText(ek.a(em.aj));
    p.i.setText(ek.a(em.ap));
    p.i.setHint(ek.a(em.ap));
    p.k.setText(ek.a(em.aU));
    p.l.setHint(ek.a(em.aW));
    p.n.setText(ek.a(em.ap));
    p.o.b(ek.a(em.aX));
    o localo = new o(this);
    p.b.addTextChangedListener(localo);
    p.d.addTextChangedListener(localo);
    p.h.setOnClickListener(new ae(this));
    p.g.setOnClickListener(new bc(this));
    p.j.setOnClickListener(new bd(this));
    p.f.setOnClickListener(new be(this));
    p.o.c.setOnClickListener(new bf(this));
    p.l.addTextChangedListener(new bg(this));
    p.m.setOnClickListener(new bh(this));
    if (paramBundle == null)
    {
      k = false;
      m = true;
    }
    for (;;)
    {
      p.l.setText(h);
      return;
      m = false;
      k = paramBundle.getBoolean("PP_PageTrackingSent");
      b = ((aj)paramBundle.getParcelable("PP_LoginType"));
      c = paramBundle.getString("PP_SavedEmail");
      e = paramBundle.getString("PP_SavedPhone");
      f = paramBundle.getString("PP_savedPhoneCountryCode");
      d = paramBundle.getString("PP_SavedPassword");
      g = paramBundle.getString("PP_SavedPIN");
      l = paramBundle.getBoolean("PP_IsReturningUser");
      n = paramBundle.getBoolean("PP_IsClearedLogin");
      j = paramBundle.getString("PP_RequestedScopes");
      h = paramBundle.getString("PP_SavedOTP");
      i = ((ca)paramBundle.getParcelable("PP_OriginalLoginData"));
      o = paramBundle.getInt("PP_TwoFaSelectedPhoneNumberIndex");
    }
  }
  
  protected final Dialog onCreateDialog(int paramInt, Bundle paramBundle)
  {
    switch (paramInt)
    {
    default: 
      return null;
    case 1: 
      return by.a(this, em.bm, paramBundle, new y(this));
    case 2: 
      return by.a(this, em.bh, paramBundle, new z(this));
    case 3: 
      return by.a(this, em.bm, paramBundle, new aa(this));
    case 4: 
      return by.a(this, em.bm, paramBundle, new ab(this));
    case 5: 
      return by.a(this, em.aM, paramBundle, new ad(this));
    case 10: 
      return by.a(this, em.bm, paramBundle, new ba(this));
    case 20: 
      return by.a(this, em.c, em.bp);
    }
    return by.a(this, em.aV, em.bp);
  }
  
  protected final void onDestroy()
  {
    new StringBuilder().append(getClass().getSimpleName()).append(".onDestroy");
    if (r != null) {
      r.n();
    }
    if (q)
    {
      unbindService(s);
      q = false;
    }
    super.onDestroy();
  }
  
  protected final void onResume()
  {
    super.onResume();
    new StringBuilder().append(getClass().getSimpleName()).append(".onResume");
    if (r != null) {
      f();
    }
  }
  
  protected final void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    g();
    paramBundle.putParcelable("PP_LoginType", b);
    paramBundle.putString("PP_SavedEmail", c);
    paramBundle.putString("PP_SavedPhone", e);
    paramBundle.putString("PP_savedPhoneCountryCode", f);
    paramBundle.putString("PP_SavedPassword", d);
    paramBundle.putString("PP_SavedPIN", g);
    paramBundle.putBoolean("PP_IsReturningUser", l);
    paramBundle.putBoolean("PP_PageTrackingSent", k);
    paramBundle.putBoolean("PP_IsClearedLogin", n);
    paramBundle.putString("PP_RequestedScopes", j);
    paramBundle.putString("PP_SavedOTP", h);
    paramBundle.putParcelable("PP_OriginalLoginData", i);
    paramBundle.putInt("PP_TwoFaSelectedPhoneNumberIndex", o);
  }
}

/* Location:
 * Qualified Name:     com.paypal.android.sdk.payments.LoginActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */