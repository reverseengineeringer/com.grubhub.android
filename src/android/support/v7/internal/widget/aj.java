package android.support.v7.internal.widget;

import android.support.v7.app.d;
import android.support.v7.widget.m;
import android.view.View;
import android.view.View.OnClickListener;

class aj
  implements View.OnClickListener
{
  private aj(ah paramah) {}
  
  public void onClick(View paramView)
  {
    ((ak)paramView).b().d();
    int j = ah.a(a).getChildCount();
    int i = 0;
    if (i < j)
    {
      View localView = ah.a(a).getChildAt(i);
      if (localView == paramView) {}
      for (boolean bool = true;; bool = false)
      {
        localView.setSelected(bool);
        i += 1;
        break;
      }
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.widget.aj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */