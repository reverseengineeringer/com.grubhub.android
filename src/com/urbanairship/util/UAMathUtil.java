package com.urbanairship.util;

public abstract class UAMathUtil
{
  public static int constrain(int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramInt1 > paramInt3) {
      return paramInt3;
    }
    if (paramInt1 < paramInt2) {
      return paramInt2;
    }
    return paramInt1;
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.util.UAMathUtil
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */