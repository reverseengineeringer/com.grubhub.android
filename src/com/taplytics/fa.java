package com.taplytics;

import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.AdapterDataObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;

public class fa
  extends RecyclerView.AdapterDataObserver
{
  private RecyclerView a;
  private ViewTreeObserver.OnPreDrawListener b;
  
  public fa(RecyclerView paramRecyclerView)
  {
    a = paramRecyclerView;
    b = new ev(paramRecyclerView.getViewTreeObserver(), paramRecyclerView);
  }
}

/* Location:
 * Qualified Name:     com.taplytics.fa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */