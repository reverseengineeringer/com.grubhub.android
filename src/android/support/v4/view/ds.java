package android.support.v4.view;

import android.view.View;
import java.lang.ref.WeakReference;

class ds
  implements Runnable
{
  WeakReference<View> a;
  dq b;
  
  private ds(dr paramdr, dq paramdq, View paramView)
  {
    a = new WeakReference(paramView);
    b = paramdq;
  }
  
  public void run()
  {
    View localView = (View)a.get();
    if (localView != null) {
      dr.a(c, b, localView);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.ds
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */