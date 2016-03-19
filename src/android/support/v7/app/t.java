package android.support.v7.app;

import android.app.ActionBar;
import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.Drawable;

class t
  implements o
{
  final Activity a;
  y b;
  
  private t(Activity paramActivity)
  {
    a = paramActivity;
  }
  
  public Drawable a()
  {
    return x.a(a);
  }
  
  public void a(int paramInt)
  {
    b = x.a(b, a, paramInt);
  }
  
  public void a(Drawable paramDrawable, int paramInt)
  {
    a.getActionBar().setDisplayShowHomeEnabled(true);
    b = x.a(b, a, paramDrawable, paramInt);
    a.getActionBar().setDisplayShowHomeEnabled(false);
  }
  
  public Context b()
  {
    ActionBar localActionBar = a.getActionBar();
    if (localActionBar != null) {
      return localActionBar.getThemedContext();
    }
    return a;
  }
  
  public boolean c()
  {
    ActionBar localActionBar = a.getActionBar();
    return (localActionBar != null) && ((localActionBar.getDisplayOptions() & 0x4) != 0);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */