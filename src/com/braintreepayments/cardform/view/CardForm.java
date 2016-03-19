package com.braintreepayments.cardform.view;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.os.Build.VERSION;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnFocusChangeListener;
import android.view.Window;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import com.braintreepayments.cardform.b;
import com.braintreepayments.cardform.c;
import com.braintreepayments.cardform.g;
import com.braintreepayments.cardform.h;

public class CardForm
  extends LinearLayout
  implements TextWatcher, View.OnClickListener, View.OnFocusChangeListener, TextView.OnEditorActionListener, a
{
  private CardEditText a;
  private MonthYearEditText b;
  private CvvEditText c;
  private PostalCodeEditText d;
  private boolean e;
  private boolean f;
  private boolean g;
  private boolean h;
  private boolean i = false;
  private c j;
  private b k;
  private com.braintreepayments.cardform.a l;
  
  public CardForm(Context paramContext)
  {
    super(paramContext);
    h();
  }
  
  public CardForm(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    h();
  }
  
  @TargetApi(11)
  public CardForm(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    h();
  }
  
  @TargetApi(21)
  public CardForm(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    super(paramContext, paramAttributeSet, paramInt1, paramInt2);
    h();
  }
  
  private void a(EditText paramEditText)
  {
    paramEditText.requestFocus();
    ((InputMethodManager)getContext().getSystemService("input_method")).showSoftInput(paramEditText, 1);
  }
  
  private void a(EditText paramEditText, String paramString)
  {
    paramEditText.setImeOptions(2);
    paramEditText.setImeActionLabel(paramString, 2);
    paramEditText.setOnEditorActionListener(this);
  }
  
  private void h()
  {
    inflate(getContext(), h.bt_card_form_fields, this);
    setVisibility(8);
    a = ((CardEditText)findViewById(g.bt_card_form_card_number));
    b = ((MonthYearEditText)findViewById(g.bt_card_form_expiration));
    c = ((CvvEditText)findViewById(g.bt_card_form_cvv));
    d = ((PostalCodeEditText)findViewById(g.bt_card_form_postal_code));
    a.setOnFocusChangeListener(this);
    b.setOnFocusChangeListener(this);
    c.setOnFocusChangeListener(this);
    d.setOnFocusChangeListener(this);
    a.setOnClickListener(this);
    b.setOnClickListener(this);
    c.setOnClickListener(this);
    d.setOnClickListener(this);
    a.setOnCardTypeChangedListener(this);
  }
  
  public void a(Activity paramActivity, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4, String paramString)
  {
    if (Build.VERSION.SDK_INT >= 14) {
      paramActivity.getWindow().setFlags(8192, 8192);
    }
    e = paramBoolean1;
    f = paramBoolean2;
    g = paramBoolean3;
    h = paramBoolean4;
    if (paramBoolean1)
    {
      a.addTextChangedListener(this);
      if (!paramBoolean2) {
        break label160;
      }
      b.addTextChangedListener(this);
      label67:
      if ((!paramBoolean3) && (!paramBoolean4)) {
        break label172;
      }
      b.setImeOptions(5);
      label85:
      if (!paramBoolean3) {
        break label198;
      }
      c.addTextChangedListener(this);
      if (!paramBoolean4) {
        break label185;
      }
      c.setImeOptions(5);
      label111:
      if (!paramBoolean4) {
        break label210;
      }
      d.addTextChangedListener(this);
      a(d, paramString);
    }
    for (;;)
    {
      a.setOnCardTypeChangedListener(this);
      setVisibility(0);
      return;
      a.setVisibility(8);
      break;
      label160:
      b.setVisibility(8);
      break label67;
      label172:
      a(b, paramString);
      break label85;
      label185:
      a(c, paramString);
      break label111;
      label198:
      c.setVisibility(8);
      break label111;
      label210:
      d.setVisibility(8);
    }
  }
  
  public void a(com.braintreepayments.cardform.a.a parama)
  {
    c.setCardType(parama);
  }
  
  public boolean a()
  {
    boolean bool2;
    if (e) {
      if (a.a()) {
        bool2 = true;
      }
    }
    for (;;)
    {
      boolean bool1 = bool2;
      if (f)
      {
        if ((bool2) && (b.a())) {
          bool1 = true;
        }
      }
      else
      {
        label44:
        bool2 = bool1;
        if (g)
        {
          if ((!bool1) || (!c.a())) {
            break label102;
          }
          bool2 = true;
        }
      }
      for (;;)
      {
        if (h)
        {
          if ((bool2) && (d.a()))
          {
            return true;
            bool2 = false;
            break;
            bool1 = false;
            break label44;
            label102:
            bool2 = false;
            continue;
          }
          return false;
        }
      }
      return bool2;
      bool2 = true;
    }
  }
  
  public void afterTextChanged(Editable paramEditable)
  {
    boolean bool = a();
    if (i != bool)
    {
      i = bool;
      if (j != null) {
        j.a(bool);
      }
    }
  }
  
  public void b()
  {
    if (e) {
      a.c();
    }
    if (f) {
      b.c();
    }
    if (g) {
      c.c();
    }
    if (h) {
      d.c();
    }
  }
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void c()
  {
    if (e)
    {
      a.setError(true);
      a(a);
    }
  }
  
  public void d()
  {
    if (f)
    {
      b.setError(true);
      if ((!e) || (!a.isFocused())) {
        a(b);
      }
    }
  }
  
  public void e()
  {
    if (g)
    {
      c.setError(true);
      if (((!e) && (!f)) || ((!a.isFocused()) && (!b.isFocused()))) {
        a(c);
      }
    }
  }
  
  public void f()
  {
    if (h)
    {
      d.setError(true);
      if (((!e) && (!f) && (!g)) || ((!a.isFocused()) && (!b.isFocused()) && (!c.isFocused()))) {
        a(d);
      }
    }
  }
  
  public void g()
  {
    ((InputMethodManager)getContext().getSystemService("input_method")).hideSoftInputFromWindow(getWindowToken(), 0);
  }
  
  public String getCardNumber()
  {
    return a.getText().toString();
  }
  
  public String getCvv()
  {
    return c.getText().toString();
  }
  
  public String getExpirationMonth()
  {
    return b.getMonth();
  }
  
  public String getExpirationYear()
  {
    return b.getYear();
  }
  
  public String getPostalCode()
  {
    return d.getText().toString();
  }
  
  public void onClick(View paramView)
  {
    if (l != null) {
      l.a(paramView);
    }
  }
  
  public boolean onEditorAction(TextView paramTextView, int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 2) && (k != null))
    {
      k.a();
      return true;
    }
    return false;
  }
  
  public void onFocusChange(View paramView, boolean paramBoolean)
  {
    if ((paramBoolean) && (l != null)) {
      l.a(paramView);
    }
  }
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void setEnabled(boolean paramBoolean)
  {
    a.setEnabled(paramBoolean);
    b.setEnabled(paramBoolean);
    c.setEnabled(paramBoolean);
    d.setEnabled(paramBoolean);
  }
  
  public void setOnCardFormSubmitListener(b paramb)
  {
    k = paramb;
  }
  
  public void setOnCardFormValidListener(c paramc)
  {
    j = paramc;
  }
  
  public void setOnFormFieldFocusedListener(com.braintreepayments.cardform.a parama)
  {
    l = parama;
  }
}

/* Location:
 * Qualified Name:     com.braintreepayments.cardform.view.CardForm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */