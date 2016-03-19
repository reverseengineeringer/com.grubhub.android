package com.taplytics;

import android.util.Log;
import java.util.Date;

public class ck
{
  private static final ck a = new ck();
  private static boolean b = false;
  
  public static ck a()
  {
    return a;
  }
  
  public static void a(String paramString)
  {
    a(paramString, null);
  }
  
  public static void a(String paramString, Exception paramException)
  {
    if (b)
    {
      if (paramException != null) {
        Log.w("Taplytics", "WARNING: " + paramString + ", error: " + paramException.toString());
      }
    }
    else {
      return;
    }
    Log.w("Taplytics", "WARNING: " + paramString);
  }
  
  public static void a(String paramString, Exception paramException, boolean paramBoolean)
  {
    if (b)
    {
      if (paramException == null) {
        break label60;
      }
      Log.e("Taplytics", "ERROR: " + paramString + ", error: " + paramException.toString());
    }
    for (;;)
    {
      fy.e().n().a(paramString, paramException, paramBoolean);
      return;
      label60:
      Log.e("Taplytics", "ERROR: " + paramString);
    }
  }
  
  public static void a(String paramString1, String paramString2, Exception paramException)
  {
    if (b)
    {
      if (paramException == null) {
        break label71;
      }
      Log.e("Taplytics", "NETWORK ERROR: " + paramString2 + ", error: " + paramException.toString());
    }
    while (fy.e().i())
    {
      fy.e().n().a("tlRequestFailed", paramString1, paramString2, paramException);
      return;
      label71:
      Log.e("Taplytics", "NETWORK ERROR: " + paramString2);
    }
    if (paramException != null)
    {
      c("Network Error:" + paramString2 + ", error: " + paramException.toString());
      return;
    }
    c("Network Error:" + paramString2);
  }
  
  public static void a(String paramString, Date paramDate)
  {
    if (b)
    {
      if (paramDate != null)
      {
        long l1 = new Date().getTime();
        long l2 = paramDate.getTime();
        Log.d("Taplytics", d(paramString + ", time: " + (l1 - l2) + "ms"));
      }
    }
    else {
      return;
    }
    Log.d("Taplytics", d(paramString));
  }
  
  public static String b()
  {
    return "Taplytics";
  }
  
  public static void b(String paramString)
  {
    a(paramString, null);
  }
  
  public static void b(String paramString, Exception paramException)
  {
    a(paramString, paramException, true);
  }
  
  public static void c(String paramString)
  {
    b(paramString, null);
  }
  
  public static void c(String paramString, Exception paramException)
  {
    if (b)
    {
      if (paramException != null) {
        Log.e("Taplytics", "SUPER ERROR: " + paramString + ", error: " + paramException.toString());
      }
    }
    else {
      return;
    }
    Log.e("Taplytics", "SUPER ERROR: " + paramString);
  }
  
  public static boolean c()
  {
    return b;
  }
  
  private static String d(String paramString)
  {
    Object localObject = Thread.currentThread();
    if (((Thread)localObject).getName() != null) {}
    for (localObject = ((Thread)localObject).getName();; localObject = ((Thread)localObject).getId() + "") {
      return (String)localObject + ": " + paramString;
    }
  }
  
  public void a(boolean paramBoolean)
  {
    b = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     com.taplytics.ck
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */