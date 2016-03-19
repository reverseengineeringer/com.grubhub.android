package com.google.android.gms.common.internal;

import java.util.Arrays;

public final class ao
{
  public static int a(Object... paramVarArgs)
  {
    return Arrays.hashCode(paramVarArgs);
  }
  
  public static ap a(Object paramObject)
  {
    return new ap(paramObject, null);
  }
  
  public static boolean a(Object paramObject1, Object paramObject2)
  {
    return (paramObject1 == paramObject2) || ((paramObject1 != null) && (paramObject1.equals(paramObject2)));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.internal.ao
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */