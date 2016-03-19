package com.google.android.gms.d;

import java.io.IOException;

public class ed
  extends IOException
{
  ed(int paramInt1, int paramInt2)
  {
    super("CodedOutputStream was writing to a flat byte array and ran out of space (pos " + paramInt1 + " limit " + paramInt2 + ").");
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.d.ed
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */