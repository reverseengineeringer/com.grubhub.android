package android.support.v4.app;

import android.app.PendingIntent;
import android.os.Bundle;

public class ba
  extends bz
{
  public static final ca d = new ca() {};
  public int a;
  public CharSequence b;
  public PendingIntent c;
  private final Bundle e;
  private final cv[] f;
  
  public ba(int paramInt, CharSequence paramCharSequence, PendingIntent paramPendingIntent)
  {
    this(paramInt, paramCharSequence, paramPendingIntent, new Bundle(), null);
  }
  
  private ba(int paramInt, CharSequence paramCharSequence, PendingIntent paramPendingIntent, Bundle paramBundle, cv[] paramArrayOfcv)
  {
    a = paramInt;
    b = bf.e(paramCharSequence);
    c = paramPendingIntent;
    if (paramBundle != null) {}
    for (;;)
    {
      e = paramBundle;
      f = paramArrayOfcv;
      return;
      paramBundle = new Bundle();
    }
  }
  
  public int a()
  {
    return a;
  }
  
  public CharSequence b()
  {
    return b;
  }
  
  public PendingIntent c()
  {
    return c;
  }
  
  public Bundle d()
  {
    return e;
  }
  
  public cv[] e()
  {
    return f;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.ba
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */