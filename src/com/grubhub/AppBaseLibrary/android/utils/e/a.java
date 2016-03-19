package com.grubhub.AppBaseLibrary.android.utils.e;

import android.util.Log;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.utils.f;

public class a
{
  private static boolean a = ;
  
  public static int a(String paramString1, String paramString2)
  {
    if (e(paramString1, paramString2)) {
      return Log.d(paramString1, paramString2);
    }
    return 0;
  }
  
  public static int a(String paramString1, String paramString2, Throwable paramThrowable)
  {
    if (e(paramString1, paramString2)) {
      return Log.e(paramString1, paramString2, paramThrowable);
    }
    return 0;
  }
  
  private static boolean a(String paramString)
  {
    return (a) && (f.b(paramString));
  }
  
  public static int b(String paramString1, String paramString2)
  {
    if (e(paramString1, paramString2)) {
      return Log.e(paramString1, paramString2);
    }
    return 0;
  }
  
  public static int c(String paramString1, String paramString2)
  {
    if (e(paramString1, paramString2)) {
      return Log.i(paramString1, paramString2);
    }
    return 0;
  }
  
  public static int d(String paramString1, String paramString2)
  {
    if (e(paramString1, paramString2)) {
      return Log.w(paramString1, paramString2);
    }
    return 0;
  }
  
  private static boolean e(String paramString1, String paramString2)
  {
    return (a(paramString1)) && (f.b(paramString2));
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.utils.e.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */