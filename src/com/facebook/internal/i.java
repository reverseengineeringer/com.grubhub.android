package com.facebook.internal;

import java.util.HashMap;
import java.util.Map;

public final class i
{
  private static Map<Integer, j> a = new HashMap();
  
  /* Error */
  public static void a(int paramInt, j paramj)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: aload_1
    //   4: ldc 20
    //   6: invokestatic 25	com/facebook/internal/ap:a	(Ljava/lang/Object;Ljava/lang/String;)V
    //   9: getstatic 16	com/facebook/internal/i:a	Ljava/util/Map;
    //   12: iload_0
    //   13: invokestatic 31	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   16: invokeinterface 37 2 0
    //   21: istore_2
    //   22: iload_2
    //   23: ifeq +7 -> 30
    //   26: ldc 2
    //   28: monitorexit
    //   29: return
    //   30: getstatic 16	com/facebook/internal/i:a	Ljava/util/Map;
    //   33: iload_0
    //   34: invokestatic 31	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   37: aload_1
    //   38: invokeinterface 41 3 0
    //   43: pop
    //   44: goto -18 -> 26
    //   47: astore_1
    //   48: ldc 2
    //   50: monitorexit
    //   51: aload_1
    //   52: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	53	0	paramInt	int
    //   0	53	1	paramj	j
    //   21	2	2	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   3	22	47	finally
    //   30	44	47	finally
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */