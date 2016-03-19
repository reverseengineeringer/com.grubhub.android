package com.facebook.share.internal;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.Fragment;
import android.support.v4.content.o;
import android.util.Log;
import com.facebook.AccessToken;
import com.facebook.AccessTokenTracker;
import com.facebook.ad;
import com.facebook.internal.ab;
import com.facebook.internal.ai;
import com.facebook.internal.al;
import com.facebook.internal.au;
import com.facebook.internal.s;
import com.facebook.x;
import java.io.Closeable;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONException;
import org.json.JSONObject;

public class a
{
  private static final String a = a.class.getSimpleName();
  private static s b;
  private static final ConcurrentHashMap<String, a> c = new ConcurrentHashMap();
  private static au d = new au(1);
  private static au e = new au(1);
  private static Handler f;
  private static String g;
  private static boolean h;
  private static volatile int i;
  private static AccessTokenTracker j;
  private String k;
  private com.facebook.share.widget.d l;
  private boolean m;
  private String n;
  private String o;
  private String p;
  private String q;
  private String r;
  private String s;
  private boolean t;
  private boolean u;
  private boolean v;
  private Bundle w;
  private com.facebook.a.a x;
  
  private a(String paramString, com.facebook.share.widget.d paramd)
  {
    k = paramString;
    l = paramd;
  }
  
  private static a a(String paramString)
  {
    paramString = d(paramString);
    a locala = (a)c.get(paramString);
    if (locala != null) {
      d.a(new k(paramString, false));
    }
    return locala;
  }
  
  private void a(Bundle paramBundle)
  {
    e(k);
    w = paramBundle;
    l(this);
  }
  
  private static void a(a parama, com.facebook.share.widget.d paramd, d paramd1)
  {
    Object localObject = null;
    com.facebook.share.widget.d locald = aa.a(paramd, l);
    if (locald == null)
    {
      parama = new com.facebook.h("Object with id:\"%s\" is already marked as type:\"%s\". Cannot change the type to:\"%s\"", new Object[] { k, l.toString(), paramd.toString() });
      paramd = (com.facebook.share.widget.d)localObject;
    }
    for (;;)
    {
      a(paramd1, paramd, parama);
      return;
      l = locald;
      localObject = null;
      paramd = parama;
      parama = (a)localObject;
    }
  }
  
  private static void a(d paramd, final a parama, final com.facebook.h paramh)
  {
    if (paramd == null) {
      return;
    }
    f.post(new Runnable()
    {
      public void run()
      {
        a(parama, paramh);
      }
    });
  }
  
  private void a(final n paramn)
  {
    if (!al.a(s))
    {
      if (paramn != null) {
        paramn.a();
      }
      return;
    }
    final f localf = new f(this, k, l);
    final h localh = new h(this, k, l);
    x localx = new x();
    localf.a(localx);
    localh.a(localx);
    localx.a(new com.facebook.y()
    {
      public void a(x paramAnonymousx)
      {
        a.c(a.this, localfe);
        if (al.a(a.h(a.this)))
        {
          a.c(a.this, localhe);
          a.d(a.this, localhf);
        }
        a locala;
        if (al.a(a.h(a.this)))
        {
          ab.a(ad.DEVELOPER_ERRORS, a.f(), "Unable to verify the FB id for '%s'. Verify that it is a valid FB object or page", new Object[] { a.j(a.this) });
          locala = a.this;
          if (localh.a() == null) {
            break label143;
          }
        }
        label143:
        for (paramAnonymousx = localh.a();; paramAnonymousx = localf.a())
        {
          a.a(locala, "get_verified_id", paramAnonymousx);
          if (paramn != null) {
            paramn.a();
          }
          return;
        }
      }
    });
    localx.h();
  }
  
  private void a(String paramString, Bundle paramBundle)
  {
    paramBundle = new Bundle(paramBundle);
    paramBundle.putString("object_id", k);
    paramBundle.putString("object_type", l.toString());
    paramBundle.putString("current_action", paramString);
    l().a("fb_like_control_error", null, paramBundle);
  }
  
  private void a(String paramString, com.facebook.j paramj)
  {
    Bundle localBundle = new Bundle();
    if (paramj != null)
    {
      paramj = paramj.e();
      if (paramj != null) {
        localBundle.putString("error", paramj.toString());
      }
    }
    a(paramString, localBundle);
  }
  
  private static void a(String paramString, a parama)
  {
    paramString = d(paramString);
    d.a(new k(paramString, true));
    c.put(paramString, parama);
  }
  
  public static void a(String paramString, com.facebook.share.widget.d paramd, d paramd1)
  {
    if (!h) {
      j();
    }
    a locala = a(paramString);
    if (locala != null)
    {
      a(locala, paramd, paramd1);
      return;
    }
    e.a(new c(paramString, paramd, paramd1));
  }
  
  private void a(boolean paramBoolean)
  {
    b(paramBoolean);
    Bundle localBundle = new Bundle();
    localBundle.putString("com.facebook.platform.status.ERROR_DESCRIPTION", "Unable to publish the like/unlike action");
    b(this, "com.facebook.sdk.LikeActionController.DID_ERROR", localBundle);
  }
  
  private void a(boolean paramBoolean, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    paramString1 = al.a(paramString1, null);
    paramString2 = al.a(paramString2, null);
    paramString3 = al.a(paramString3, null);
    paramString4 = al.a(paramString4, null);
    paramString5 = al.a(paramString5, null);
    if ((paramBoolean != m) || (!al.a(paramString1, n)) || (!al.a(paramString2, o)) || (!al.a(paramString3, p)) || (!al.a(paramString4, q)) || (!al.a(paramString5, r))) {}
    for (int i1 = 1; i1 == 0; i1 = 0) {
      return;
    }
    m = paramBoolean;
    n = paramString1;
    o = paramString2;
    p = paramString3;
    q = paramString4;
    r = paramString5;
    l(this);
    d(this, "com.facebook.sdk.LikeActionController.UPDATED");
  }
  
  private boolean a(boolean paramBoolean, Bundle paramBundle)
  {
    if (m())
    {
      if (paramBoolean)
      {
        b(paramBundle);
        return true;
      }
      if (!al.a(r))
      {
        c(paramBundle);
        return true;
      }
    }
    return false;
  }
  
  /* Error */
  private static a b(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aconst_null
    //   3: astore 4
    //   5: aload_0
    //   6: invokestatic 104	com/facebook/share/internal/a:d	(Ljava/lang/String;)Ljava/lang/String;
    //   9: astore_0
    //   10: getstatic 313	com/facebook/share/internal/a:b	Lcom/facebook/internal/s;
    //   13: aload_0
    //   14: invokevirtual 318	com/facebook/internal/s:a	(Ljava/lang/String;)Ljava/io/InputStream;
    //   17: astore_0
    //   18: aload 4
    //   20: astore_2
    //   21: aload_0
    //   22: ifnull +32 -> 54
    //   25: aload_0
    //   26: astore_1
    //   27: aload_0
    //   28: invokestatic 321	com/facebook/internal/al:a	(Ljava/io/InputStream;)Ljava/lang/String;
    //   31: astore 5
    //   33: aload 4
    //   35: astore_2
    //   36: aload_0
    //   37: astore_1
    //   38: aload 5
    //   40: invokestatic 183	com/facebook/internal/al:a	(Ljava/lang/String;)Z
    //   43: ifne +11 -> 54
    //   46: aload_0
    //   47: astore_1
    //   48: aload 5
    //   50: invokestatic 323	com/facebook/share/internal/a:c	(Ljava/lang/String;)Lcom/facebook/share/internal/a;
    //   53: astore_2
    //   54: aload_2
    //   55: astore_1
    //   56: aload_0
    //   57: ifnull +9 -> 66
    //   60: aload_0
    //   61: invokestatic 326	com/facebook/internal/al:a	(Ljava/io/Closeable;)V
    //   64: aload_2
    //   65: astore_1
    //   66: aload_1
    //   67: areturn
    //   68: astore_2
    //   69: aconst_null
    //   70: astore_0
    //   71: aload_0
    //   72: astore_1
    //   73: getstatic 74	com/facebook/share/internal/a:a	Ljava/lang/String;
    //   76: ldc_w 328
    //   79: aload_2
    //   80: invokestatic 333	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   83: pop
    //   84: aload_3
    //   85: astore_1
    //   86: aload_0
    //   87: ifnull -21 -> 66
    //   90: aload_0
    //   91: invokestatic 326	com/facebook/internal/al:a	(Ljava/io/Closeable;)V
    //   94: aconst_null
    //   95: areturn
    //   96: astore_0
    //   97: aconst_null
    //   98: astore_1
    //   99: aload_1
    //   100: ifnull +7 -> 107
    //   103: aload_1
    //   104: invokestatic 326	com/facebook/internal/al:a	(Ljava/io/Closeable;)V
    //   107: aload_0
    //   108: athrow
    //   109: astore_0
    //   110: goto -11 -> 99
    //   113: astore_2
    //   114: goto -43 -> 71
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	117	0	paramString	String
    //   26	78	1	localObject1	Object
    //   20	45	2	localObject2	Object
    //   68	12	2	localIOException1	IOException
    //   113	1	2	localIOException2	IOException
    //   1	84	3	localObject3	Object
    //   3	31	4	localObject4	Object
    //   31	18	5	str	String
    // Exception table:
    //   from	to	target	type
    //   5	18	68	java/io/IOException
    //   5	18	96	finally
    //   27	33	109	finally
    //   38	46	109	finally
    //   48	54	109	finally
    //   73	84	109	finally
    //   27	33	113	java/io/IOException
    //   38	46	113	java/io/IOException
    //   48	54	113	java/io/IOException
  }
  
  private void b(Activity paramActivity, Fragment paramFragment, Bundle paramBundle)
  {
    Object localObject;
    if (u.d())
    {
      localObject = "fb_like_control_did_present_dialog";
      if (localObject != null)
      {
        if (l == null) {
          break label135;
        }
        localObject = l.toString();
        label32:
        localObject = new t().a(k).b((String)localObject).a();
        if (paramFragment == null) {
          break label146;
        }
        new u(paramFragment).a(localObject);
      }
    }
    for (;;)
    {
      a(paramBundle);
      l().a("fb_like_control_did_present_dialog", null, paramBundle);
      return;
      if (u.e())
      {
        localObject = "fb_like_control_did_present_fallback_dialog";
        break;
      }
      a("present_dialog", paramBundle);
      al.b(a, "Cannot show the Like Dialog on this device.");
      d(null, "com.facebook.sdk.LikeActionController.UPDATED");
      localObject = null;
      break;
      label135:
      localObject = com.facebook.share.widget.d.UNKNOWN.toString();
      break label32;
      label146:
      new u(paramActivity).a(localObject);
    }
  }
  
  private void b(final Bundle paramBundle)
  {
    v = true;
    a(new n()
    {
      public void a()
      {
        if (al.a(a.h(a.this)))
        {
          localObject = new Bundle();
          ((Bundle)localObject).putString("com.facebook.platform.status.ERROR_DESCRIPTION", "Invalid Object Id");
          a.a(a.this, "com.facebook.sdk.LikeActionController.DID_ERROR", (Bundle)localObject);
          return;
        }
        Object localObject = new x();
        final l locall = new l(a.this, a.h(a.this), a.i(a.this));
        locall.a((x)localObject);
        ((x)localObject).a(new com.facebook.y()
        {
          public void a(x paramAnonymous2x)
          {
            a.a(a.this, false);
            if (locall.a() != null)
            {
              a.b(a.this, false);
              return;
            }
            a.b(a.this, al.a(localle, null));
            a.c(a.this, true);
            a.g(a.this).a("fb_like_control_did_like", null, a);
            a.a(a.this, a);
          }
        });
        ((x)localObject).h();
      }
    });
  }
  
  private static void b(a parama, String paramString, Bundle paramBundle)
  {
    Intent localIntent = new Intent(paramString);
    paramString = paramBundle;
    if (parama != null)
    {
      paramString = paramBundle;
      if (paramBundle == null) {
        paramString = new Bundle();
      }
      paramString.putString("com.facebook.sdk.LikeActionController.OBJECT_ID", parama.a());
    }
    if (paramString != null) {
      localIntent.putExtras(paramString);
    }
    o.a(com.facebook.m.f()).a(localIntent);
  }
  
  private static void b(String paramString1, String paramString2)
  {
    Object localObject = null;
    String str = null;
    try
    {
      paramString1 = b.b(paramString1);
      str = paramString1;
      localObject = paramString1;
      paramString1.write(paramString2.getBytes());
      if (paramString1 != null) {
        al.a(paramString1);
      }
      return;
    }
    catch (IOException paramString1)
    {
      do
      {
        localObject = str;
        Log.e(a, "Unable to serialize controller to disk", paramString1);
      } while (str == null);
      al.a(str);
      return;
    }
    finally
    {
      if (localObject != null) {
        al.a((Closeable)localObject);
      }
    }
  }
  
  private void b(boolean paramBoolean)
  {
    a(paramBoolean, n, o, p, q, r);
  }
  
  private static a c(String paramString)
  {
    try
    {
      paramString = new JSONObject(paramString);
      if (paramString.optInt("com.facebook.share.internal.LikeActionController.version", -1) != 3) {
        return null;
      }
      a locala = new a(paramString.getString("object_id"), com.facebook.share.widget.d.fromInt(paramString.optInt("object_type", com.facebook.share.widget.d.UNKNOWN.getValue())));
      n = paramString.optString("like_count_string_with_like", null);
      o = paramString.optString("like_count_string_without_like", null);
      p = paramString.optString("social_sentence_with_like", null);
      q = paramString.optString("social_sentence_without_like", null);
      m = paramString.optBoolean("is_object_liked");
      r = paramString.optString("unlike_token", null);
      JSONObject localJSONObject = paramString.optJSONObject("facebook_dialog_analytics_bundle");
      paramString = locala;
      if (localJSONObject != null)
      {
        w = com.facebook.internal.g.a(localJSONObject);
        paramString = locala;
      }
    }
    catch (JSONException paramString)
    {
      for (;;)
      {
        Log.e(a, "Unable to deserialize controller from JSON", paramString);
        paramString = null;
      }
    }
    return paramString;
  }
  
  private void c(final Bundle paramBundle)
  {
    v = true;
    x localx = new x();
    final m localm = new m(this, r);
    localm.a(localx);
    localx.a(new com.facebook.y()
    {
      public void a(x paramAnonymousx)
      {
        a.a(a.this, false);
        if (localm.a() != null)
        {
          a.b(a.this, true);
          return;
        }
        a.b(a.this, null);
        a.c(a.this, false);
        a.g(a.this).a("fb_like_control_did_unlike", null, paramBundle);
        a.a(a.this, paramBundle);
      }
    });
    localx.h();
  }
  
  private static void c(String paramString, com.facebook.share.widget.d paramd, d paramd1)
  {
    Object localObject = a(paramString);
    if (localObject != null)
    {
      a((a)localObject, paramd, paramd1);
      return;
    }
    a locala = b(paramString);
    localObject = locala;
    if (locala == null)
    {
      localObject = new a(paramString, paramd);
      l((a)localObject);
    }
    a(paramString, (a)localObject);
    f.post(new Runnable()
    {
      public void run()
      {
        a.a(a.this);
      }
    });
    a(paramd1, (a)localObject, null);
  }
  
  private static String d(String paramString)
  {
    String str = null;
    Object localObject = AccessToken.a();
    if (localObject != null) {
      str = ((AccessToken)localObject).b();
    }
    localObject = str;
    if (str != null) {
      localObject = al.b(str);
    }
    return String.format(Locale.ROOT, "%s|%s|com.fb.sdk.like|%d", new Object[] { paramString, al.a((String)localObject, ""), Integer.valueOf(i) });
  }
  
  private void d(Bundle paramBundle)
  {
    if ((m != u) && (!a(m, paramBundle))) {
      if (m) {
        break label38;
      }
    }
    label38:
    for (boolean bool = true;; bool = false)
    {
      a(bool);
      return;
    }
  }
  
  private static void d(a parama, String paramString)
  {
    b(parama, paramString, null);
  }
  
  private static void e(String paramString)
  {
    g = paramString;
    com.facebook.m.f().getSharedPreferences("com.facebook.LikeActionController.CONTROLLER_STORE_KEY", 0).edit().putString("PENDING_CONTROLLER_KEY", g).apply();
  }
  
  /* Error */
  private static void j()
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 257	com/facebook/share/internal/a:h	Z
    //   6: istore_0
    //   7: iload_0
    //   8: ifeq +7 -> 15
    //   11: ldc 2
    //   13: monitorexit
    //   14: return
    //   15: new 171	android/os/Handler
    //   18: dup
    //   19: invokestatic 565	android/os/Looper:getMainLooper	()Landroid/os/Looper;
    //   22: invokespecial 568	android/os/Handler:<init>	(Landroid/os/Looper;)V
    //   25: putstatic 167	com/facebook/share/internal/a:f	Landroid/os/Handler;
    //   28: invokestatic 397	com/facebook/m:f	()Landroid/content/Context;
    //   31: ldc_w 533
    //   34: iconst_0
    //   35: invokevirtual 539	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   38: ldc_w 570
    //   41: iconst_1
    //   42: invokeinterface 573 3 0
    //   47: putstatic 100	com/facebook/share/internal/a:i	I
    //   50: new 315	com/facebook/internal/s
    //   53: dup
    //   54: getstatic 74	com/facebook/share/internal/a:a	Ljava/lang/String;
    //   57: new 575	com/facebook/internal/v
    //   60: dup
    //   61: invokespecial 576	com/facebook/internal/v:<init>	()V
    //   64: invokespecial 579	com/facebook/internal/s:<init>	(Ljava/lang/String;Lcom/facebook/internal/v;)V
    //   67: putstatic 313	com/facebook/share/internal/a:b	Lcom/facebook/internal/s;
    //   70: invokestatic 581	com/facebook/share/internal/a:k	()V
    //   73: getstatic 587	com/facebook/internal/k:Like	Lcom/facebook/internal/k;
    //   76: invokevirtual 590	com/facebook/internal/k:toRequestCode	()I
    //   79: new 18	com/facebook/share/internal/a$5
    //   82: dup
    //   83: invokespecial 591	com/facebook/share/internal/a$5:<init>	()V
    //   86: invokestatic 596	com/facebook/internal/i:a	(ILcom/facebook/internal/j;)V
    //   89: iconst_1
    //   90: putstatic 257	com/facebook/share/internal/a:h	Z
    //   93: goto -82 -> 11
    //   96: astore_1
    //   97: ldc 2
    //   99: monitorexit
    //   100: aload_1
    //   101: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   6	2	0	bool	boolean
    //   96	5	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   3	7	96	finally
    //   15	93	96	finally
  }
  
  private static void k()
  {
    j = new AccessTokenTracker()
    {
      protected void a(AccessToken paramAnonymousAccessToken1, AccessToken paramAnonymousAccessToken2)
      {
        paramAnonymousAccessToken1 = com.facebook.m.f();
        if (paramAnonymousAccessToken2 == null)
        {
          a.a((a.g() + 1) % 1000);
          paramAnonymousAccessToken1.getSharedPreferences("com.facebook.LikeActionController.CONTROLLER_STORE_KEY", 0).edit().putInt("OBJECT_SUFFIX", a.g()).apply();
          a.h().clear();
          a.i().a();
        }
        a.a(null, "com.facebook.sdk.LikeActionController.DID_RESET");
      }
    };
  }
  
  private com.facebook.a.a l()
  {
    if (x == null) {
      x = com.facebook.a.a.a(com.facebook.m.f());
    }
    return x;
  }
  
  private static void l(a parama)
  {
    String str = m(parama);
    parama = d(k);
    if ((!al.a(str)) && (!al.a(parama))) {
      e.a(new p(parama, str));
    }
  }
  
  private static String m(a parama)
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("com.facebook.share.internal.LikeActionController.version", 3);
      localJSONObject.put("object_id", k);
      localJSONObject.put("object_type", l.getValue());
      localJSONObject.put("like_count_string_with_like", n);
      localJSONObject.put("like_count_string_without_like", o);
      localJSONObject.put("social_sentence_with_like", p);
      localJSONObject.put("social_sentence_without_like", q);
      localJSONObject.put("is_object_liked", m);
      localJSONObject.put("unlike_token", r);
      if (w != null)
      {
        parama = com.facebook.internal.g.a(w);
        if (parama != null) {
          localJSONObject.put("facebook_dialog_analytics_bundle", parama);
        }
      }
      return localJSONObject.toString();
    }
    catch (JSONException parama)
    {
      Log.e(a, "Unable to serialize controller to JSON", parama);
    }
    return null;
  }
  
  private boolean m()
  {
    AccessToken localAccessToken = AccessToken.a();
    return (!t) && (s != null) && (localAccessToken != null) && (localAccessToken.d() != null) && (localAccessToken.d().contains("publish_actions"));
  }
  
  private void n()
  {
    if (AccessToken.a() == null)
    {
      o();
      return;
    }
    a(new n()
    {
      public void a()
      {
        switch (a.3.a[a.i(a.this).ordinal()])
        {
        }
        for (final Object localObject = new g(a.this, a.h(a.this), a.i(a.this));; localObject = new i(a.this, a.h(a.this)))
        {
          final e locale = new e(a.this, a.h(a.this), a.i(a.this));
          x localx = new x();
          ((j)localObject).a(localx);
          locale.a(localx);
          localx.a(new com.facebook.y()
          {
            public void a(x paramAnonymous2x)
            {
              if ((localObject.a() != null) || (locale.a() != null))
              {
                ab.a(ad.REQUESTS, a.f(), "Unable to refresh like state for id: '%s'", new Object[] { a.j(a.this) });
                return;
              }
              a.a(a.this, localObject.b(), localee, localef, localeg, localeh, localObject.c());
            }
          });
          localx.h();
          return;
        }
      }
    });
  }
  
  private void o()
  {
    y localy = new y(com.facebook.m.f(), com.facebook.m.i(), k);
    if (!localy.a()) {
      return;
    }
    localy.a(new ai()
    {
      public void a(Bundle paramAnonymousBundle)
      {
        if ((paramAnonymousBundle == null) || (!paramAnonymousBundle.containsKey("com.facebook.platform.extra.OBJECT_IS_LIKED"))) {
          return;
        }
        boolean bool = paramAnonymousBundle.getBoolean("com.facebook.platform.extra.OBJECT_IS_LIKED");
        String str1;
        String str2;
        label54:
        String str3;
        label71:
        String str4;
        if (paramAnonymousBundle.containsKey("com.facebook.platform.extra.LIKE_COUNT_STRING_WITH_LIKE"))
        {
          str1 = paramAnonymousBundle.getString("com.facebook.platform.extra.LIKE_COUNT_STRING_WITH_LIKE");
          if (!paramAnonymousBundle.containsKey("com.facebook.platform.extra.LIKE_COUNT_STRING_WITHOUT_LIKE")) {
            break label132;
          }
          str2 = paramAnonymousBundle.getString("com.facebook.platform.extra.LIKE_COUNT_STRING_WITHOUT_LIKE");
          if (!paramAnonymousBundle.containsKey("com.facebook.platform.extra.SOCIAL_SENTENCE_WITH_LIKE")) {
            break label144;
          }
          str3 = paramAnonymousBundle.getString("com.facebook.platform.extra.SOCIAL_SENTENCE_WITH_LIKE");
          if (!paramAnonymousBundle.containsKey("com.facebook.platform.extra.SOCIAL_SENTENCE_WITHOUT_LIKE")) {
            break label156;
          }
          str4 = paramAnonymousBundle.getString("com.facebook.platform.extra.SOCIAL_SENTENCE_WITHOUT_LIKE");
          label88:
          if (!paramAnonymousBundle.containsKey("com.facebook.platform.extra.UNLIKE_TOKEN")) {
            break label168;
          }
        }
        label132:
        label144:
        label156:
        label168:
        for (paramAnonymousBundle = paramAnonymousBundle.getString("com.facebook.platform.extra.UNLIKE_TOKEN");; paramAnonymousBundle = a.f(a.this))
        {
          a.a(a.this, bool, str1, str2, str3, str4, paramAnonymousBundle);
          return;
          str1 = a.b(a.this);
          break;
          str2 = a.c(a.this);
          break label54;
          str3 = a.d(a.this);
          break label71;
          str4 = a.e(a.this);
          break label88;
        }
      }
    });
  }
  
  public String a()
  {
    return k;
  }
  
  public void a(Activity paramActivity, Fragment paramFragment, Bundle paramBundle)
  {
    boolean bool2 = true;
    if (!m)
    {
      bool1 = true;
      if (!m()) {
        break label91;
      }
      b(bool1);
      if (!v) {
        break label52;
      }
      l().a("fb_like_control_did_undo_quickly", null, paramBundle);
    }
    label52:
    while (a(bool1, paramBundle))
    {
      return;
      bool1 = false;
      break;
    }
    if (!bool1) {}
    for (boolean bool1 = bool2;; bool1 = false)
    {
      b(bool1);
      b(paramActivity, paramFragment, paramBundle);
      return;
    }
    label91:
    b(paramActivity, paramFragment, paramBundle);
  }
  
  public String b()
  {
    if (m) {
      return n;
    }
    return o;
  }
  
  public String c()
  {
    if (m) {
      return p;
    }
    return q;
  }
  
  public boolean d()
  {
    return m;
  }
  
  public boolean e()
  {
    if ((u.d()) || (u.e())) {}
    AccessToken localAccessToken;
    do
    {
      return true;
      if ((t) || (l == com.facebook.share.widget.d.PAGE)) {
        return false;
      }
      localAccessToken = AccessToken.a();
    } while ((localAccessToken != null) && (localAccessToken.d() != null) && (localAccessToken.d().contains("publish_actions")));
    return false;
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.internal.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */