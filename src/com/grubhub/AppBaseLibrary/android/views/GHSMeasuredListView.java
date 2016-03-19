package com.grubhub.AppBaseLibrary.android.views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View.MeasureSpec;
import android.widget.ListView;

public class GHSMeasuredListView
  extends ListView
{
  public GHSMeasuredListView(Context paramContext)
  {
    super(paramContext);
  }
  
  public GHSMeasuredListView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public GHSMeasuredListView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, View.MeasureSpec.makeMeasureSpec(16777215, Integer.MIN_VALUE));
    getLayoutParamsheight = getMeasuredHeight();
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.views.GHSMeasuredListView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */