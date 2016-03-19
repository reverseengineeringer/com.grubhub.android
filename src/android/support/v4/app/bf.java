package android.support.v4.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.widget.RemoteViews;
import java.util.ArrayList;

public class bf
{
  Notification A;
  public Notification B = new Notification();
  public ArrayList<String> C;
  public Context a;
  public CharSequence b;
  public CharSequence c;
  PendingIntent d;
  PendingIntent e;
  RemoteViews f;
  public Bitmap g;
  public CharSequence h;
  public int i;
  int j;
  boolean k = true;
  public boolean l;
  public bs m;
  public CharSequence n;
  int o;
  int p;
  boolean q;
  String r;
  boolean s;
  String t;
  public ArrayList<ba> u = new ArrayList();
  boolean v = false;
  String w;
  Bundle x;
  int y = 0;
  int z = 0;
  
  public bf(Context paramContext)
  {
    a = paramContext;
    B.when = System.currentTimeMillis();
    B.audioStreamType = -1;
    j = 0;
    C = new ArrayList();
  }
  
  private void a(int paramInt, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      localNotification = B;
      flags |= paramInt;
      return;
    }
    Notification localNotification = B;
    flags &= (paramInt ^ 0xFFFFFFFF);
  }
  
  protected static CharSequence e(CharSequence paramCharSequence)
  {
    if (paramCharSequence == null) {}
    while (paramCharSequence.length() <= 5120) {
      return paramCharSequence;
    }
    return paramCharSequence.subSequence(0, 5120);
  }
  
  public Bundle a()
  {
    if (x == null) {
      x = new Bundle();
    }
    return x;
  }
  
  public bf a(int paramInt)
  {
    B.icon = paramInt;
    return this;
  }
  
  public bf a(Notification paramNotification)
  {
    A = paramNotification;
    return this;
  }
  
  public bf a(PendingIntent paramPendingIntent)
  {
    d = paramPendingIntent;
    return this;
  }
  
  public bf a(Bitmap paramBitmap)
  {
    g = paramBitmap;
    return this;
  }
  
  public bf a(Uri paramUri)
  {
    B.sound = paramUri;
    B.audioStreamType = -1;
    return this;
  }
  
  public bf a(ba paramba)
  {
    u.add(paramba);
    return this;
  }
  
  public bf a(bh parambh)
  {
    parambh.extend(this);
    return this;
  }
  
  public bf a(bs parambs)
  {
    if (m != parambs)
    {
      m = parambs;
      if (m != null) {
        m.a(this);
      }
    }
    return this;
  }
  
  public bf a(RemoteViews paramRemoteViews)
  {
    B.contentView = paramRemoteViews;
    return this;
  }
  
  public bf a(CharSequence paramCharSequence)
  {
    b = e(paramCharSequence);
    return this;
  }
  
  public bf a(String paramString)
  {
    w = paramString;
    return this;
  }
  
  public bf a(boolean paramBoolean)
  {
    a(16, paramBoolean);
    return this;
  }
  
  public Notification b()
  {
    return az.a().a(this, c());
  }
  
  public bf b(int paramInt)
  {
    B.defaults = paramInt;
    if ((paramInt & 0x4) != 0)
    {
      Notification localNotification = B;
      flags |= 0x1;
    }
    return this;
  }
  
  public bf b(CharSequence paramCharSequence)
  {
    c = e(paramCharSequence);
    return this;
  }
  
  public bf b(boolean paramBoolean)
  {
    v = paramBoolean;
    return this;
  }
  
  public bf c(int paramInt)
  {
    j = paramInt;
    return this;
  }
  
  public bf c(CharSequence paramCharSequence)
  {
    n = e(paramCharSequence);
    return this;
  }
  
  protected bg c()
  {
    return new bg();
  }
  
  public bf d(int paramInt)
  {
    y = paramInt;
    return this;
  }
  
  public bf d(CharSequence paramCharSequence)
  {
    B.tickerText = e(paramCharSequence);
    return this;
  }
  
  public bf e(int paramInt)
  {
    z = paramInt;
    return this;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.bf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */