package com.taplytics;

import android.database.DataSetObserver;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;
import android.widget.AbsListView;

public class eu
  extends DataSetObserver
{
  AbsListView a = null;
  private ViewTreeObserver.OnPreDrawListener b;
  
  public eu(AbsListView paramAbsListView)
  {
    a = paramAbsListView;
    b = new ev(paramAbsListView.getViewTreeObserver(), paramAbsListView);
  }
  
  public void onChanged()
  {
    a.getViewTreeObserver().addOnPreDrawListener(b);
  }
  
  public void onInvalidated()
  {
    a.getViewTreeObserver().addOnPreDrawListener(b);
  }
}

/* Location:
 * Qualified Name:     com.taplytics.eu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */