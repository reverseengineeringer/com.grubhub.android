package com.grubhub.AppBaseLibrary.android.views;

import android.content.Context;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.widget.Button;

public class GHSButton
  extends Button
{
  public GHSButton(Context paramContext)
  {
    super(paramContext);
  }
  
  public GHSButton(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    h.a(paramContext, this, paramAttributeSet);
    a();
  }
  
  public GHSButton(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    h.a(paramContext, this, paramAttributeSet);
    a();
  }
  
  private void a()
  {
    if (Build.VERSION.SDK_INT >= 21) {
      setTransformationMethod(null);
    }
  }
  
  public void setFont(String paramString)
  {
    h.a(getContext(), this, paramString);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.views.GHSButton
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */