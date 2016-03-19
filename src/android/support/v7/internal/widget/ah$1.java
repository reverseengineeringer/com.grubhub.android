package android.support.v7.internal.widget;

import android.view.View;

class ah$1
  implements Runnable
{
  ah$1(ah paramah, View paramView) {}
  
  public void run()
  {
    int i = a.getLeft();
    int j = (b.getWidth() - a.getWidth()) / 2;
    b.smoothScrollTo(i - j, 0);
    b.a = null;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.widget.ah.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */