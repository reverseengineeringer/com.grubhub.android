package com.google.android.gms.d;

import android.content.Context;
import android.content.pm.PackageManager;
import java.util.regex.Pattern;

public final class ba
{
  private static Pattern a = null;
  
  public static int a(int paramInt)
  {
    return paramInt / 1000;
  }
  
  public static boolean a(Context paramContext)
  {
    return paramContext.getPackageManager().hasSystemFeature("android.hardware.type.watch");
  }
  
  public static int b(int paramInt)
  {
    return paramInt % 1000 / 100;
  }
  
  public static boolean c(int paramInt)
  {
    return b(paramInt) == 3;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.d.ba
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */