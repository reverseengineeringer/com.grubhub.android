package android.support.v4.view;

import android.os.Build.VERSION;
import android.support.v4.b.a.b;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;

public class ao
{
  static final as a = new ap();
  
  static
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 14)
    {
      a = new ar();
      return;
    }
    if (i >= 11)
    {
      a = new aq();
      return;
    }
  }
  
  public static MenuItem a(MenuItem paramMenuItem, j paramj)
  {
    if ((paramMenuItem instanceof b)) {
      return ((b)paramMenuItem).a(paramj);
    }
    Log.w("MenuItemCompat", "setActionProvider: item does not implement SupportMenuItem; ignoring");
    return paramMenuItem;
  }
  
  public static MenuItem a(MenuItem paramMenuItem, View paramView)
  {
    if ((paramMenuItem instanceof b)) {
      return ((b)paramMenuItem).setActionView(paramView);
    }
    return a.a(paramMenuItem, paramView);
  }
  
  public static View a(MenuItem paramMenuItem)
  {
    if ((paramMenuItem instanceof b)) {
      return ((b)paramMenuItem).getActionView();
    }
    return a.a(paramMenuItem);
  }
  
  public static void a(MenuItem paramMenuItem, int paramInt)
  {
    if ((paramMenuItem instanceof b))
    {
      ((b)paramMenuItem).setShowAsAction(paramInt);
      return;
    }
    a.a(paramMenuItem, paramInt);
  }
  
  public static MenuItem b(MenuItem paramMenuItem, int paramInt)
  {
    if ((paramMenuItem instanceof b)) {
      return ((b)paramMenuItem).setActionView(paramInt);
    }
    return a.b(paramMenuItem, paramInt);
  }
  
  public static boolean b(MenuItem paramMenuItem)
  {
    if ((paramMenuItem instanceof b)) {
      return ((b)paramMenuItem).expandActionView();
    }
    return a.b(paramMenuItem);
  }
  
  public static boolean c(MenuItem paramMenuItem)
  {
    if ((paramMenuItem instanceof b)) {
      return ((b)paramMenuItem).isActionViewExpanded();
    }
    return a.c(paramMenuItem);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.ao
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */