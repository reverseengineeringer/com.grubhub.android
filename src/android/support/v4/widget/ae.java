package android.support.v4.widget;

import android.os.Build.VERSION;
import android.view.View;
import android.widget.PopupWindow;

public class ae
{
  static final ak a = new ah();
  
  static
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 23)
    {
      a = new ag();
      return;
    }
    if (i >= 21)
    {
      a = new af();
      return;
    }
    if (i >= 19)
    {
      a = new aj();
      return;
    }
    if (i >= 9)
    {
      a = new ai();
      return;
    }
  }
  
  public static void a(PopupWindow paramPopupWindow, View paramView, int paramInt1, int paramInt2, int paramInt3)
  {
    a.a(paramPopupWindow, paramView, paramInt1, paramInt2, paramInt3);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.ae
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */