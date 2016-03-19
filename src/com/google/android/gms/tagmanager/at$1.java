package com.google.android.gms.tagmanager;

import android.util.LruCache;

class at$1
  extends LruCache<K, V>
{
  at$1(at paramat, int paramInt, eb parameb)
  {
    super(paramInt);
  }
  
  protected int sizeOf(K paramK, V paramV)
  {
    return a.a(paramK, paramV);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.at.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */