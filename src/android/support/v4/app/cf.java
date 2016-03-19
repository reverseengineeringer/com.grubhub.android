package android.support.v4.app;

import android.app.Notification;
import android.app.Notification.BigPictureStyle;
import android.app.Notification.BigTextStyle;
import android.app.Notification.Builder;
import android.app.Notification.InboxStyle;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class cf
{
  private static final Object a = new Object();
  private static Field b;
  private static boolean c;
  private static final Object d = new Object();
  
  public static Bundle a(Notification.Builder paramBuilder, bz parambz)
  {
    paramBuilder.addAction(parambz.a(), parambz.b(), parambz.c());
    paramBuilder = new Bundle(parambz.d());
    if (parambz.f() != null) {
      paramBuilder.putParcelableArray("android.support.remoteInputs", df.a(parambz.f()));
    }
    return paramBuilder;
  }
  
  public static Bundle a(Notification paramNotification)
  {
    Object localObject1;
    Bundle localBundle;
    synchronized (a)
    {
      if (c) {
        return null;
      }
    }
  }
  
  private static Bundle a(bz parambz)
  {
    Bundle localBundle = new Bundle();
    localBundle.putInt("icon", parambz.a());
    localBundle.putCharSequence("title", parambz.b());
    localBundle.putParcelable("actionIntent", parambz.c());
    localBundle.putBundle("extras", parambz.d());
    localBundle.putParcelableArray("remoteInputs", df.a(parambz.f()));
    return localBundle;
  }
  
  public static SparseArray<Bundle> a(List<Bundle> paramList)
  {
    Object localObject1 = null;
    int j = paramList.size();
    int i = 0;
    while (i < j)
    {
      Bundle localBundle = (Bundle)paramList.get(i);
      Object localObject2 = localObject1;
      if (localBundle != null)
      {
        localObject2 = localObject1;
        if (localObject1 == null) {
          localObject2 = new SparseArray();
        }
        ((SparseArray)localObject2).put(i, localBundle);
      }
      i += 1;
      localObject1 = localObject2;
    }
    return (SparseArray<Bundle>)localObject1;
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
  
  public static void a(ay paramay, CharSequence paramCharSequence1, boolean paramBoolean1, CharSequence paramCharSequence2, Bitmap paramBitmap1, Bitmap paramBitmap2, boolean paramBoolean2)
  {
    paramay = new Notification.BigPictureStyle(paramay.a()).setBigContentTitle(paramCharSequence1).bigPicture(paramBitmap1);
    if (paramBoolean2) {
      paramay.bigLargeIcon(paramBitmap2);
    }
    if (paramBoolean1) {
      paramay.setSummaryText(paramCharSequence2);
    }
  }
  
  public static void a(ay paramay, CharSequence paramCharSequence1, boolean paramBoolean, CharSequence paramCharSequence2, CharSequence paramCharSequence3)
  {
    paramay = new Notification.BigTextStyle(paramay.a()).setBigContentTitle(paramCharSequence1).bigText(paramCharSequence3);
    if (paramBoolean) {
      paramay.setSummaryText(paramCharSequence2);
    }
  }
  
  public static void a(ay paramay, CharSequence paramCharSequence1, boolean paramBoolean, CharSequence paramCharSequence2, ArrayList<CharSequence> paramArrayList)
  {
    paramay = new Notification.InboxStyle(paramay.a()).setBigContentTitle(paramCharSequence1);
    if (paramBoolean) {
      paramay.setSummaryText(paramCharSequence2);
    }
    paramCharSequence1 = paramArrayList.iterator();
    while (paramCharSequence1.hasNext()) {
      paramay.addLine((CharSequence)paramCharSequence1.next());
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.cf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */