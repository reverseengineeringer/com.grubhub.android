package com.braintreepayments.cardform.view;

import android.content.Context;
import android.text.Editable;
import android.text.InputFilter;
import android.text.InputFilter.LengthFilter;
import android.text.TextWatcher;
import android.util.AttributeSet;

public class MonthYearEditText
  extends c
  implements TextWatcher
{
  private boolean b;
  
  public MonthYearEditText(Context paramContext)
  {
    super(paramContext);
    d();
  }
  
  public MonthYearEditText(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    d();
  }
  
  public MonthYearEditText(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    d();
  }
  
  private void a(Editable paramEditable)
  {
    char c = paramEditable.charAt(0);
    paramEditable.replace(0, 1, "0").append(c);
  }
  
  private void b(Editable paramEditable)
  {
    if (2 <= paramEditable.length()) {
      paramEditable.setSpan(new d(), 1, 2, 33);
    }
  }
  
  private void d()
  {
    setInputType(2);
    setFilters(new InputFilter[] { new InputFilter.LengthFilter(6) });
    addTextChangedListener(this);
  }
  
  private String getString()
  {
    Editable localEditable = getText();
    if (localEditable != null) {
      return localEditable.toString();
    }
    return "";
  }
  
  public boolean a()
  {
    return com.braintreepayments.cardform.a.c.a(getMonth(), getYear());
  }
  
  public void afterTextChanged(Editable paramEditable)
  {
    int i = 0;
    if ((b) && (paramEditable.length() == 1) && (Character.getNumericValue(paramEditable.charAt(0)) >= 2)) {
      a(paramEditable);
    }
    Object[] arrayOfObject = paramEditable.getSpans(0, paramEditable.length(), d.class);
    int j = arrayOfObject.length;
    while (i < j)
    {
      paramEditable.removeSpan(arrayOfObject[i]);
      i += 1;
    }
    if (!a) {
      b(paramEditable);
    }
    if (((getSelectionStart() == 4) && (!paramEditable.toString().endsWith("20"))) || (getSelectionStart() == 6)) {
      b();
    }
  }
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public String getMonth()
  {
    if (getString().length() < 2) {
      return "";
    }
    return getString().substring(0, 2);
  }
  
  public String getYear()
  {
    String str = getString();
    if ((str.length() == 4) || (str.length() == 6)) {
      return getString().substring(2);
    }
    return "";
  }
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    super.onTextChanged(paramCharSequence, paramInt1, paramInt2, paramInt3);
    if (paramInt3 > paramInt2) {}
    for (boolean bool = true;; bool = false)
    {
      b = bool;
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.braintreepayments.cardform.view.MonthYearEditText
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */