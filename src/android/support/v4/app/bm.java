package android.support.v4.app;

import android.app.Notification;
import android.os.Bundle;
import android.os.Parcelable;
import java.util.ArrayList;

class bm
  implements bj
{
  public Notification a(bf parambf, bg parambg)
  {
    parambg = B;
    parambg.setLatestEventInfo(a, b, c, d);
    if (j > 0) {
      flags |= 0x80;
    }
    return parambg;
  }
  
  public Bundle a(Notification paramNotification)
  {
    return null;
  }
  
  public ArrayList<Parcelable> a(ba[] paramArrayOfba)
  {
    return null;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.bm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */