package com.google.android.gms.tagmanager;

import android.os.Looper;
import com.google.android.gms.common.api.Status;

class ed
  implements f
{
  private final Looper a;
  private a b;
  private a c;
  private Status d;
  private ef e;
  private ee f;
  private boolean g;
  private n h;
  
  public ed(Status paramStatus)
  {
    d = paramStatus;
    a = null;
  }
  
  public ed(n paramn, Looper paramLooper, a parama, ee paramee)
  {
    h = paramn;
    if (paramLooper != null) {}
    for (;;)
    {
      a = paramLooper;
      b = parama;
      f = paramee;
      d = Status.a;
      paramn.a(this);
      return;
      paramLooper = Looper.getMainLooper();
    }
  }
  
  private void d()
  {
    if (e != null) {
      e.a(c.c());
    }
  }
  
  public Status a()
  {
    return d;
  }
  
  public void a(a parama)
  {
    for (;;)
    {
      try
      {
        boolean bool = g;
        if (bool) {
          return;
        }
        if (parama == null)
        {
          ba.a("Unexpected null container.");
          continue;
        }
        c = parama;
      }
      finally {}
      d();
    }
  }
  
  /* Error */
  public void a(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 71	com/google/android/gms/tagmanager/ed:g	Z
    //   6: istore_2
    //   7: iload_2
    //   8: ifeq +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: aload_0
    //   15: getfield 36	com/google/android/gms/tagmanager/ed:b	Lcom/google/android/gms/tagmanager/a;
    //   18: aload_1
    //   19: invokevirtual 80	com/google/android/gms/tagmanager/a:d	(Ljava/lang/String;)V
    //   22: goto -11 -> 11
    //   25: astore_1
    //   26: aload_0
    //   27: monitorexit
    //   28: aload_1
    //   29: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	30	0	this	ed
    //   0	30	1	paramString	String
    //   6	2	2	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	7	25	finally
    //   14	22	25	finally
  }
  
  /* Error */
  public void b()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 71	com/google/android/gms/tagmanager/ed:g	Z
    //   6: ifeq +11 -> 17
    //   9: ldc 82
    //   11: invokestatic 76	com/google/android/gms/tagmanager/ba:a	(Ljava/lang/String;)V
    //   14: aload_0
    //   15: monitorexit
    //   16: return
    //   17: aload_0
    //   18: iconst_1
    //   19: putfield 71	com/google/android/gms/tagmanager/ed:g	Z
    //   22: aload_0
    //   23: getfield 34	com/google/android/gms/tagmanager/ed:h	Lcom/google/android/gms/tagmanager/n;
    //   26: aload_0
    //   27: invokevirtual 85	com/google/android/gms/tagmanager/n:b	(Lcom/google/android/gms/tagmanager/ed;)Z
    //   30: pop
    //   31: aload_0
    //   32: getfield 36	com/google/android/gms/tagmanager/ed:b	Lcom/google/android/gms/tagmanager/a;
    //   35: invokevirtual 86	com/google/android/gms/tagmanager/a:d	()V
    //   38: aload_0
    //   39: aconst_null
    //   40: putfield 36	com/google/android/gms/tagmanager/ed:b	Lcom/google/android/gms/tagmanager/a;
    //   43: aload_0
    //   44: aconst_null
    //   45: putfield 57	com/google/android/gms/tagmanager/ed:c	Lcom/google/android/gms/tagmanager/a;
    //   48: aload_0
    //   49: aconst_null
    //   50: putfield 38	com/google/android/gms/tagmanager/ed:f	Lcom/google/android/gms/tagmanager/ee;
    //   53: aload_0
    //   54: aconst_null
    //   55: putfield 55	com/google/android/gms/tagmanager/ed:e	Lcom/google/android/gms/tagmanager/ef;
    //   58: goto -44 -> 14
    //   61: astore_1
    //   62: aload_0
    //   63: monitorexit
    //   64: aload_1
    //   65: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	66	0	this	ed
    //   61	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	14	61	finally
    //   17	58	61	finally
  }
  
  /* Error */
  public a c()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: aload_0
    //   3: monitorenter
    //   4: aload_0
    //   5: getfield 71	com/google/android/gms/tagmanager/ed:g	Z
    //   8: ifeq +12 -> 20
    //   11: ldc 89
    //   13: invokestatic 76	com/google/android/gms/tagmanager/ba:a	(Ljava/lang/String;)V
    //   16: aload_0
    //   17: monitorexit
    //   18: aload_1
    //   19: areturn
    //   20: aload_0
    //   21: getfield 57	com/google/android/gms/tagmanager/ed:c	Lcom/google/android/gms/tagmanager/a;
    //   24: ifnull +16 -> 40
    //   27: aload_0
    //   28: aload_0
    //   29: getfield 57	com/google/android/gms/tagmanager/ed:c	Lcom/google/android/gms/tagmanager/a;
    //   32: putfield 36	com/google/android/gms/tagmanager/ed:b	Lcom/google/android/gms/tagmanager/a;
    //   35: aload_0
    //   36: aconst_null
    //   37: putfield 57	com/google/android/gms/tagmanager/ed:c	Lcom/google/android/gms/tagmanager/a;
    //   40: aload_0
    //   41: getfield 36	com/google/android/gms/tagmanager/ed:b	Lcom/google/android/gms/tagmanager/a;
    //   44: astore_1
    //   45: goto -29 -> 16
    //   48: astore_1
    //   49: aload_0
    //   50: monitorexit
    //   51: aload_1
    //   52: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	53	0	this	ed
    //   1	44	1	locala	a
    //   48	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   4	16	48	finally
    //   20	40	48	finally
    //   40	45	48	finally
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.ed
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */