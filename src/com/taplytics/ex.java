package com.taplytics;

import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import org.json.JSONException;

public class ex
  implements AbsListView.OnScrollListener
{
  AbsListView.OnScrollListener a;
  private int b = -1;
  private int c = -1;
  private int d = -1;
  private int e = -1;
  
  public ex(AbsListView.OnScrollListener paramOnScrollListener)
  {
    a = paramOnScrollListener;
  }
  
  public void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
    int j = 0;
    try
    {
      k = paramAbsListView.getLastVisiblePosition();
      localView = paramAbsListView.getChildAt(0);
      if (localView == null) {
        break label246;
      }
      i = localView.getTop();
    }
    catch (JSONException localJSONException)
    {
      for (;;)
      {
        int k;
        View localView;
        int m;
        continue;
        int i = 0;
      }
    }
    m = e;
    e = i;
    m = Math.abs(i - m);
    localView = paramAbsListView.getChildAt(paramInt2 - 1);
    if (localView != null) {
      j = localView.getBottom();
    }
    if ((fy.e().i()) && ((paramInt1 != b) || (k != c) || (d != paramInt3) || (paramAbsListView.getPaddingTop() - i < m) || (j - (paramAbsListView.getHeight() - paramAbsListView.getPaddingBottom()) < m)))
    {
      d = paramInt3;
      b = paramInt1;
      c = k;
      jk.c(paramAbsListView);
    }
    if ((fy.e().g()) && (fy.e().i()) && (gq.h().i() != null) && (gq.h().i().findViewById(ju.a()) != null)) {
      gq.h().i().removeView(gq.h().i().findViewById(ju.a()));
    }
    if (a != null) {
      a.onScroll(paramAbsListView, paramInt1, paramInt2, paramInt3);
    }
  }
  
  public void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
    if (a != null) {
      a.onScrollStateChanged(paramAbsListView, paramInt);
    }
  }
}

/* Location:
 * Qualified Name:     com.taplytics.ex
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */