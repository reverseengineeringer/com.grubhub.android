package android.support.v7.widget;

import android.os.Handler;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.PopupWindow;

class v
  implements AbsListView.OnScrollListener
{
  private v(o paramo) {}
  
  public void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
    if ((paramInt == 1) && (!a.f()) && (o.b(a).getContentView() != null))
    {
      o.d(a).removeCallbacks(o.c(a));
      o.c(a).run();
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.v
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */