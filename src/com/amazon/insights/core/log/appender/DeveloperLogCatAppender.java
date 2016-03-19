package com.amazon.insights.core.log.appender;

import android.util.Log;

public class DeveloperLogCatAppender
  extends LogAppender
{
  public void devd(String paramString1, String paramString2)
  {
    Log.d(paramString1, paramString2);
  }
  
  public void devd(String paramString1, String paramString2, Throwable paramThrowable)
  {
    Log.d(paramString1, paramString2, paramThrowable);
  }
  
  public void deve(String paramString1, String paramString2)
  {
    Log.e(paramString1, paramString2);
  }
  
  public void deve(String paramString1, String paramString2, Throwable paramThrowable)
  {
    Log.e(paramString1, paramString2, paramThrowable);
  }
  
  public void devi(String paramString1, String paramString2)
  {
    Log.i(paramString1, paramString2);
  }
  
  public void devi(String paramString1, String paramString2, Throwable paramThrowable)
  {
    Log.i(paramString1, paramString2, paramThrowable);
  }
  
  public void devv(String paramString1, String paramString2)
  {
    Log.v(paramString1, paramString2);
  }
  
  public void devv(String paramString1, String paramString2, Throwable paramThrowable)
  {
    Log.v(paramString1, paramString2, paramThrowable);
  }
  
  public void devw(String paramString1, String paramString2)
  {
    Log.w(paramString1, paramString2);
  }
  
  public void devw(String paramString1, String paramString2, Throwable paramThrowable)
  {
    Log.w(paramString1, paramString2, paramThrowable);
  }
  
  public void devw(String paramString, Throwable paramThrowable)
  {
    Log.w(paramString, paramThrowable);
  }
}

/* Location:
 * Qualified Name:     com.amazon.insights.core.log.appender.DeveloperLogCatAppender
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */