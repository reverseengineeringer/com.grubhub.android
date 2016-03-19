package com.grubhub.AppBaseLibrary.android.views;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.TextView;

public class GHSTextView
  extends TextView
{
  public GHSTextView(Context paramContext)
  {
    super(paramContext);
  }
  
  public GHSTextView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    h.a(paramContext, this, paramAttributeSet);
  }
  
  public GHSTextView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    h.a(paramContext, this, paramAttributeSet);
  }
  
  public void setFont(String paramString)
  {
    h.a(getContext(), this, paramString);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.views.GHSTextView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */