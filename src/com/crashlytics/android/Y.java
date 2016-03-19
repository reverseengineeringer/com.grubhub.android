package com.crashlytics.android;

import com.crashlytics.android.internal.au;
import java.io.IOException;
import java.io.InputStream;

final class y
  implements au
{
  y(v paramv, byte[] paramArrayOfByte, int[] paramArrayOfInt) {}
  
  public final void a(InputStream paramInputStream, int paramInt)
    throws IOException
  {
    try
    {
      paramInputStream.read(a, b[0], paramInt);
      int[] arrayOfInt = b;
      arrayOfInt[0] += paramInt;
      return;
    }
    finally
    {
      paramInputStream.close();
    }
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.y
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */