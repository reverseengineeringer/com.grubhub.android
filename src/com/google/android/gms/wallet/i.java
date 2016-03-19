package com.google.android.gms.wallet;

import java.util.Locale;

public final class i
{
  private int a = 3;
  private int b = 0;
  
  public h a()
  {
    return new h(this, null);
  }
  
  public i a(int paramInt)
  {
    if ((paramInt == 0) || (paramInt == 2) || (paramInt == 1) || (paramInt == 3))
    {
      a = paramInt;
      return this;
    }
    throw new IllegalArgumentException(String.format(Locale.US, "Invalid environment value %d", new Object[] { Integer.valueOf(paramInt) }));
  }
  
  public i b(int paramInt)
  {
    if ((paramInt == 0) || (paramInt == 1))
    {
      b = paramInt;
      return this;
    }
    throw new IllegalArgumentException(String.format(Locale.US, "Invalid theme value %d", new Object[] { Integer.valueOf(paramInt) }));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */