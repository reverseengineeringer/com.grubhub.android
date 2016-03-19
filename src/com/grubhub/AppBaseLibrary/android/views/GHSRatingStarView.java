package com.grubhub.AppBaseLibrary.android.views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;

public class GHSRatingStarView
  extends RelativeLayout
{
  protected int a;
  private ImageView b = null;
  private ImageView c = null;
  private ImageView d = null;
  private ImageView e = null;
  private ImageView f = null;
  private View g = null;
  
  public GHSRatingStarView(Context paramContext)
  {
    super(paramContext);
    a(paramContext);
  }
  
  public GHSRatingStarView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext);
  }
  
  public GHSRatingStarView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext);
  }
  
  private void a(Context paramContext)
  {
    paramContext = LayoutInflater.from(paramContext).inflate(2130903220, this, true);
    b = ((ImageView)paramContext.findViewById(2131690274));
    c = ((ImageView)paramContext.findViewById(2131690275));
    d = ((ImageView)paramContext.findViewById(2131690276));
    e = ((ImageView)paramContext.findViewById(2131690277));
    f = ((ImageView)paramContext.findViewById(2131690278));
  }
  
  public int getRatings()
  {
    return a;
  }
  
  public void setRatings(int paramInt)
  {
    if ((b == null) || (c == null) || (d == null) || (e == null) || (f == null)) {
      return;
    }
    a = paramInt;
    switch (a)
    {
    default: 
      b.setBackgroundResource(2130837857);
      c.setBackgroundResource(2130837857);
      d.setBackgroundResource(2130837857);
      e.setBackgroundResource(2130837857);
      f.setBackgroundResource(2130837857);
      return;
    case 0: 
      b.setBackgroundResource(2130837857);
      c.setBackgroundResource(2130837857);
      d.setBackgroundResource(2130837857);
      e.setBackgroundResource(2130837857);
      f.setBackgroundResource(2130837857);
      return;
    case 1: 
      b.setBackgroundResource(2130837858);
      c.setBackgroundResource(2130837857);
      d.setBackgroundResource(2130837857);
      e.setBackgroundResource(2130837857);
      f.setBackgroundResource(2130837857);
      return;
    case 2: 
      b.setBackgroundResource(2130837858);
      c.setBackgroundResource(2130837858);
      d.setBackgroundResource(2130837857);
      e.setBackgroundResource(2130837857);
      f.setBackgroundResource(2130837857);
      return;
    case 3: 
      b.setBackgroundResource(2130837858);
      c.setBackgroundResource(2130837858);
      d.setBackgroundResource(2130837858);
      e.setBackgroundResource(2130837857);
      f.setBackgroundResource(2130837857);
      return;
    case 4: 
      b.setBackgroundResource(2130837858);
      c.setBackgroundResource(2130837858);
      d.setBackgroundResource(2130837858);
      e.setBackgroundResource(2130837858);
      f.setBackgroundResource(2130837857);
      return;
    }
    b.setBackgroundResource(2130837858);
    c.setBackgroundResource(2130837858);
    d.setBackgroundResource(2130837858);
    e.setBackgroundResource(2130837858);
    f.setBackgroundResource(2130837858);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.views.GHSRatingStarView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */