package com.google.android.gms.tagmanager;

import android.text.TextUtils;

class ah
{
  private final long a;
  private final long b;
  private final long c;
  private String d;
  
  ah(long paramLong1, long paramLong2, long paramLong3)
  {
    a = paramLong1;
    b = paramLong2;
    c = paramLong3;
  }
  
  long a()
  {
    return a;
  }
  
  void a(String paramString)
  {
    if ((paramString == null) || (TextUtils.isEmpty(paramString.trim()))) {
      return;
    }
    d = paramString;
  }
  
  long b()
  {
    return c;
  }
  
  String c()
  {
    return d;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.ah
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */