package com.grubhub.AppBaseLibrary.android.views;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ListView;

public class GHSOverScrollListView
  extends ListView
{
  private i a;
  
  public GHSOverScrollListView(Context paramContext)
  {
    super(paramContext);
  }
  
  public GHSOverScrollListView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public GHSOverScrollListView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  protected void onOverScrolled(int paramInt1, int paramInt2, boolean paramBoolean1, boolean paramBoolean2)
  {
    if ((a != null) && (paramInt2 >= 0)) {
      a.e();
    }
  }
  
  public void setOverScrollListener(i parami)
  {
    a = parami;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.views.GHSOverScrollListView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */