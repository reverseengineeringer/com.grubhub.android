package android.support.v7.widget;

import android.content.Context;
import android.support.v4.view.aw;
import android.support.v4.view.dq;
import android.support.v4.widget.ab;
import android.support.v7.a.b;
import android.support.v7.internal.widget.ac;
import android.view.MotionEvent;
import android.view.View;

class p
  extends ac
{
  private boolean f;
  private boolean g;
  private boolean h;
  private dq i;
  private ab j;
  
  public p(Context paramContext, boolean paramBoolean)
  {
    super(paramContext, null, b.dropDownListViewStyle);
    g = paramBoolean;
    setCacheColorHint(0);
  }
  
  private void a(View paramView, int paramInt)
  {
    performItemClick(paramView, paramInt, getItemIdAtPosition(paramInt));
  }
  
  private void a(View paramView, int paramInt, float paramFloat1, float paramFloat2)
  {
    h = true;
    setPressed(true);
    layoutChildren();
    setSelection(paramInt);
    a(paramInt, paramView, paramFloat1, paramFloat2);
    setSelectorEnabled(false);
    refreshDrawableState();
  }
  
  private void d()
  {
    h = false;
    setPressed(false);
    drawableStateChanged();
    if (i != null)
    {
      i.a();
      i = null;
    }
  }
  
  public boolean a(MotionEvent paramMotionEvent, int paramInt)
  {
    int k = aw.a(paramMotionEvent);
    switch (k)
    {
    default: 
      paramInt = 0;
    case 3: 
      for (bool = true;; bool = false)
      {
        label37:
        if ((!bool) || (paramInt != 0)) {
          d();
        }
        if (!bool) {
          break;
        }
        if (j == null) {
          j = new ab(this);
        }
        j.a(true);
        j.onTouch(this, paramMotionEvent);
        label93:
        return bool;
        paramInt = 0;
      }
    }
    for (boolean bool = false;; bool = true)
    {
      int m = paramMotionEvent.findPointerIndex(paramInt);
      if (m < 0)
      {
        paramInt = 0;
        bool = false;
        break label37;
      }
      paramInt = (int)paramMotionEvent.getX(m);
      m = (int)paramMotionEvent.getY(m);
      int n = pointToPosition(paramInt, m);
      if (n == -1)
      {
        paramInt = 1;
        break label37;
      }
      View localView = getChildAt(n - getFirstVisiblePosition());
      a(localView, n, paramInt, m);
      if (k != 1) {
        break;
      }
      a(localView, n);
      break;
      if (j == null) {
        break label93;
      }
      j.a(false);
      return bool;
    }
  }
  
  protected boolean c()
  {
    return (h) || (super.c());
  }
  
  public boolean hasFocus()
  {
    return (g) || (super.hasFocus());
  }
  
  public boolean hasWindowFocus()
  {
    return (g) || (super.hasWindowFocus());
  }
  
  public boolean isFocused()
  {
    return (g) || (super.isFocused());
  }
  
  public boolean isInTouchMode()
  {
    return ((g) && (f)) || (super.isInTouchMode());
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */