package com.urbanairship;

import android.util.Log;

public class Logger
{
  public static String TAG = "UALib";
  public static int logLevel = 6;
  
  public static void debug(String paramString)
  {
    if ((logLevel <= 3) && (paramString != null)) {
      Log.d(TAG, paramString);
    }
  }
  
  public static void debug(String paramString, Throwable paramThrowable)
  {
    if ((logLevel <= 3) && (paramString != null) && (paramThrowable != null)) {
      Log.d(TAG, paramString, paramThrowable);
    }
  }
  
  public static void error(String paramString)
  {
    if ((logLevel <= 6) && (paramString != null)) {
      Log.e(TAG, paramString);
    }
  }
  
  public static void error(String paramString, Throwable paramThrowable)
  {
    if ((logLevel <= 6) && (paramString != null) && (paramThrowable != null)) {
      Log.e(TAG, paramString, paramThrowable);
    }
  }
  
  public static void error(Throwable paramThrowable)
  {
    if ((logLevel <= 6) && (paramThrowable != null)) {
      Log.e(TAG, "", paramThrowable);
    }
  }
  
  public static void info(String paramString)
  {
    if ((logLevel <= 4) && (paramString != null)) {
      Log.i(TAG, paramString);
    }
  }
  
  public static void info(String paramString, Throwable paramThrowable)
  {
    if ((logLevel <= 4) && (paramString != null) && (paramThrowable != null)) {
      Log.i(TAG, paramString, paramThrowable);
    }
  }
  
  public static void verbose(String paramString)
  {
    if ((logLevel <= 2) && (paramString != null)) {
      Log.v(TAG, paramString);
    }
  }
  
  public static void warn(String paramString)
  {
    if ((logLevel <= 5) && (paramString != null)) {
      Log.w(TAG, paramString);
    }
  }
  
  public static void warn(String paramString, Throwable paramThrowable)
  {
    if ((logLevel <= 5) && (paramString != null) && (paramThrowable != null)) {
      Log.w(TAG, paramString, paramThrowable);
    }
  }
  
  public static void warn(Throwable paramThrowable)
  {
    if ((logLevel <= 5) && (paramThrowable != null)) {
      Log.w(TAG, paramThrowable);
    }
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.Logger
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */