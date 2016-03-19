package com.google.android.gms.tagmanager;

import android.util.LruCache;

class at<K, V>
  implements dz<K, V>
{
  private LruCache<K, V> a;
  
  at(int paramInt, final eb<K, V> parameb)
  {
    a = new LruCache(paramInt)
    {
      protected int sizeOf(K paramAnonymousK, V paramAnonymousV)
      {
        return parameb.a(paramAnonymousK, paramAnonymousV);
      }
    };
  }
  
  public V a(K paramK)
  {
    return (V)a.get(paramK);
  }
  
  public void a(K paramK, V paramV)
  {
    a.put(paramK, paramV);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.at
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */