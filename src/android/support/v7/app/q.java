package android.support.v7.app;

import android.app.Activity;
import android.content.Context;
import android.support.v4.view.bp;
import android.view.Window;

class q
  extends z
  implements r
{
  private final Activity a;
  
  public q(Activity paramActivity, Context paramContext)
  {
    super(paramContext);
    a = paramActivity;
  }
  
  public void a(float paramFloat)
  {
    if (paramFloat == 1.0F) {
      a(true);
    }
    for (;;)
    {
      super.b(paramFloat);
      return;
      if (paramFloat == 0.0F) {
        a(false);
      }
    }
  }
  
  boolean a()
  {
    return bp.e(a.getWindow().getDecorView()) == 1;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */