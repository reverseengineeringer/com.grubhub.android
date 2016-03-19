package com.grubhub.AppBaseLibrary.android.views;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.Spinner;
import com.grubhub.AppBaseLibrary.android.utils.e.a.a;
import java.util.HashMap;

public class GHSPaymentsSpinner
  extends Spinner
{
  private j a;
  
  public GHSPaymentsSpinner(Context paramContext)
  {
    super(paramContext);
  }
  
  public GHSPaymentsSpinner(Context paramContext, int paramInt)
  {
    super(paramContext, paramInt);
  }
  
  public GHSPaymentsSpinner(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public GHSPaymentsSpinner(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public GHSPaymentsSpinner(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    super(paramContext, paramAttributeSet, paramInt1, paramInt2);
  }
  
  public j getLocation()
  {
    return a;
  }
  
  public boolean performClick()
  {
    if (a == null) {
      a.a("PAYMENT_DROPDOWN_OPENED");
    }
    for (;;)
    {
      return super.performClick();
      a.a("PAYMENT_DROPDOWN_OPENED", new HashMap() {});
    }
  }
  
  public void setLocation(j paramj)
  {
    a = paramj;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.views.GHSPaymentsSpinner
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */