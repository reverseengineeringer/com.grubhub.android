package android.support.v4.app;

import android.app.Notification.Action;
import android.app.Notification.Action.Builder;
import android.app.Notification.Builder;
import android.app.RemoteInput;
import android.os.Parcelable;
import java.util.ArrayList;

class bu
{
  private static Notification.Action a(bz parambz)
  {
    Notification.Action.Builder localBuilder = new Notification.Action.Builder(parambz.a(), parambz.b(), parambz.c()).addExtras(parambz.d());
    parambz = parambz.f();
    if (parambz != null)
    {
      parambz = db.a(parambz);
      int j = parambz.length;
      int i = 0;
      while (i < j)
      {
        localBuilder.addRemoteInput(parambz[i]);
        i += 1;
      }
    }
    return localBuilder.build();
  }
  
  public static ArrayList<Parcelable> a(bz[] paramArrayOfbz)
  {
    Object localObject;
    if (paramArrayOfbz == null)
    {
      localObject = null;
      return (ArrayList<Parcelable>)localObject;
    }
    ArrayList localArrayList = new ArrayList(paramArrayOfbz.length);
    int j = paramArrayOfbz.length;
    int i = 0;
    for (;;)
    {
      localObject = localArrayList;
      if (i >= j) {
        break;
      }
      localArrayList.add(a(paramArrayOfbz[i]));
      i += 1;
    }
  }
  
  public static void a(Notification.Builder paramBuilder, bz parambz)
  {
    Notification.Action.Builder localBuilder = new Notification.Action.Builder(parambz.a(), parambz.b(), parambz.c());
    if (parambz.f() != null)
    {
      RemoteInput[] arrayOfRemoteInput = db.a(parambz.f());
      int j = arrayOfRemoteInput.length;
      int i = 0;
      while (i < j)
      {
        localBuilder.addRemoteInput(arrayOfRemoteInput[i]);
        i += 1;
      }
    }
    if (parambz.d() != null) {
      localBuilder.addExtras(parambz.d());
    }
    paramBuilder.addAction(localBuilder.build());
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.bu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */