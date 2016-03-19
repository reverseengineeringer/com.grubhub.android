package com.braintreepayments.cardform.view;

import android.content.Context;
import android.text.Editable;
import android.text.InputFilter;
import android.text.InputFilter.LengthFilter;
import android.text.TextWatcher;
import android.util.AttributeSet;
import com.braintreepayments.cardform.f;

public class CardEditText
  extends c
  implements TextWatcher
{
  private com.braintreepayments.cardform.a.a b = com.braintreepayments.cardform.a.a.UNKNOWN;
  private a c;
  
  public CardEditText(Context paramContext)
  {
    super(paramContext);
    d();
  }
  
  public CardEditText(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    d();
  }
  
  public CardEditText(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    d();
  }
  
  private void a(Editable paramEditable, int[] paramArrayOfInt)
  {
    int j = paramEditable.length();
    int k = paramArrayOfInt.length;
    int i = 0;
    while (i < k)
    {
      int m = paramArrayOfInt[i];
      if (m <= j) {
        paramEditable.setSpan(new e(), m - 1, m, 33);
      }
      i += 1;
    }
  }
  
  private void d()
  {
    setInputType(2);
    setCardIcon(f.bt_card_highlighted);
    addTextChangedListener(this);
  }
  
  private void e()
  {
    com.braintreepayments.cardform.a.a locala = com.braintreepayments.cardform.a.a.forCardNumber(getText().toString());
    if (b != locala)
    {
      b = locala;
      setFilters(new InputFilter[] { new InputFilter.LengthFilter(b.getMaxCardLength()) });
      invalidate();
      if (c != null) {
        c.a(b);
      }
    }
  }
  
  private void setCardIcon(int paramInt)
  {
    if (a)
    {
      setCompoundDrawablesWithIntrinsicBounds(paramInt, 0, 0, 0);
      return;
    }
    setCompoundDrawablesWithIntrinsicBounds(0, 0, paramInt, 0);
  }
  
  public boolean a()
  {
    return b.validate(getText().toString());
  }
  
  public void afterTextChanged(Editable paramEditable)
  {
    int i = 0;
    Object[] arrayOfObject = paramEditable.getSpans(0, paramEditable.length(), e.class);
    int j = arrayOfObject.length;
    while (i < j)
    {
      paramEditable.removeSpan(arrayOfObject[i]);
      i += 1;
    }
    e();
    setCardIcon(b.getFrontResource());
    if (!a) {
      a(paramEditable, b.getSpaceIndices());
    }
    if (b.getMaxCardLength() == getSelectionStart())
    {
      c();
      if (a()) {
        b();
      }
    }
  }
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public com.braintreepayments.cardform.a.a getCardType()
  {
    return b;
  }
  
  public void setOnCardTypeChangedListener(a parama)
  {
    c = parama;
  }
}

/* Location:
 * Qualified Name:     com.braintreepayments.cardform.view.CardEditText
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */