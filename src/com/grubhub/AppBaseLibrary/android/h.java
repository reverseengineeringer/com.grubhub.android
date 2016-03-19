package com.grubhub.AppBaseLibrary.android;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;

public class h
  extends ViewGroup.MarginLayoutParams
{
  private static final int[] c = { 16843137 };
  boolean a;
  boolean b;
  
  public h()
  {
    super(-1, -1);
  }
  
  public h(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    paramContext.obtainStyledAttributes(paramAttributeSet, c).recycle();
  }
  
  public h(ViewGroup.LayoutParams paramLayoutParams)
  {
    super(paramLayoutParams);
  }
  
  public h(ViewGroup.MarginLayoutParams paramMarginLayoutParams)
  {
    super(paramMarginLayoutParams);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */