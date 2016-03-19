package com.facebook.internal;

import android.content.Intent;
import java.util.UUID;

public class a
{
  private static a a;
  private UUID b;
  private Intent c;
  private int d;
  
  public a(int paramInt)
  {
    this(paramInt, UUID.randomUUID());
  }
  
  public a(int paramInt, UUID paramUUID)
  {
    b = paramUUID;
    d = paramInt;
  }
  
  public static a a()
  {
    return a;
  }
  
  /* Error */
  private static boolean a(a parama)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: invokestatic 37	com/facebook/internal/a:a	()Lcom/facebook/internal/a;
    //   6: astore_2
    //   7: aload_0
    //   8: putstatic 34	com/facebook/internal/a:a	Lcom/facebook/internal/a;
    //   11: aload_2
    //   12: ifnull +10 -> 22
    //   15: iconst_1
    //   16: istore_1
    //   17: ldc 2
    //   19: monitorexit
    //   20: iload_1
    //   21: ireturn
    //   22: iconst_0
    //   23: istore_1
    //   24: goto -7 -> 17
    //   27: astore_0
    //   28: ldc 2
    //   30: monitorexit
    //   31: aload_0
    //   32: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	33	0	parama	a
    //   16	8	1	bool	boolean
    //   6	6	2	locala	a
    // Exception table:
    //   from	to	target	type
    //   3	11	27	finally
  }
  
  public void a(Intent paramIntent)
  {
    c = paramIntent;
  }
  
  public Intent b()
  {
    return c;
  }
  
  public UUID c()
  {
    return b;
  }
  
  public int d()
  {
    return d;
  }
  
  public boolean e()
  {
    return a(this);
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */