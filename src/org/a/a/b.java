package org.a.a;

import java.util.Hashtable;

class b
{
  private static Hashtable a = new Hashtable();
  
  /* Error */
  public static c a(String paramString)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 15	org/a/a/b:a	Ljava/util/Hashtable;
    //   6: aload_0
    //   7: invokevirtual 21	java/util/Hashtable:containsKey	(Ljava/lang/Object;)Z
    //   10: ifeq +19 -> 29
    //   13: getstatic 15	org/a/a/b:a	Ljava/util/Hashtable;
    //   16: aload_0
    //   17: invokevirtual 25	java/util/Hashtable:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   20: checkcast 27	org/a/a/c
    //   23: astore_0
    //   24: ldc 2
    //   26: monitorexit
    //   27: aload_0
    //   28: areturn
    //   29: new 27	org/a/a/c
    //   32: dup
    //   33: aload_0
    //   34: invokespecial 30	org/a/a/c:<init>	(Ljava/lang/String;)V
    //   37: astore_1
    //   38: getstatic 15	org/a/a/b:a	Ljava/util/Hashtable;
    //   41: aload_0
    //   42: aload_1
    //   43: invokevirtual 34	java/util/Hashtable:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   46: pop
    //   47: aload_1
    //   48: astore_0
    //   49: goto -25 -> 24
    //   52: astore_0
    //   53: ldc 2
    //   55: monitorexit
    //   56: aload_0
    //   57: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	58	0	paramString	String
    //   37	11	1	localc	c
    // Exception table:
    //   from	to	target	type
    //   3	24	52	finally
    //   29	47	52	finally
  }
}

/* Location:
 * Qualified Name:     org.a.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */