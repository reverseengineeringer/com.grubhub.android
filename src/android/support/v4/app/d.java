package android.support.v4.app;

import android.app.Activity;
import android.app.SharedElementCallback;

class d
{
  private static SharedElementCallback a(e parame)
  {
    f localf = null;
    if (parame != null) {
      localf = new f(parame);
    }
    return localf;
  }
  
  public static void a(Activity paramActivity)
  {
    paramActivity.finishAfterTransition();
  }
  
  public static void a(Activity paramActivity, e parame)
  {
    paramActivity.setEnterSharedElementCallback(a(parame));
  }
  
  public static void b(Activity paramActivity)
  {
    paramActivity.postponeEnterTransition();
  }
  
  public static void b(Activity paramActivity, e parame)
  {
    paramActivity.setExitSharedElementCallback(a(parame));
  }
  
  public static void c(Activity paramActivity)
  {
    paramActivity.startPostponedEnterTransition();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */