package com.braintreepayments.cardform.view;

import android.content.Context;
import android.graphics.Rect;
import android.text.Editable;
import android.text.InputFilter;
import android.text.InputFilter.LengthFilter;
import android.text.TextWatcher;
import android.util.AttributeSet;
import com.braintreepayments.cardform.a.a;
import com.braintreepayments.cardform.f;

public class CvvEditText
  extends c
  implements TextWatcher
{
  private a b;
  private boolean c = false;
  
  public CvvEditText(Context paramContext)
  {
    super(paramContext);
    d();
  }
  
  public CvvEditText(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    d();
  }
  
  public CvvEditText(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    d();
  }
  
  private void d()
  {
    setInputType(2);
    setFilters(new InputFilter[] { new InputFilter.LengthFilter(3) });
    addTextChangedListener(this);
  }
  
  private int getSecurityCodeLength()
  {
    if (b == null) {
      return 3;
    }
    return b.getSecurityCodeLength();
  }
  
  public boolean a()
  {
    return getText().toString().length() == getSecurityCodeLength();
  }
  
  public void afterTextChanged(Editable paramEditable)
  {
    if (b == null) {}
    do
    {
      do
      {
        return;
      } while ((b.getSecurityCodeLength() != paramEditable.length()) || (getSelectionStart() != paramEditable.length()));
      c();
    } while (!a());
    b();
  }
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  protected void onFocusChanged(boolean paramBoolean, int paramInt, Rect paramRect)
  {
    super.onFocusChanged(paramBoolean, paramInt, paramRect);
    if ((paramBoolean) || (c)) {
      if (b == null) {
        paramInt = f.bt_cvv_highlighted;
      }
    }
    for (;;)
    {
      if (a)
      {
        setCompoundDrawablesWithIntrinsicBounds(paramInt, 0, 0, 0);
        return;
        paramInt = b.getSecurityCodeResource();
      }
      else
      {
        setCompoundDrawablesWithIntrinsicBounds(0, 0, paramInt, 0);
        return;
        paramInt = 0;
      }
    }
  }
  
  public void setAlwaysDisplayHint(boolean paramBoolean)
  {
    c = paramBoolean;
    invalidate();
  }
  
  public void setCardType(a parama)
  {
    b = parama;
    setFilters(new InputFilter[] { new InputFilter.LengthFilter(parama.getSecurityCodeLength()) });
    invalidate();
  }
}

/* Location:
 * Qualified Name:     com.braintreepayments.cardform.view.CvvEditText
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */