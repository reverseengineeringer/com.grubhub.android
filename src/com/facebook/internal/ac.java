package com.facebook.internal;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.facebook.h;
import com.facebook.i;
import com.facebook.login.a;
import com.facebook.m;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;
import java.util.UUID;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;

public final class ac
{
  private static final af a = new ad(null);
  private static List<af> b = e();
  private static Map<String, List<af>> c = f();
  private static AtomicBoolean d = new AtomicBoolean(false);
  private static final List<Integer> e = Arrays.asList(new Integer[] { Integer.valueOf(20141218), Integer.valueOf(20141107), Integer.valueOf(20141028), Integer.valueOf(20141001), Integer.valueOf(20140701), Integer.valueOf(20140324), Integer.valueOf(20140204), Integer.valueOf(20131107), Integer.valueOf(20130618), Integer.valueOf(20130502), Integer.valueOf(20121101) });
  
  public static final int a()
  {
    return ((Integer)e.get(0)).intValue();
  }
  
  public static int a(Intent paramIntent)
  {
    return paramIntent.getIntExtra("com.facebook.platform.protocol.PROTOCOL_VERSION", 0);
  }
  
  public static int a(String paramString, int[] paramArrayOfInt)
  {
    return a((List)c.get(paramString), paramArrayOfInt);
  }
  
  private static int a(List<af> paramList, int[] paramArrayOfInt)
  {
    
    if (paramList == null) {
      return -1;
    }
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      int i = a(((af)paramList.next()).b(), a(), paramArrayOfInt);
      if (i != -1) {
        return i;
      }
    }
    return -1;
  }
  
  public static int a(TreeSet<Integer> paramTreeSet, int paramInt, int[] paramArrayOfInt)
  {
    int i = paramArrayOfInt.length;
    paramTreeSet = paramTreeSet.descendingIterator();
    int j = -1;
    i -= 1;
    for (;;)
    {
      int k;
      if (paramTreeSet.hasNext())
      {
        k = ((Integer)paramTreeSet.next()).intValue();
        j = Math.max(j, k);
        while ((i >= 0) && (paramArrayOfInt[i] > k)) {
          i -= 1;
        }
        if (i >= 0) {
          break label72;
        }
      }
      label72:
      do
      {
        return -1;
        if (paramArrayOfInt[i] != k) {
          break;
        }
      } while (i % 2 != 0);
      return Math.min(j, paramInt);
    }
  }
  
  public static Intent a(Context paramContext)
  {
    Iterator localIterator = b.iterator();
    while (localIterator.hasNext())
    {
      Object localObject = (af)localIterator.next();
      localObject = b(paramContext, new Intent("com.facebook.platform.PLATFORM_SERVICE").setPackage(((af)localObject).a()).addCategory("android.intent.category.DEFAULT"), (af)localObject);
      if (localObject != null) {
        return (Intent)localObject;
      }
    }
    return null;
  }
  
  static Intent a(Context paramContext, Intent paramIntent, af paramaf)
  {
    if (paramIntent == null) {
      paramIntent = null;
    }
    ResolveInfo localResolveInfo;
    do
    {
      return paramIntent;
      localResolveInfo = paramContext.getPackageManager().resolveActivity(paramIntent, 0);
      if (localResolveInfo == null) {
        return null;
      }
    } while (paramaf.a(paramContext, activityInfo.packageName));
    return null;
  }
  
  private static Intent a(Context paramContext, String paramString1, String paramString2)
  {
    paramString2 = (List)c.get(paramString2);
    if (paramString2 == null) {}
    Intent localIntent;
    do
    {
      Iterator localIterator;
      for (paramString2 = null; !localIterator.hasNext(); paramString2 = null)
      {
        return paramString2;
        localIterator = paramString2.iterator();
      }
      paramString2 = (af)localIterator.next();
      localIntent = a(paramContext, new Intent().setAction(paramString1).setPackage(paramString2.a()).addCategory("android.intent.category.DEFAULT"), paramString2);
      paramString2 = localIntent;
    } while (localIntent == null);
    return localIntent;
  }
  
  public static Intent a(Context paramContext, String paramString1, String paramString2, int paramInt, Bundle paramBundle)
  {
    paramContext = a(paramContext, "com.facebook.platform.PLATFORM_ACTIVITY", paramString2);
    if (paramContext == null) {
      return null;
    }
    a(paramContext, paramString1, paramString2, paramInt, paramBundle);
    return paramContext;
  }
  
  public static Intent a(Context paramContext, String paramString1, Collection<String> paramCollection, String paramString2, boolean paramBoolean1, boolean paramBoolean2, a parama)
  {
    Iterator localIterator = b.iterator();
    while (localIterator.hasNext())
    {
      Object localObject = (af)localIterator.next();
      Intent localIntent = new Intent().setClassName(((af)localObject).a(), "com.facebook.katana.ProxyAuth").putExtra("client_id", paramString1);
      if (!al.a(paramCollection)) {
        localIntent.putExtra("scope", TextUtils.join(",", paramCollection));
      }
      if (!al.a(paramString2)) {
        localIntent.putExtra("e2e", paramString2);
      }
      localIntent.putExtra("response_type", "token,signed_request");
      localIntent.putExtra("return_scopes", "true");
      if (paramBoolean2) {
        localIntent.putExtra("default_audience", parama.getNativeProtocolAudience());
      }
      localIntent.putExtra("legacy_override", "v2.5");
      if (paramBoolean1) {
        localIntent.putExtra("auth_type", "rerequest");
      }
      localObject = a(paramContext, localIntent, (af)localObject);
      if (localObject != null) {
        return (Intent)localObject;
      }
    }
    return null;
  }
  
  public static Intent a(Intent paramIntent, Bundle paramBundle, h paramh)
  {
    UUID localUUID = b(paramIntent);
    if (localUUID == null) {
      paramIntent = null;
    }
    Intent localIntent;
    do
    {
      return paramIntent;
      localIntent = new Intent();
      localIntent.putExtra("com.facebook.platform.protocol.PROTOCOL_VERSION", a(paramIntent));
      paramIntent = new Bundle();
      paramIntent.putString("action_id", localUUID.toString());
      if (paramh != null) {
        paramIntent.putBundle("error", a(paramh));
      }
      localIntent.putExtra("com.facebook.platform.protocol.BRIDGE_ARGS", paramIntent);
      paramIntent = localIntent;
    } while (paramBundle == null);
    localIntent.putExtra("com.facebook.platform.protocol.RESULT_ARGS", paramBundle);
    return localIntent;
  }
  
  public static Bundle a(h paramh)
  {
    Object localObject;
    if (paramh == null) {
      localObject = null;
    }
    Bundle localBundle;
    do
    {
      return (Bundle)localObject;
      localBundle = new Bundle();
      localBundle.putString("error_description", paramh.toString());
      localObject = localBundle;
    } while (!(paramh instanceof i));
    localBundle.putString("error_type", "UserCanceled");
    return localBundle;
  }
  
  public static h a(Bundle paramBundle)
  {
    if (paramBundle == null) {
      return null;
    }
    Object localObject2 = paramBundle.getString("error_type");
    Object localObject1 = localObject2;
    if (localObject2 == null) {
      localObject1 = paramBundle.getString("com.facebook.platform.status.ERROR_TYPE");
    }
    String str = paramBundle.getString("error_description");
    localObject2 = str;
    if (str == null) {
      localObject2 = paramBundle.getString("com.facebook.platform.status.ERROR_DESCRIPTION");
    }
    if ((localObject1 != null) && (((String)localObject1).equalsIgnoreCase("UserCanceled"))) {
      return new i((String)localObject2);
    }
    return new h((String)localObject2);
  }
  
  public static void a(Intent paramIntent, String paramString1, String paramString2, int paramInt, Bundle paramBundle)
  {
    String str2 = m.i();
    String str1 = m.j();
    paramIntent.putExtra("com.facebook.platform.protocol.PROTOCOL_VERSION", paramInt).putExtra("com.facebook.platform.protocol.PROTOCOL_ACTION", paramString2).putExtra("com.facebook.platform.extra.APPLICATION_ID", str2);
    if (a(paramInt))
    {
      paramString2 = new Bundle();
      paramString2.putString("action_id", paramString1);
      al.a(paramString2, "app_name", str1);
      paramIntent.putExtra("com.facebook.platform.protocol.BRIDGE_ARGS", paramString2);
      paramString1 = paramBundle;
      if (paramBundle == null) {
        paramString1 = new Bundle();
      }
      paramIntent.putExtra("com.facebook.platform.protocol.METHOD_ARGS", paramString1);
      return;
    }
    paramIntent.putExtra("com.facebook.platform.protocol.CALL_ID", paramString1);
    if (!al.a(str1)) {
      paramIntent.putExtra("com.facebook.platform.extra.APPLICATION_NAME", str1);
    }
    paramIntent.putExtras(paramBundle);
  }
  
  public static boolean a(int paramInt)
  {
    return (e.contains(Integer.valueOf(paramInt))) && (paramInt >= 20140701);
  }
  
  public static int b(int paramInt)
  {
    return a(b, new int[] { paramInt });
  }
  
  static Intent b(Context paramContext, Intent paramIntent, af paramaf)
  {
    if (paramIntent == null) {
      paramIntent = null;
    }
    ResolveInfo localResolveInfo;
    do
    {
      return paramIntent;
      localResolveInfo = paramContext.getPackageManager().resolveService(paramIntent, 0);
      if (localResolveInfo == null) {
        return null;
      }
    } while (paramaf.a(paramContext, serviceInfo.packageName));
    return null;
  }
  
  /* Error */
  private static TreeSet<Integer> b(af paramaf)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: new 130	java/util/TreeSet
    //   5: dup
    //   6: invokespecial 378	java/util/TreeSet:<init>	()V
    //   9: astore_3
    //   10: invokestatic 381	com/facebook/m:f	()Landroid/content/Context;
    //   13: invokevirtual 385	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   16: astore_1
    //   17: aload_0
    //   18: invokestatic 388	com/facebook/internal/ac:c	(Lcom/facebook/internal/af;)Landroid/net/Uri;
    //   21: astore 4
    //   23: invokestatic 381	com/facebook/m:f	()Landroid/content/Context;
    //   26: invokevirtual 170	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   29: new 390	java/lang/StringBuilder
    //   32: dup
    //   33: invokespecial 391	java/lang/StringBuilder:<init>	()V
    //   36: aload_0
    //   37: invokevirtual 152	com/facebook/internal/af:a	()Ljava/lang/String;
    //   40: invokevirtual 395	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   43: ldc_w 397
    //   46: invokevirtual 395	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   49: invokevirtual 398	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   52: iconst_0
    //   53: invokevirtual 402	android/content/pm/PackageManager:resolveContentProvider	(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;
    //   56: ifnull +79 -> 135
    //   59: aload_1
    //   60: aload 4
    //   62: iconst_1
    //   63: anewarray 324	java/lang/String
    //   66: dup
    //   67: iconst_0
    //   68: ldc_w 404
    //   71: aastore
    //   72: aconst_null
    //   73: aconst_null
    //   74: aconst_null
    //   75: invokevirtual 410	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   78: astore_0
    //   79: aload_0
    //   80: astore_1
    //   81: aload_0
    //   82: ifnull +55 -> 137
    //   85: aload_0
    //   86: astore_1
    //   87: aload_0
    //   88: invokeinterface 415 1 0
    //   93: ifeq +44 -> 137
    //   96: aload_3
    //   97: aload_0
    //   98: aload_0
    //   99: ldc_w 404
    //   102: invokeinterface 419 2 0
    //   107: invokeinterface 422 2 0
    //   112: invokestatic 53	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   115: invokevirtual 425	java/util/TreeSet:add	(Ljava/lang/Object;)Z
    //   118: pop
    //   119: goto -34 -> 85
    //   122: astore_1
    //   123: aload_0
    //   124: ifnull +9 -> 133
    //   127: aload_0
    //   128: invokeinterface 428 1 0
    //   133: aload_1
    //   134: athrow
    //   135: aconst_null
    //   136: astore_1
    //   137: aload_1
    //   138: ifnull +9 -> 147
    //   141: aload_1
    //   142: invokeinterface 428 1 0
    //   147: aload_3
    //   148: areturn
    //   149: astore_1
    //   150: aload_2
    //   151: astore_0
    //   152: goto -29 -> 123
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	155	0	paramaf	af
    //   16	71	1	localObject1	Object
    //   122	12	1	localObject2	Object
    //   136	6	1	localObject3	Object
    //   149	1	1	localObject4	Object
    //   1	150	2	localObject5	Object
    //   9	139	3	localTreeSet	TreeSet
    //   21	40	4	localUri	Uri
    // Exception table:
    //   from	to	target	type
    //   87	119	122	finally
    //   23	79	149	finally
  }
  
  public static UUID b(Intent paramIntent)
  {
    if (paramIntent == null) {}
    for (;;)
    {
      return null;
      if (a(a(paramIntent)))
      {
        paramIntent = paramIntent.getBundleExtra("com.facebook.platform.protocol.BRIDGE_ARGS");
        if (paramIntent == null) {
          break label61;
        }
        paramIntent = paramIntent.getString("action_id");
      }
      while (paramIntent != null)
      {
        try
        {
          paramIntent = UUID.fromString(paramIntent);
          return paramIntent;
        }
        catch (IllegalArgumentException paramIntent)
        {
          return null;
        }
        paramIntent = paramIntent.getStringExtra("com.facebook.platform.protocol.CALL_ID");
        continue;
        label61:
        paramIntent = null;
      }
    }
  }
  
  public static void b()
  {
    if (!d.compareAndSet(false, true)) {
      return;
    }
    m.d().execute(new Runnable()
    {
      public void run()
      {
        try
        {
          Iterator localIterator = ac.c().iterator();
          while (localIterator.hasNext()) {
            af.a((af)localIterator.next(), true);
          }
        }
        finally
        {
          ac.d().set(false);
        }
      }
    });
  }
  
  private static Uri c(af paramaf)
  {
    return Uri.parse("content://" + paramaf.a() + ".provider.PlatformProvider/versions");
  }
  
  public static Bundle c(Intent paramIntent)
  {
    if (!a(a(paramIntent))) {
      return null;
    }
    return paramIntent.getBundleExtra("com.facebook.platform.protocol.BRIDGE_ARGS");
  }
  
  public static Bundle d(Intent paramIntent)
  {
    if (!a(a(paramIntent))) {
      return paramIntent.getExtras();
    }
    return paramIntent.getBundleExtra("com.facebook.platform.protocol.METHOD_ARGS");
  }
  
  private static List<af> e()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(a);
    localArrayList.add(new ag(null));
    return localArrayList;
  }
  
  public static boolean e(Intent paramIntent)
  {
    Bundle localBundle = c(paramIntent);
    if (localBundle != null) {
      return localBundle.containsKey("error");
    }
    return paramIntent.hasExtra("com.facebook.platform.status.ERROR_TYPE");
  }
  
  private static Map<String, List<af>> f()
  {
    HashMap localHashMap = new HashMap();
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new ae(null));
    localHashMap.put("com.facebook.platform.action.request.OGACTIONPUBLISH_DIALOG", b);
    localHashMap.put("com.facebook.platform.action.request.FEED_DIALOG", b);
    localHashMap.put("com.facebook.platform.action.request.LIKE_DIALOG", b);
    localHashMap.put("com.facebook.platform.action.request.APPINVITES_DIALOG", b);
    localHashMap.put("com.facebook.platform.action.request.MESSAGE_DIALOG", localArrayList);
    localHashMap.put("com.facebook.platform.action.request.OGMESSAGEPUBLISH_DIALOG", localArrayList);
    return localHashMap;
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.ac
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */