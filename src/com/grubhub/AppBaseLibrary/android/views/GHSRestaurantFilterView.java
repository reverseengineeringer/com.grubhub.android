package com.grubhub.AppBaseLibrary.android.views;

import android.content.Context;
import android.support.v4.app.FragmentTabHost;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import com.grubhub.AppBaseLibrary.android.order.search.filter.GHSSearchFilterFragment;
import java.util.Date;

public class GHSRestaurantFilterView
  extends FragmentTabHost
{
  private GHSSearchFilterFragment a;
  private int[] b = new int[2];
  private long c;
  private float d;
  private float e;
  
  public GHSRestaurantFilterView(Context paramContext)
  {
    super(paramContext);
    a();
  }
  
  public GHSRestaurantFilterView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a();
  }
  
  private void a()
  {
    setClickable(true);
  }
  
  private boolean a(long paramLong, float paramFloat)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (e < paramFloat)
    {
      bool1 = bool2;
      if (paramLong > c)
      {
        bool1 = bool2;
        if (paramLong - c <= 200L)
        {
          bool1 = bool2;
          if (paramFloat - e >= 150.0F)
          {
            bool1 = bool2;
            if (e <= getHeight() / 2)
            {
              bool1 = bool2;
              if (!a(this)) {
                bool1 = true;
              }
            }
          }
        }
      }
    }
    return bool1;
  }
  
  private boolean a(ViewGroup paramViewGroup)
  {
    if ((paramViewGroup == null) || (paramViewGroup.getChildCount() == 0)) {}
    for (;;)
    {
      return false;
      int i = 0;
      while (i < paramViewGroup.getChildCount())
      {
        View localView = paramViewGroup.getChildAt(i);
        if (localView.canScrollVertically(-1))
        {
          int[] arrayOfInt = new int[2];
          localView.getLocationOnScreen(arrayOfInt);
          int j = (int)(d + b[0]);
          int k = (int)(e + b[1]);
          if ((j >= arrayOfInt[0]) && (j <= arrayOfInt[0] + localView.getWidth()) && (k >= arrayOfInt[1]) && (k <= arrayOfInt[1] + localView.getHeight())) {}
          for (j = 1; j != 0; j = 0) {
            return true;
          }
        }
        if (((localView instanceof ViewGroup)) && (a((ViewGroup)localView))) {
          return true;
        }
        i += 1;
      }
    }
  }
  
  public boolean dispatchTouchEvent(MotionEvent paramMotionEvent)
  {
    boolean bool = false;
    switch (paramMotionEvent.getAction())
    {
    }
    while ((bool) && (a != null))
    {
      a.d();
      return true;
      c = new Date().getTime();
      d = paramMotionEvent.getX();
      e = paramMotionEvent.getY();
      getLocationOnScreen(b);
      continue;
      bool = a(new Date().getTime(), paramMotionEvent.getY());
    }
    return super.dispatchTouchEvent(paramMotionEvent);
  }
  
  public void setFilterFragment(GHSSearchFilterFragment paramGHSSearchFilterFragment)
  {
    a = paramGHSSearchFilterFragment;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.views.GHSRestaurantFilterView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */