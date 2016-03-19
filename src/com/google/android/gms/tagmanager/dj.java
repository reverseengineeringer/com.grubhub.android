package com.google.android.gms.tagmanager;

import com.google.android.gms.analytics.l;

class dj
  implements l
{
  private static int b(int paramInt)
  {
    switch (paramInt)
    {
    case 6: 
    default: 
      return 3;
    case 5: 
      return 2;
    case 3: 
    case 4: 
      return 1;
    }
    return 0;
  }
  
  public int a()
  {
    return b(ba.a());
  }
  
  public void a(int paramInt)
  {
    ba.b("GA uses GTM logger. Please use TagManager.setLogLevel(int) instead.");
  }
  
  public void a(String paramString)
  {
    ba.e(paramString);
  }
  
  public void b(String paramString)
  {
    ba.c(paramString);
  }
  
  public void c(String paramString)
  {
    ba.b(paramString);
  }
  
  public void d(String paramString)
  {
    ba.a(paramString);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.dj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */