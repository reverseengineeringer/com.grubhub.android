package android.support.v7.internal.widget;

import android.database.DataSetObserver;
import android.os.Parcelable;
import android.widget.Adapter;

class q
  extends DataSetObserver
{
  private Parcelable b = null;
  
  q(p paramp) {}
  
  public void onChanged()
  {
    a.u = true;
    a.A = a.z;
    a.z = a.getAdapter().getCount();
    if ((a.getAdapter().hasStableIds()) && (b != null) && (a.A == 0) && (a.z > 0))
    {
      p.a(a, b);
      b = null;
    }
    for (;;)
    {
      a.e();
      a.requestLayout();
      return;
      a.j();
    }
  }
  
  public void onInvalidated()
  {
    a.u = true;
    if (a.getAdapter().hasStableIds()) {
      b = p.a(a);
    }
    a.A = a.z;
    a.z = 0;
    a.x = -1;
    a.y = Long.MIN_VALUE;
    a.v = -1;
    a.w = Long.MIN_VALUE;
    a.o = false;
    a.e();
    a.requestLayout();
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.widget.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */