package com.taplytics;

import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView.RecyclerListener;

public class et
  implements AbsListView.RecyclerListener
{
  AbsListView.RecyclerListener a;
  
  public et(AbsListView.RecyclerListener paramRecyclerListener)
  {
    a = paramRecyclerListener;
  }
  
  public void onMovedToScrapHeap(View paramView)
  {
    if ((paramView != null) && ((paramView instanceof ViewGroup))) {
      jk.d((ViewGroup)paramView);
    }
    if (a != null) {
      a.onMovedToScrapHeap(paramView);
    }
  }
}

/* Location:
 * Qualified Name:     com.taplytics.et
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */