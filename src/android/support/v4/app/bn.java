package android.support.v4.app;

import android.app.Notification;

class bn
  extends bm
{
  public Notification a(bf parambf, bg parambg)
  {
    parambg = B;
    parambg.setLatestEventInfo(a, b, c, d);
    parambg = cb.a(parambg, a, b, c, d, e);
    if (j > 0) {
      flags |= 0x80;
    }
    return parambg;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.bn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */