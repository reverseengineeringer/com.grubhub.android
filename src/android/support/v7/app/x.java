package android.support.v7.app;

import android.app.ActionBar;
import android.app.Activity;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.util.Log;
import android.widget.ImageView;
import java.lang.reflect.Method;

class x
{
  private static final int[] a = { 16843531 };
  
  public static Drawable a(Activity paramActivity)
  {
    paramActivity = paramActivity.obtainStyledAttributes(a);
    Drawable localDrawable = paramActivity.getDrawable(0);
    paramActivity.recycle();
    return localDrawable;
  }
  
  public static y a(y paramy, Activity paramActivity, int paramInt)
  {
    y localy = paramy;
    if (paramy == null) {
      localy = new y(paramActivity);
    }
    if (a != null) {}
    try
    {
      paramy = paramActivity.getActionBar();
      b.invoke(paramy, new Object[] { Integer.valueOf(paramInt) });
      if (Build.VERSION.SDK_INT <= 19) {
        paramy.setSubtitle(paramy.getSubtitle());
      }
      return localy;
    }
    catch (Exception paramy)
    {
      Log.w("ActionBarDrawerToggleHoneycomb", "Couldn't set content description via JB-MR2 API", paramy);
    }
    return localy;
  }
  
  public static y a(y paramy, Activity paramActivity, Drawable paramDrawable, int paramInt)
  {
    paramy = new y(paramActivity);
    if (a != null) {
      try
      {
        paramActivity = paramActivity.getActionBar();
        a.invoke(paramActivity, new Object[] { paramDrawable });
        b.invoke(paramActivity, new Object[] { Integer.valueOf(paramInt) });
        return paramy;
      }
      catch (Exception paramActivity)
      {
        Log.w("ActionBarDrawerToggleHoneycomb", "Couldn't set home-as-up indicator via JB-MR2 API", paramActivity);
        return paramy;
      }
    }
    if (c != null)
    {
      c.setImageDrawable(paramDrawable);
      return paramy;
    }
    Log.w("ActionBarDrawerToggleHoneycomb", "Couldn't set home-as-up indicator");
    return paramy;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.x
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */