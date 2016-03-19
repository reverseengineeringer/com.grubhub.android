package com.google.android.gms.d;

import java.io.IOException;

public final class en
{
  public static final int[] a = new int[0];
  public static final long[] b = new long[0];
  public static final float[] c = new float[0];
  public static final double[] d = new double[0];
  public static final boolean[] e = new boolean[0];
  public static final String[] f = new String[0];
  public static final byte[][] g = new byte[0][];
  public static final byte[] h = new byte[0];
  
  static int a(int paramInt)
  {
    return paramInt & 0x7;
  }
  
  static int a(int paramInt1, int paramInt2)
  {
    return paramInt1 << 3 | paramInt2;
  }
  
  public static final int a(eb parameb, int paramInt)
    throws IOException
  {
    int i = 1;
    int j = parameb.o();
    parameb.b(paramInt);
    while (parameb.a() == paramInt)
    {
      parameb.b(paramInt);
      i += 1;
    }
    parameb.e(j);
    return i;
  }
  
  public static int b(int paramInt)
  {
    return paramInt >>> 3;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.d.en
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */