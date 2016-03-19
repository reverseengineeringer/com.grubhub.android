package android.support.v4.app;

import android.app.Activity;
import android.content.pm.PackageManager;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Looper;

public class a
  extends android.support.v4.content.a
{
  private static e a(dg paramdg)
  {
    c localc = null;
    if (paramdg != null) {
      localc = new c(paramdg);
    }
    return localc;
  }
  
  public static void a(Activity paramActivity)
  {
    if (Build.VERSION.SDK_INT >= 16)
    {
      j.a(paramActivity);
      return;
    }
    paramActivity.finish();
  }
  
  public static void a(Activity paramActivity, dg paramdg)
  {
    if (Build.VERSION.SDK_INT >= 21) {
      d.a(paramActivity, a(paramdg));
    }
  }
  
  public static void a(final Activity paramActivity, String[] paramArrayOfString, final int paramInt)
  {
    if (Build.VERSION.SDK_INT >= 23) {
      g.a(paramActivity, paramArrayOfString, paramInt);
    }
    while (!(paramActivity instanceof b)) {
      return;
    }
    new Handler(Looper.getMainLooper()).post(new Runnable()
    {
      public void run()
      {
        int[] arrayOfInt = new int[a.this.length];
        PackageManager localPackageManager = paramActivity.getPackageManager();
        String str = paramActivity.getPackageName();
        int j = a.this.length;
        int i = 0;
        while (i < j)
        {
          arrayOfInt[i] = localPackageManager.checkPermission(a.this[i], str);
          i += 1;
        }
        ((b)paramActivity).onRequestPermissionsResult(paramInt, a.this, arrayOfInt);
      }
    });
  }
  
  public static boolean a(Activity paramActivity, String paramString)
  {
    if (Build.VERSION.SDK_INT >= 23) {
      return g.a(paramActivity, paramString);
    }
    return false;
  }
  
  public static void b(Activity paramActivity)
  {
    if (Build.VERSION.SDK_INT >= 21)
    {
      d.a(paramActivity);
      return;
    }
    paramActivity.finish();
  }
  
  public static void b(Activity paramActivity, dg paramdg)
  {
    if (Build.VERSION.SDK_INT >= 21) {
      d.b(paramActivity, a(paramdg));
    }
  }
  
  public static void c(Activity paramActivity)
  {
    if (Build.VERSION.SDK_INT >= 21) {
      d.b(paramActivity);
    }
  }
  
  public static void d(Activity paramActivity)
  {
    if (Build.VERSION.SDK_INT >= 21) {
      d.c(paramActivity);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */