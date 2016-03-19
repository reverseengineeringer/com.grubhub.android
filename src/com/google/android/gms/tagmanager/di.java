package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.analytics.Tracker;
import com.google.android.gms.analytics.e;

class di
{
  private e a;
  private Context b;
  private Tracker c;
  
  di(Context paramContext)
  {
    b = paramContext;
  }
  
  private void b(String paramString)
  {
    try
    {
      if (a == null)
      {
        a = e.a(b);
        a.a(new dj());
        c = a.a(paramString);
      }
      return;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
  
  public Tracker a(String paramString)
  {
    b(paramString);
    return c;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.di
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */