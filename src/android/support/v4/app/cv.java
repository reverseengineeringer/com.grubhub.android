package android.support.v4.app;

import android.os.Build.VERSION;
import android.os.Bundle;

public class cv
  extends dd
{
  public static final de a;
  private static final cx g;
  private final String b;
  private final CharSequence c;
  private final CharSequence[] d;
  private final boolean e;
  private final Bundle f;
  
  static
  {
    if (Build.VERSION.SDK_INT >= 20) {
      g = new cy();
    }
    for (;;)
    {
      a = new de() {};
      return;
      if (Build.VERSION.SDK_INT >= 16) {
        g = new da();
      } else {
        g = new cz();
      }
    }
  }
  
  cv(String paramString, CharSequence paramCharSequence, CharSequence[] paramArrayOfCharSequence, boolean paramBoolean, Bundle paramBundle)
  {
    b = paramString;
    c = paramCharSequence;
    d = paramArrayOfCharSequence;
    e = paramBoolean;
    f = paramBundle;
  }
  
  public String a()
  {
    return b;
  }
  
  public CharSequence b()
  {
    return c;
  }
  
  public CharSequence[] c()
  {
    return d;
  }
  
  public boolean d()
  {
    return e;
  }
  
  public Bundle e()
  {
    return f;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.cv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */