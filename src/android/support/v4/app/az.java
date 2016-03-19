package android.support.v4.app;

import android.app.Notification;
import android.os.Build.VERSION;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.Iterator;

public class az
{
  private static final bj a = new bm();
  
  static
  {
    if (Build.VERSION.SDK_INT >= 21)
    {
      a = new bl();
      return;
    }
    if (Build.VERSION.SDK_INT >= 20)
    {
      a = new bk();
      return;
    }
    if (Build.VERSION.SDK_INT >= 19)
    {
      a = new br();
      return;
    }
    if (Build.VERSION.SDK_INT >= 16)
    {
      a = new bq();
      return;
    }
    if (Build.VERSION.SDK_INT >= 14)
    {
      a = new bp();
      return;
    }
    if (Build.VERSION.SDK_INT >= 11)
    {
      a = new bo();
      return;
    }
    if (Build.VERSION.SDK_INT >= 9)
    {
      a = new bn();
      return;
    }
  }
  
  public static Bundle a(Notification paramNotification)
  {
    return a.a(paramNotification);
  }
  
  private static void b(ax paramax, ArrayList<ba> paramArrayList)
  {
    paramArrayList = paramArrayList.iterator();
    while (paramArrayList.hasNext()) {
      paramax.a((ba)paramArrayList.next());
    }
  }
  
  private static void b(ay paramay, bs parambs)
  {
    if (parambs != null)
    {
      if (!(parambs instanceof be)) {
        break label37;
      }
      parambs = (be)parambs;
      cf.a(paramay, e, g, f, a);
    }
    label37:
    do
    {
      return;
      if ((parambs instanceof bi))
      {
        parambs = (bi)parambs;
        cf.a(paramay, e, g, f, a);
        return;
      }
    } while (!(parambs instanceof bd));
    parambs = (bd)parambs;
    cf.a(paramay, e, g, f, a, b, c);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.az
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */