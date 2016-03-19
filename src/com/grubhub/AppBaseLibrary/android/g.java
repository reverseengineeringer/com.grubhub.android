package com.grubhub.AppBaseLibrary.android;

import android.support.v4.widget.au;
import android.support.v4.widget.av;
import android.view.View;

class g
  extends av
{
  private g(GHSOrderFlowPane paramGHSOrderFlowPane) {}
  
  public int clampViewPositionVertical(View paramView, int paramInt1, int paramInt2)
  {
    int i;
    if (GHSOrderFlowPane.g(a))
    {
      i = GHSOrderFlowPane.h(a);
      paramInt2 = GHSOrderFlowPane.b(a) + i;
    }
    for (;;)
    {
      return Math.min(Math.max(paramInt1, i), paramInt2);
      paramInt2 = a.getPaddingTop();
      i = paramInt2 - GHSOrderFlowPane.b(a);
    }
  }
  
  public int getViewVerticalDragRange(View paramView)
  {
    return GHSOrderFlowPane.b(a);
  }
  
  public void onViewCaptured(View paramView, int paramInt)
  {
    a.b();
  }
  
  public void onViewDragStateChanged(int paramInt)
  {
    paramInt = (int)(GHSOrderFlowPane.a(a) * GHSOrderFlowPane.b(a));
    if (GHSOrderFlowPane.c(a).a() == 0)
    {
      if (GHSOrderFlowPane.d(a) != 0.0F) {
        break label89;
      }
      if (GHSOrderFlowPane.e(a) != j.EXPANDED)
      {
        a.a();
        a.b(GHSOrderFlowPane.f(a));
        GHSOrderFlowPane.a(a, j.EXPANDED);
      }
    }
    label89:
    do
    {
      do
      {
        return;
        if (GHSOrderFlowPane.d(a) != paramInt / GHSOrderFlowPane.b(a)) {
          break;
        }
      } while (GHSOrderFlowPane.e(a) == j.ANCHORED);
      a.a();
      a.d(GHSOrderFlowPane.f(a));
      GHSOrderFlowPane.a(a, j.ANCHORED);
      return;
    } while (GHSOrderFlowPane.e(a) == j.COLLAPSED);
    a.c(GHSOrderFlowPane.f(a));
    GHSOrderFlowPane.a(a, j.COLLAPSED);
  }
  
  public void onViewPositionChanged(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    GHSOrderFlowPane.a(a, paramInt2);
    a.invalidate();
  }
  
  public void onViewReleased(View paramView, float paramFloat1, float paramFloat2)
  {
    int j;
    label69:
    int i;
    if (GHSOrderFlowPane.g(a))
    {
      j = GHSOrderFlowPane.h(a);
      if (GHSOrderFlowPane.a(a) == 0.0F) {
        break label283;
      }
      if (!GHSOrderFlowPane.g(a)) {
        break label154;
      }
      paramFloat1 = (int)(GHSOrderFlowPane.a(a) * GHSOrderFlowPane.b(a)) / GHSOrderFlowPane.b(a);
      if ((paramFloat2 <= 0.0F) && ((paramFloat2 != 0.0F) || (GHSOrderFlowPane.d(a) < (1.0F + paramFloat1) / 2.0F))) {
        break label209;
      }
      i = j + GHSOrderFlowPane.b(a);
    }
    for (;;)
    {
      GHSOrderFlowPane.c(a).a(paramView.getLeft(), i);
      a.invalidate();
      return;
      j = GHSOrderFlowPane.h(a) - GHSOrderFlowPane.b(a);
      break;
      label154:
      i = GHSOrderFlowPane.i(a);
      int k = (int)(GHSOrderFlowPane.a(a) * GHSOrderFlowPane.b(a));
      paramFloat1 = (GHSOrderFlowPane.i(a) - (i - k)) / GHSOrderFlowPane.b(a);
      break label69;
      label209:
      i = j;
      if (paramFloat2 == 0.0F)
      {
        i = j;
        if (GHSOrderFlowPane.d(a) < (1.0F + paramFloat1) / 2.0F)
        {
          i = j;
          if (GHSOrderFlowPane.d(a) >= paramFloat1 / 2.0F)
          {
            i = (int)(j + GHSOrderFlowPane.b(a) * GHSOrderFlowPane.a(a));
            continue;
            label283:
            if (paramFloat2 <= 0.0F)
            {
              i = j;
              if (paramFloat2 == 0.0F)
              {
                i = j;
                if (GHSOrderFlowPane.d(a) <= 0.5F) {}
              }
            }
            else
            {
              i = j + GHSOrderFlowPane.b(a);
            }
          }
        }
      }
    }
  }
  
  public boolean tryCaptureView(View paramView, int paramInt)
  {
    if (GHSOrderFlowPane.j(a)) {
      return false;
    }
    return getLayoutParamsa;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */