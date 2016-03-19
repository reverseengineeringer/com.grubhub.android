package com.braintreepayments.api;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.braintreepayments.api.exceptions.ErrorWithResponse;
import com.braintreepayments.api.models.AndroidPayCard;
import com.braintreepayments.api.models.Card;
import com.braintreepayments.api.models.PaymentMethod;
import com.braintreepayments.api.models.ThreeDSecureAuthenticationResponse;
import com.google.android.gms.wallet.Cart;
import com.google.android.gms.wallet.FullWallet;
import com.google.android.gms.wallet.MaskedWallet;
import com.google.android.gms.wallet.PaymentMethodTokenizationParameters;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import org.json.JSONException;

public class c
{
  protected static final Map<String, c> a = new HashMap();
  private final ExecutorService b;
  private final k c;
  private String d;
  private String e;
  private final Handler f = new Handler(Looper.getMainLooper());
  private final List<g> g = new LinkedList();
  private boolean h = false;
  private final Set<j> i = new HashSet();
  private final Set<h> j = new HashSet();
  private final Set<i> k = new HashSet();
  private final Set<e> l = new HashSet();
  private List<PaymentMethod> m;
  
  protected c(Context paramContext, String paramString)
  {
    c = new k(paramContext.getApplicationContext(), com.braintreepayments.api.models.g.a(paramString));
    b = Executors.newSingleThreadExecutor();
    d = "custom";
    e = paramString;
    a.put(e, this);
  }
  
  protected c(String paramString, k paramk)
  {
    c = paramk;
    b = Executors.newSingleThreadExecutor();
    d = "custom";
    e = paramString;
    a.put(e, this);
  }
  
  public static c a(Context paramContext, Bundle paramBundle)
  {
    if (paramBundle == null) {
      paramBundle = null;
    }
    String str1;
    String str2;
    c localc;
    do
    {
      return paramBundle;
      str1 = paramBundle.getString("com.braintreepayments.api.KEY_CLIENT_TOKEN");
      str2 = paramBundle.getString("com.braintreepayments.api.KEY_CONFIGURATION");
      localc = (c)a.get(str1);
      if (localc == null) {
        break;
      }
      paramBundle = localc;
    } while (localc.p());
    if ((!TextUtils.isEmpty(str1)) && (!TextUtils.isEmpty(str2))) {
      return new c(str1, new k(paramContext.getApplicationContext(), str1, str2));
    }
    return null;
  }
  
  public static void a(Context paramContext, String paramString, d paramd)
  {
    b(paramContext, paramString, paramd);
  }
  
  private void a(final ErrorWithResponse paramErrorWithResponse)
  {
    try
    {
      a(new g()
      {
        public void a()
        {
          Iterator localIterator = c.h(c.this).iterator();
          while (localIterator.hasNext())
          {
            final e locale = (e)localIterator.next();
            c.e(c.this).post(new Runnable()
            {
              public void run()
              {
                locale.a(a);
              }
            });
          }
        }
        
        public boolean b()
        {
          return !c.h(c.this).isEmpty();
        }
      });
      return;
    }
    finally
    {
      paramErrorWithResponse = finally;
      throw paramErrorWithResponse;
    }
  }
  
  private void a(PaymentMethod paramPaymentMethod)
  {
    if (m == null) {
      m = new ArrayList();
    }
    m.add(0, paramPaymentMethod);
  }
  
  private void a(List<PaymentMethod> paramList)
  {
    try
    {
      a(new g()
      {
        public void a()
        {
          Iterator localIterator = c.d(c.this).iterator();
          while (localIterator.hasNext())
          {
            final j localj = (j)localIterator.next();
            c.e(c.this).post(new Runnable()
            {
              public void run()
              {
                localj.a(a);
              }
            });
          }
        }
        
        public boolean b()
        {
          return !c.d(c.this).isEmpty();
        }
      });
      return;
    }
    finally
    {
      paramList = finally;
      throw paramList;
    }
  }
  
  protected static Future<?> b(final Context paramContext, String paramString, final d paramd)
  {
    Executors.newSingleThreadExecutor().submit(new Runnable()
    {
      public void run()
      {
        final Exception localException1 = null;
        for (;;)
        {
          try
          {
            if (c.a.containsKey(c.this)) {
              localc = (c)c.a.get(c.this);
            }
          }
          catch (Exception localException2)
          {
            final c localc = null;
          }
          try
          {
            if (!c.a(localc)) {
              c.b(localc);
            }
            str = null;
            new Handler(Looper.getMainLooper()).post(new Runnable()
            {
              public void run()
              {
                if ((localc != null) && (c.a(localc)))
                {
                  c.a(true, localc, null, null);
                  return;
                }
                c.a(false, null, str, localException1);
              }
            });
            return;
          }
          catch (Exception localException3)
          {
            for (;;) {}
          }
          localc = new c(paramContext, c.this);
          continue;
          final String str = localException2.getMessage();
        }
      }
    });
  }
  
  private void b(final PaymentMethod paramPaymentMethod)
  {
    try
    {
      a(new g()
      {
        public void a()
        {
          Iterator localIterator = c.f(c.this).iterator();
          while (localIterator.hasNext())
          {
            final h localh = (h)localIterator.next();
            c.e(c.this).post(new Runnable()
            {
              public void run()
              {
                localh.a(a);
              }
            });
          }
        }
        
        public boolean b()
        {
          return !c.f(c.this).isEmpty();
        }
      });
      return;
    }
    finally
    {
      paramPaymentMethod = finally;
      throw paramPaymentMethod;
    }
  }
  
  private void b(final String paramString)
  {
    try
    {
      a(new g()
      {
        public void a()
        {
          Iterator localIterator = c.g(c.this).iterator();
          while (localIterator.hasNext())
          {
            final i locali = (i)localIterator.next();
            c.e(c.this).post(new Runnable()
            {
              public void run()
              {
                locali.a(a);
              }
            });
          }
        }
        
        public boolean b()
        {
          return !c.g(c.this).isEmpty();
        }
      });
      return;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
  
  private boolean p()
  {
    return c.a();
  }
  
  private void q()
    throws ErrorWithResponse, com.braintreepayments.api.exceptions.d
  {
    c.b();
  }
  
  protected String a()
  {
    return d + ".android";
  }
  
  public String a(Intent paramIntent)
  {
    if (a.a(paramIntent)) {
      return ((MaskedWallet)paramIntent.getParcelableExtra("com.google.android.gms.wallet.EXTRA_MASKED_WALLET")).b();
    }
    if (a.b(paramIntent)) {
      return ((FullWallet)paramIntent.getParcelableExtra("com.google.android.gms.wallet.EXTRA_FULL_WALLET")).b();
    }
    return null;
  }
  
  protected Future<?> a(final String paramString1, final String paramString2)
  {
    try
    {
      paramString1 = b.submit(new Runnable()
      {
        public void run()
        {
          c.c(c.this).a(paramString1, paramString2);
        }
      });
      return paramString1;
    }
    finally
    {
      paramString1 = finally;
      throw paramString1;
    }
  }
  
  /* Error */
  public void a(int paramInt, final Intent paramIntent)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 129	com/braintreepayments/api/c:c	Lcom/braintreepayments/api/k;
    //   6: iload_1
    //   7: aload_2
    //   8: invokevirtual 307	com/braintreepayments/api/k:a	(ILandroid/content/Intent;)Ljava/lang/String;
    //   11: astore_2
    //   12: aload_2
    //   13: invokestatic 175	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   16: ifne +25 -> 41
    //   19: aload_0
    //   20: getfield 137	com/braintreepayments/api/c:b	Ljava/util/concurrent/ExecutorService;
    //   23: new 40	com/braintreepayments/api/c$9
    //   26: dup
    //   27: aload_0
    //   28: aload_2
    //   29: invokespecial 308	com/braintreepayments/api/c$9:<init>	(Lcom/braintreepayments/api/c;Ljava/lang/String;)V
    //   32: invokeinterface 235 2 0
    //   37: pop
    //   38: aload_0
    //   39: monitorexit
    //   40: return
    //   41: aload_0
    //   42: ldc_w 310
    //   45: invokevirtual 312	com/braintreepayments/api/c:a	(Ljava/lang/String;)V
    //   48: goto -10 -> 38
    //   51: astore_2
    //   52: aload_0
    //   53: monitorexit
    //   54: aload_2
    //   55: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	56	0	this	c
    //   0	56	1	paramInt	int
    //   0	56	2	paramIntent	Intent
    // Exception table:
    //   from	to	target	type
    //   2	38	51	finally
    //   41	48	51	finally
  }
  
  public void a(Activity paramActivity)
  {
    try
    {
      if ((paramActivity instanceof f)) {
        a((f)paramActivity);
      }
      o();
      return;
    }
    finally {}
  }
  
  public void a(Activity paramActivity, int paramInt)
  {
    a(paramActivity, paramInt, null);
  }
  
  public void a(Activity paramActivity, int paramInt1, int paramInt2, Intent paramIntent)
  {
    if ((paramInt2 == -1) && (paramIntent != null))
    {
      if (!l.a(paramIntent)) {
        break label27;
      }
      a(paramActivity, paramInt2, paramIntent);
    }
    label27:
    do
    {
      return;
      if (a.a(paramIntent))
      {
        a(paramActivity, paramInt1, null, a(paramIntent));
        return;
      }
      if (a.b(paramIntent))
      {
        b(paramInt2, paramIntent);
        return;
      }
      if (m.a(paramIntent))
      {
        a(paramInt2, paramIntent);
        return;
      }
    } while (!ThreeDSecureAuthenticationResponse.a(paramIntent));
    c(paramInt2, paramIntent);
  }
  
  public void a(Activity paramActivity, int paramInt, Intent paramIntent)
  {
    try
    {
      paramActivity = c.a(paramActivity, paramInt, paramIntent);
      if (paramActivity != null) {
        a(paramActivity);
      }
    }
    catch (com.braintreepayments.api.exceptions.f paramActivity)
    {
      for (;;)
      {
        a(paramActivity);
      }
    }
    finally {}
  }
  
  public void a(final Activity paramActivity, final int paramInt, final Cart paramCart, final String paramString)
  {
    try
    {
      b.submit(new Runnable()
      {
        public void run()
        {
          try
          {
            c.c(c.this).a(paramActivity, paramInt, paramCart, paramString);
            return;
          }
          catch (com.braintreepayments.api.exceptions.j localj)
          {
            a(localj);
          }
        }
      });
      return;
    }
    finally
    {
      paramActivity = finally;
      throw paramActivity;
    }
  }
  
  public void a(final Activity paramActivity, final int paramInt, final Cart paramCart, final boolean paramBoolean1, final boolean paramBoolean2, final boolean paramBoolean3)
  {
    try
    {
      b.submit(new Runnable()
      {
        public void run()
        {
          try
          {
            c.c(c.this).a(paramActivity, paramInt, paramCart, paramBoolean1, paramBoolean2, paramBoolean3);
            return;
          }
          catch (com.braintreepayments.api.exceptions.h localh)
          {
            a(localh);
            return;
          }
          catch (com.braintreepayments.api.exceptions.j localj)
          {
            a(localj);
          }
        }
      });
      return;
    }
    finally
    {
      paramActivity = finally;
      throw paramActivity;
    }
  }
  
  public void a(Activity paramActivity, int paramInt, List<String> paramList)
  {
    a("add-paypal.start");
    c.a(paramActivity, paramInt, paramList);
  }
  
  public void a(Bundle paramBundle)
  {
    paramBundle.putString("com.braintreepayments.api.KEY_CLIENT_TOKEN", e);
    paramBundle.putString("com.braintreepayments.api.KEY_CONFIGURATION", c.c());
  }
  
  public <T extends f> void a(T paramT)
  {
    try
    {
      if ((paramT instanceof j)) {
        i.add((j)paramT);
      }
      if ((paramT instanceof h)) {
        j.add((h)paramT);
      }
      if ((paramT instanceof i)) {
        k.add((i)paramT);
      }
      if ((paramT instanceof e)) {
        l.add((e)paramT);
      }
      return;
    }
    finally {}
  }
  
  protected void a(g paramg)
  {
    if ((h) || (!paramg.b()))
    {
      g.add(paramg);
      return;
    }
    paramg.a();
  }
  
  public <T extends PaymentMethod> void a(com.braintreepayments.api.models.l<T> paraml)
  {
    try
    {
      b(paraml);
      return;
    }
    finally
    {
      paraml = finally;
      throw paraml;
    }
  }
  
  public void a(String paramString)
  {
    try
    {
      a(a() + "." + paramString, b());
      return;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
  
  protected void a(final Throwable paramThrowable)
  {
    try
    {
      a(new g()
      {
        public void a()
        {
          Iterator localIterator = c.h(c.this).iterator();
          while (localIterator.hasNext())
          {
            final e locale = (e)localIterator.next();
            c.e(c.this).post(new Runnable()
            {
              public void run()
              {
                locale.a(a);
              }
            });
          }
        }
        
        public boolean b()
        {
          return !c.h(c.this).isEmpty();
        }
      });
      return;
    }
    finally
    {
      paramThrowable = finally;
      throw paramThrowable;
    }
  }
  
  protected String b()
  {
    return d;
  }
  
  protected <T extends PaymentMethod> Future<?> b(final com.braintreepayments.api.models.l<T> paraml)
  {
    try
    {
      paraml = b.submit(new Runnable()
      {
        public void run()
        {
          try
          {
            PaymentMethod localPaymentMethod = c.c(c.this).a(paraml);
            c.a(c.this, localPaymentMethod);
            c.b(c.this, localPaymentMethod);
            c.a(c.this, localPaymentMethod.d());
            return;
          }
          catch (com.braintreepayments.api.exceptions.d locald)
          {
            a(locald);
            return;
          }
          catch (ErrorWithResponse localErrorWithResponse)
          {
            c.a(c.this, localErrorWithResponse);
          }
        }
      });
      return paraml;
    }
    finally
    {
      paraml = finally;
      throw paraml;
    }
  }
  
  public void b(int paramInt, Intent paramIntent)
  {
    if (paramInt == -1) {}
    try
    {
      c.j();
      paramIntent = c.a(paramIntent);
      if (paramIntent != null)
      {
        a(paramIntent);
        b(paramIntent);
        b(paramIntent.d());
      }
    }
    catch (JSONException paramIntent)
    {
      for (;;)
      {
        a(paramIntent);
      }
    }
    finally {}
  }
  
  public void b(Activity paramActivity)
  {
    try
    {
      n();
      if ((paramActivity instanceof f)) {
        b((f)paramActivity);
      }
      c.j();
      return;
    }
    finally {}
  }
  
  public void b(Activity paramActivity, int paramInt)
  {
    try
    {
      c.a(paramActivity, paramInt);
      a("add-venmo.start");
      return;
    }
    catch (com.braintreepayments.api.exceptions.a paramActivity)
    {
      a("add-venmo.unavailable");
      a(paramActivity);
    }
  }
  
  public <T extends f> void b(T paramT)
  {
    try
    {
      if ((paramT instanceof j)) {
        i.remove(paramT);
      }
      if ((paramT instanceof h)) {
        j.remove(paramT);
      }
      if ((paramT instanceof i)) {
        k.remove(paramT);
      }
      if ((paramT instanceof e)) {
        l.remove(paramT);
      }
      return;
    }
    finally {}
  }
  
  public void c()
  {
    d = "dropin";
  }
  
  public void c(int paramInt, Intent paramIntent)
  {
    if (paramInt == -1) {}
    for (;;)
    {
      try
      {
        paramIntent = (ThreeDSecureAuthenticationResponse)paramIntent.getParcelableExtra("com.braintreepayments.api.EXTRA_THREE_D_SECURE_RESULT");
        if (paramIntent.a())
        {
          b(paramIntent.b());
          b(paramIntent.b().d());
          return;
        }
        if (paramIntent.d() != null) {
          a(new com.braintreepayments.api.exceptions.d(paramIntent.d()));
        } else {
          a(new ErrorWithResponse(422, paramIntent.c()));
        }
      }
      finally {}
    }
  }
  
  public boolean d()
  {
    return c.d();
  }
  
  public boolean e()
  {
    return c.e();
  }
  
  public boolean f()
  {
    return c.f();
  }
  
  public boolean g()
  {
    return c.g();
  }
  
  public boolean h()
  {
    return c.h();
  }
  
  public void i()
  {
    try
    {
      j();
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  protected Future<?> j()
  {
    try
    {
      Future localFuture = b.submit(new Runnable()
      {
        public void run()
        {
          try
          {
            List localList = c.c(c.this).k();
            c.a(c.this, localList);
            c.b(c.this, localList);
            return;
          }
          catch (com.braintreepayments.api.exceptions.d locald)
          {
            a(locald);
            return;
          }
          catch (ErrorWithResponse localErrorWithResponse)
          {
            c.a(c.this, localErrorWithResponse);
          }
        }
      });
      return localFuture;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public PaymentMethodTokenizationParameters k()
  {
    return c.i();
  }
  
  /* Error */
  public boolean l()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 183	com/braintreepayments/api/c:m	Ljava/util/List;
    //   6: astore_2
    //   7: aload_2
    //   8: ifnull +9 -> 17
    //   11: iconst_1
    //   12: istore_1
    //   13: aload_0
    //   14: monitorexit
    //   15: iload_1
    //   16: ireturn
    //   17: iconst_0
    //   18: istore_1
    //   19: goto -6 -> 13
    //   22: astore_2
    //   23: aload_0
    //   24: monitorexit
    //   25: aload_2
    //   26: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	27	0	this	c
    //   12	7	1	bool	boolean
    //   6	2	2	localList	List
    //   22	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	7	22	finally
  }
  
  /* Error */
  public List<PaymentMethod> m()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 183	com/braintreepayments/api/c:m	Ljava/util/List;
    //   6: ifnonnull +11 -> 17
    //   9: invokestatic 487	java/util/Collections:emptyList	()Ljava/util/List;
    //   12: astore_1
    //   13: aload_0
    //   14: monitorexit
    //   15: aload_1
    //   16: areturn
    //   17: aload_0
    //   18: getfield 183	com/braintreepayments/api/c:m	Ljava/util/List;
    //   21: invokestatic 220	java/util/Collections:unmodifiableList	(Ljava/util/List;)Ljava/util/List;
    //   24: astore_1
    //   25: goto -12 -> 13
    //   28: astore_1
    //   29: aload_0
    //   30: monitorexit
    //   31: aload_1
    //   32: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	33	0	this	c
    //   12	13	1	localList	List
    //   28	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	13	28	finally
    //   17	25	28	finally
  }
  
  public void n()
  {
    try
    {
      h = true;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void o()
  {
    try
    {
      h = false;
      Object localObject1 = new ArrayList();
      ((List)localObject1).addAll(g);
      localObject1 = ((List)localObject1).iterator();
      while (((Iterator)localObject1).hasNext())
      {
        g localg = (g)((Iterator)localObject1).next();
        if (localg.b())
        {
          localg.a();
          g.remove(localg);
        }
      }
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     com.braintreepayments.api.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */