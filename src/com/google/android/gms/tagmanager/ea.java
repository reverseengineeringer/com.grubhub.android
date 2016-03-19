package com.google.android.gms.tagmanager;

import android.os.Build.VERSION;

class ea<K, V>
{
  final eb<K, V> a = new eb()
  {
    public int a(K paramAnonymousK, V paramAnonymousV)
    {
      return 1;
    }
  };
  
  int a()
  {
    return Build.VERSION.SDK_INT;
  }
  
  public dz<K, V> a(int paramInt, eb<K, V> parameb)
  {
    if (paramInt <= 0) {
      throw new IllegalArgumentException("maxSize <= 0");
    }
    if (a() < 12) {
      return new cz(paramInt, parameb);
    }
    return new at(paramInt, parameb);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.ea
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */