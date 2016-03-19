package com.braintreepayments.cardform.view;

import android.content.Context;
import android.text.InputFilter;
import android.text.InputFilter.LengthFilter;
import android.util.AttributeSet;

public class PostalCodeEditText
  extends c
{
  public PostalCodeEditText(Context paramContext)
  {
    super(paramContext);
    d();
  }
  
  public PostalCodeEditText(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    d();
  }
  
  public PostalCodeEditText(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    d();
  }
  
  private void d()
  {
    setInputType(112);
    setFilters(new InputFilter[] { new InputFilter.LengthFilter(16) });
  }
  
  public boolean a()
  {
    return getText().toString().length() > 0;
  }
}

/* Location:
 * Qualified Name:     com.braintreepayments.cardform.view.PostalCodeEditText
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */