package com.google.android.gms.d;

import android.os.Build.VERSION;

public class db
{
  public da a()
  {
    if (b() < 8) {
      return new cy();
    }
    return new cz();
  }
  
  int b()
  {
    return Build.VERSION.SDK_INT;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.d.db
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */