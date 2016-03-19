package android.support.v4.c;

import android.os.Build.VERSION;
import android.os.Parcelable.Creator;

public class c
{
  public static <T> Parcelable.Creator<T> a(e<T> parame)
  {
    if (Build.VERSION.SDK_INT >= 13) {
      return g.a(parame);
    }
    return new d(parame);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.c.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */