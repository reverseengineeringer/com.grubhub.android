package com.taplytics;

import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;

class ev
  implements ViewTreeObserver.OnPreDrawListener
{
  private ViewGroup a = null;
  private ViewTreeObserver b = null;
  
  public ev(ViewTreeObserver paramViewTreeObserver, ViewGroup paramViewGroup)
  {
    b = paramViewTreeObserver;
    a = paramViewGroup;
  }
  
  public boolean onPreDraw()
  {
    try
    {
      if (!b.isAlive()) {
        a.getViewTreeObserver().removeOnPreDrawListener(this);
      }
    }
    catch (Exception localException1)
    {
      try
      {
        jk.c(a);
        for (;;)
        {
          return false;
          b.removeOnPreDrawListener(this);
          break;
          localException1 = localException1;
          ck.b("Exception while updating listView in onPreDraw (outer)", localException1);
        }
      }
      catch (Exception localException2)
      {
        for (;;)
        {
          ck.b("Exception while updating listView in onPreDraw (inner)", localException2);
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.taplytics.ev
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */