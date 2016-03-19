package com.grubhub.AppBaseLibrary.android.views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.widget.AbsListView;
import android.widget.FrameLayout;

public class GHSSynchronizedHeaderView
  extends FrameLayout
{
  private static final String a = GHSSynchronizedHeaderView.class.getSimpleName();
  private View b;
  private View c;
  private int d;
  private int e;
  
  public GHSSynchronizedHeaderView(Context paramContext)
  {
    super(paramContext);
  }
  
  public GHSSynchronizedHeaderView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public GHSSynchronizedHeaderView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public void a()
  {
    animate().setDuration(100L).translationY(-getMeasuredHeight());
    if (c != null) {
      c.animate().setDuration(100L).translationY(0.0F);
    }
  }
  
  public void a(AbsListView paramAbsListView, int paramInt)
  {
    if (paramInt == 0) {
      if (e == 0)
      {
        animate().setDuration(30L).translationY(0.0F);
        if (c == null) {}
      }
    }
    label55:
    do
    {
      do
      {
        do
        {
          c.animate().setDuration(30L).translationY(getMeasuredHeight());
          break label55;
          do
          {
            return;
          } while (b != null);
          if (getTranslationY() + getMeasuredHeight() / 2 <= 0.0F) {
            break;
          }
          animate().setDuration(100L).translationY(0.0F);
        } while (c == null);
        c.animate().setDuration(100L).translationY(getMeasuredHeight());
        return;
        animate().setDuration(100L).translationY(-getMeasuredHeight());
      } while (c == null);
      c.animate().setDuration(100L).translationY(0.0F);
      return;
      clearAnimation();
    } while (c == null);
    c.clearAnimation();
  }
  
  public void a(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
    paramInt3 = paramAbsListView.getFirstVisiblePosition();
    paramAbsListView = paramAbsListView.getChildAt(0);
    if (paramAbsListView != null) {}
    for (paramInt1 = paramAbsListView.getTop();; paramInt1 = 0)
    {
      int i = paramInt1 - d;
      d = paramInt1;
      if ((i < 0) && (paramInt3 >= e))
      {
        paramInt1 = 1;
        if ((i <= 0) || (paramInt3 > e)) {
          break label178;
        }
        paramInt2 = 1;
        label66:
        if (b == null) {
          break label278;
        }
        if ((paramInt1 == 0) || (b.getTop() >= getMeasuredHeight())) {
          break label183;
        }
        if (getTranslationY() + getMeasuredHeight() <= b.getTop()) {
          break label391;
        }
        paramAbsListView = Integer.valueOf((int)getTranslationY() + i);
      }
      for (;;)
      {
        if (paramAbsListView != null)
        {
          setTranslationY(paramAbsListView.intValue());
          if (c != null) {
            c.setTranslationY(Math.max(paramAbsListView.intValue() + getMeasuredHeight(), 0));
          }
        }
        e = paramInt3;
        return;
        paramInt1 = 0;
        break;
        label178:
        paramInt2 = 0;
        break label66;
        label183:
        if ((paramInt2 != 0) && (getTranslationY() < 0.0F))
        {
          if (getTranslationY() + getMeasuredHeight() > b.getTop())
          {
            paramAbsListView = Integer.valueOf((int)getTranslationY() + i);
            continue;
          }
          if (b.getTop() < getMeasuredHeight()) {
            paramAbsListView = Integer.valueOf(b.getTop() - getMeasuredHeight());
          }
        }
        else if (paramInt2 != 0)
        {
          paramAbsListView = Integer.valueOf(0);
          continue;
          label278:
          if ((paramInt1 != 0) && (getTranslationY() + getMeasuredHeight() > 0.0F))
          {
            if (getTranslationY() + i > -getMeasuredHeight())
            {
              paramAbsListView = Integer.valueOf((int)getTranslationY() + i);
              continue;
            }
            paramAbsListView = Integer.valueOf(-getMeasuredHeight());
            continue;
          }
          if ((paramInt2 != 0) && (getTranslationY() < 0.0F))
          {
            if (getTranslationY() + i < 0.0F)
            {
              paramAbsListView = Integer.valueOf((int)getTranslationY() + i);
              continue;
            }
            paramAbsListView = Integer.valueOf(0);
            continue;
          }
        }
        label391:
        paramAbsListView = null;
      }
    }
  }
  
  public void setAlternateHeader(View paramView)
  {
    c = paramView;
  }
  
  public void setSyncView(View paramView)
  {
    b = paramView;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.views.GHSSynchronizedHeaderView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */