package android.support.v7.widget;

import android.database.DataSetObserver;

class u
  extends DataSetObserver
{
  private u(o paramo) {}
  
  public void onChanged()
  {
    if (a.b()) {
      a.c();
    }
  }
  
  public void onInvalidated()
  {
    a.a();
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */