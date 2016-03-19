package android.support.v4.app;

import android.graphics.Rect;
import android.transition.Transition;
import android.transition.Transition.EpicenterCallback;

final class ah$3
  extends Transition.EpicenterCallback
{
  private Rect b;
  
  ah$3(ai paramai) {}
  
  public Rect onGetEpicenter(Transition paramTransition)
  {
    if ((b == null) && (a.a != null)) {
      b = ah.b(a.a);
    }
    return b;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.ah.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */