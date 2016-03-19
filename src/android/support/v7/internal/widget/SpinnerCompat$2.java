package android.support.v7.internal.widget;

import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;

class SpinnerCompat$2
  implements ViewTreeObserver.OnGlobalLayoutListener
{
  SpinnerCompat$2(SpinnerCompat paramSpinnerCompat) {}
  
  public void onGlobalLayout()
  {
    if (!SpinnerCompat.a(a).b()) {
      SpinnerCompat.a(a).c();
    }
    ViewTreeObserver localViewTreeObserver = a.getViewTreeObserver();
    if (localViewTreeObserver != null) {
      localViewTreeObserver.removeGlobalOnLayoutListener(this);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.widget.SpinnerCompat.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */