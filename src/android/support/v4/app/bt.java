package android.support.v4.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.List;

public final class bt
  implements bh
{
  private ArrayList<ba> a = new ArrayList();
  private int b = 1;
  private PendingIntent c;
  private ArrayList<Notification> d = new ArrayList();
  private Bitmap e;
  private int f;
  private int g = 8388613;
  private int h = -1;
  private int i = 0;
  private int j;
  private int k = 80;
  private int l;
  
  public bt a()
  {
    bt localbt = new bt();
    a = new ArrayList(a);
    b = b;
    c = c;
    d = new ArrayList(d);
    e = e;
    f = f;
    g = g;
    h = h;
    i = i;
    j = j;
    k = k;
    l = l;
    return localbt;
  }
  
  public bt a(Notification paramNotification)
  {
    d.add(paramNotification);
    return this;
  }
  
  public bt a(Bitmap paramBitmap)
  {
    e = paramBitmap;
    return this;
  }
  
  public bt a(List<ba> paramList)
  {
    a.addAll(paramList);
    return this;
  }
  
  public bf extend(bf parambf)
  {
    Bundle localBundle = new Bundle();
    if (!a.isEmpty()) {
      localBundle.putParcelableArrayList("actions", az.a().a((ba[])a.toArray(new ba[a.size()])));
    }
    if (b != 1) {
      localBundle.putInt("flags", b);
    }
    if (c != null) {
      localBundle.putParcelable("displayIntent", c);
    }
    if (!d.isEmpty()) {
      localBundle.putParcelableArray("pages", (Parcelable[])d.toArray(new Notification[d.size()]));
    }
    if (e != null) {
      localBundle.putParcelable("background", e);
    }
    if (f != 0) {
      localBundle.putInt("contentIcon", f);
    }
    if (g != 8388613) {
      localBundle.putInt("contentIconGravity", g);
    }
    if (h != -1) {
      localBundle.putInt("contentActionIndex", h);
    }
    if (i != 0) {
      localBundle.putInt("customSizePreset", i);
    }
    if (j != 0) {
      localBundle.putInt("customContentHeight", j);
    }
    if (k != 80) {
      localBundle.putInt("gravity", k);
    }
    if (l != 0) {
      localBundle.putInt("hintScreenTimeout", l);
    }
    parambf.a().putBundle("android.wearable.EXTENSIONS", localBundle);
    return parambf;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.bt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */