package com.google.android.gms.analytics.internal;

import com.google.android.gms.common.internal.aq;
import com.google.android.gms.common.internal.h;
import com.google.android.gms.d.aj;

public final class as<V>
{
  private final V a;
  private final aj<V> b;
  private V c;
  
  private as(aj<V> paramaj, V paramV)
  {
    aq.a(paramaj);
    b = paramaj;
    a = paramV;
  }
  
  static as<Float> a(String paramString, float paramFloat)
  {
    return a(paramString, paramFloat, paramFloat);
  }
  
  static as<Float> a(String paramString, float paramFloat1, float paramFloat2)
  {
    return new as(aj.a(paramString, Float.valueOf(paramFloat2)), Float.valueOf(paramFloat1));
  }
  
  static as<Integer> a(String paramString, int paramInt)
  {
    return a(paramString, paramInt, paramInt);
  }
  
  static as<Integer> a(String paramString, int paramInt1, int paramInt2)
  {
    return new as(aj.a(paramString, Integer.valueOf(paramInt2)), Integer.valueOf(paramInt1));
  }
  
  static as<Long> a(String paramString, long paramLong)
  {
    return a(paramString, paramLong, paramLong);
  }
  
  static as<Long> a(String paramString, long paramLong1, long paramLong2)
  {
    return new as(aj.a(paramString, Long.valueOf(paramLong2)), Long.valueOf(paramLong1));
  }
  
  static as<String> a(String paramString1, String paramString2)
  {
    return a(paramString1, paramString2, paramString2);
  }
  
  static as<String> a(String paramString1, String paramString2, String paramString3)
  {
    return new as(aj.a(paramString1, paramString3), paramString2);
  }
  
  static as<Boolean> a(String paramString, boolean paramBoolean)
  {
    return a(paramString, paramBoolean, paramBoolean);
  }
  
  static as<Boolean> a(String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    return new as(aj.a(paramString, paramBoolean2), Boolean.valueOf(paramBoolean1));
  }
  
  public V a()
  {
    if (c != null) {
      return (V)c;
    }
    if ((h.a) && (aj.b())) {
      return (V)b.d();
    }
    return (V)a;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.internal.as
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */