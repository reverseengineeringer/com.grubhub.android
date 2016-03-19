package com.urbanairship.push.iam.view;

import android.annotation.SuppressLint;
import android.os.Build.VERSION;
import android.support.v4.widget.au;
import android.support.v4.widget.av;
import android.view.View;

class SwipeDismissViewLayout$ViewDragCallback
  extends av
{
  private View capturedView;
  private float dragPercent = 0.0F;
  private boolean isDismissed = false;
  private int startLeft;
  private int startTop;
  
  private SwipeDismissViewLayout$ViewDragCallback(SwipeDismissViewLayout paramSwipeDismissViewLayout) {}
  
  public int clampViewPositionHorizontal(View paramView, int paramInt1, int paramInt2)
  {
    return paramInt1;
  }
  
  public int clampViewPositionVertical(View paramView, int paramInt1, int paramInt2)
  {
    return paramView.getTop();
  }
  
  public void onViewCaptured(View paramView, int paramInt)
  {
    capturedView = paramView;
    startTop = paramView.getTop();
    startLeft = paramView.getLeft();
    dragPercent = 0.0F;
    isDismissed = false;
  }
  
  public void onViewDragStateChanged(int paramInt)
  {
    if (capturedView == null) {
      return;
    }
    try
    {
      if (SwipeDismissViewLayout.access$100(this$0) != null) {
        SwipeDismissViewLayout.access$100(this$0).onDragStateChanged(capturedView, paramInt);
      }
      if (paramInt == 0)
      {
        if (isDismissed)
        {
          if (SwipeDismissViewLayout.access$100(this$0) != null) {
            SwipeDismissViewLayout.access$100(this$0).onDismissed(capturedView);
          }
          this$0.removeView(capturedView);
        }
        capturedView = null;
      }
      return;
    }
    finally {}
  }
  
  @SuppressLint({"NewApi"})
  public void onViewPositionChanged(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    paramInt2 = this$0.getWidth() / 2;
    paramInt1 = Math.abs(paramInt1 - startLeft);
    if (paramInt2 > 0) {
      dragPercent = (paramInt1 / paramInt2);
    }
    if (Build.VERSION.SDK_INT > 11)
    {
      paramView.setAlpha(1.0F - dragPercent);
      this$0.invalidate();
    }
  }
  
  public void onViewReleased(View paramView, float paramFloat1, float paramFloat2)
  {
    boolean bool2 = false;
    int i;
    if (Math.abs(paramFloat1) > SwipeDismissViewLayout.access$200(this$0)) {
      if (paramFloat1 > 0.0F)
      {
        i = 1;
        boolean bool1;
        if (dragPercent < 0.75F)
        {
          bool1 = bool2;
          if (Math.abs(paramFloat1) > SwipeDismissViewLayout.access$200(this$0))
          {
            bool1 = bool2;
            if (dragPercent <= 0.1F) {}
          }
        }
        else
        {
          bool1 = true;
        }
        isDismissed = bool1;
        if (!isDismissed) {
          break label166;
        }
        if (i == 0) {
          break label157;
        }
        i = -paramView.getWidth();
        label98:
        SwipeDismissViewLayout.access$300(this$0).a(startLeft - i, startTop);
      }
    }
    for (;;)
    {
      this$0.invalidate();
      return;
      i = 0;
      break;
      if (startLeft < paramView.getLeft())
      {
        i = 1;
        break;
      }
      i = 0;
      break;
      label157:
      i = paramView.getWidth();
      break label98;
      label166:
      SwipeDismissViewLayout.access$300(this$0).a(startLeft, startTop);
    }
  }
  
  public boolean tryCaptureView(View paramView, int paramInt)
  {
    return capturedView == null;
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.push.iam.view.SwipeDismissViewLayout.ViewDragCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */