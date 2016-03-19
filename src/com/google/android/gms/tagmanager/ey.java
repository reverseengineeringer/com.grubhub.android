package com.google.android.gms.tagmanager;

import android.util.Log;

public class ey
  implements bb
{
  private int a = 5;
  
  public void a(int paramInt)
  {
    a = paramInt;
  }
  
  public void a(String paramString)
  {
    if (a <= 6) {
      Log.e("GoogleTagManager", paramString);
    }
  }
  
  public void a(String paramString, Throwable paramThrowable)
  {
    if (a <= 6) {
      Log.e("GoogleTagManager", paramString, paramThrowable);
    }
  }
  
  public void b(String paramString)
  {
    if (a <= 5) {
      Log.w("GoogleTagManager", paramString);
    }
  }
  
  public void b(String paramString, Throwable paramThrowable)
  {
    if (a <= 5) {
      Log.w("GoogleTagManager", paramString, paramThrowable);
    }
  }
  
  public void c(String paramString)
  {
    if (a <= 4) {
      Log.i("GoogleTagManager", paramString);
    }
  }
  
  public void d(String paramString)
  {
    if (a <= 3) {
      Log.d("GoogleTagManager", paramString);
    }
  }
  
  public void e(String paramString)
  {
    if (a <= 2) {
      Log.v("GoogleTagManager", paramString);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.ey
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */