package android.support.v7.internal.widget;

import android.support.v4.view.bp;
import android.support.v4.view.dq;

class ActionBarOverlayLayout$4
  implements Runnable
{
  ActionBarOverlayLayout$4(ActionBarOverlayLayout paramActionBarOverlayLayout) {}
  
  public void run()
  {
    ActionBarOverlayLayout.a(a);
    ActionBarOverlayLayout.a(a, bp.j(ActionBarOverlayLayout.c(a)).c(-ActionBarOverlayLayout.c(a).getHeight()).a(ActionBarOverlayLayout.b(a)));
    if ((ActionBarOverlayLayout.d(a) != null) && (ActionBarOverlayLayout.d(a).getVisibility() != 8)) {
      ActionBarOverlayLayout.b(a, bp.j(ActionBarOverlayLayout.d(a)).c(ActionBarOverlayLayout.d(a).getHeight()).a(ActionBarOverlayLayout.e(a)));
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.widget.ActionBarOverlayLayout.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */