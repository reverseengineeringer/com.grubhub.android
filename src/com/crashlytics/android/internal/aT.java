package com.crashlytics.android.internal;

import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;

final class at
  extends InputStream
{
  private int a;
  private int b;
  
  private at(aq paramaq, as paramas)
  {
    a = aq.a(paramaq, b + 4);
    b = c;
  }
  
  public final int read()
    throws IOException
  {
    if (b == 0) {
      return -1;
    }
    aq.a(c).seek(a);
    int i = aq.a(c).read();
    a = aq.a(c, a + 1);
    b -= 1;
    return i;
  }
  
  public final int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    aq.a(paramArrayOfByte, "buffer");
    if (((paramInt1 | paramInt2) < 0) || (paramInt2 > paramArrayOfByte.length - paramInt1)) {
      throw new ArrayIndexOutOfBoundsException();
    }
    if (b > 0)
    {
      int i = paramInt2;
      if (paramInt2 > b) {
        i = b;
      }
      aq.a(c, a, paramArrayOfByte, paramInt1, i);
      a = aq.a(c, a + i);
      b -= i;
      return i;
    }
    return -1;
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.internal.at
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */