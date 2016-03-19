package android.support.v4.app;

import android.app.PendingIntent;
import android.os.Bundle;
import java.util.ArrayList;

public final class bb
{
  private final int a;
  private final CharSequence b;
  private final PendingIntent c;
  private final Bundle d;
  private ArrayList<cv> e;
  
  public bb(int paramInt, CharSequence paramCharSequence, PendingIntent paramPendingIntent)
  {
    this(paramInt, paramCharSequence, paramPendingIntent, new Bundle());
  }
  
  private bb(int paramInt, CharSequence paramCharSequence, PendingIntent paramPendingIntent, Bundle paramBundle)
  {
    a = paramInt;
    b = bf.e(paramCharSequence);
    c = paramPendingIntent;
    d = paramBundle;
  }
  
  public ba a()
  {
    if (e != null) {}
    for (cv[] arrayOfcv = (cv[])e.toArray(new cv[e.size()]);; arrayOfcv = null) {
      return new ba(a, b, c, d, arrayOfcv, null);
    }
  }
  
  public bb a(Bundle paramBundle)
  {
    if (paramBundle != null) {
      d.putAll(paramBundle);
    }
    return this;
  }
  
  public bb a(bc parambc)
  {
    parambc.a(this);
    return this;
  }
  
  public bb a(cv paramcv)
  {
    if (e == null) {
      e = new ArrayList();
    }
    e.add(paramcv);
    return this;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.bb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */