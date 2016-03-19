package com.paypal.android.sdk;

import java.util.Collections;
import java.util.LinkedList;
import java.util.List;

public class dv
  extends Thread
{
  private static final String a = dv.class.getSimpleName();
  private ea b;
  private String c;
  private List d = Collections.synchronizedList(new LinkedList());
  private boolean e;
  private dn f;
  private dp g;
  
  public dv(String paramString, ea paramea, dn paramdn, dp paramdp)
  {
    c = paramString;
    b = paramea;
    f = paramdn;
    g = paramdp;
    start();
  }
  
  public final void a()
  {
    if (e) {}
    for (;;)
    {
      return;
      g.a();
      e = true;
      synchronized (d)
      {
        d.notifyAll();
        interrupt();
        while (isAlive()) {
          try
          {
            Thread.sleep(10L);
            new StringBuilder("Waiting for ").append(getClass().getSimpleName()).append(" to die");
          }
          catch (InterruptedException localInterruptedException) {}
        }
      }
    }
  }
  
  public final void a(dz paramdz)
  {
    synchronized (d)
    {
      d.add(paramdz);
      new StringBuilder("Queued ").append(paramdz.o());
      d.notifyAll();
      return;
    }
  }
  
  /* Error */
  public void run()
  {
    // Byte code:
    //   0: new 82	java/lang/StringBuilder
    //   3: dup
    //   4: ldc 118
    //   6: invokespecial 87	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   9: aload_0
    //   10: invokevirtual 91	java/lang/Object:getClass	()Ljava/lang/Class;
    //   13: invokevirtual 25	java/lang/Class:getSimpleName	()Ljava/lang/String;
    //   16: invokevirtual 95	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   19: pop
    //   20: aload_0
    //   21: getfield 58	com/paypal/android/sdk/dv:e	Z
    //   24: ifne +193 -> 217
    //   27: aload_0
    //   28: getfield 43	com/paypal/android/sdk/dv:d	Ljava/util/List;
    //   31: astore_3
    //   32: aload_3
    //   33: monitorenter
    //   34: aload_0
    //   35: getfield 43	com/paypal/android/sdk/dv:d	Ljava/util/List;
    //   38: invokeinterface 121 1 0
    //   43: istore_1
    //   44: iload_1
    //   45: ifeq +70 -> 115
    //   48: aload_0
    //   49: getfield 43	com/paypal/android/sdk/dv:d	Ljava/util/List;
    //   52: invokevirtual 124	java/lang/Object:wait	()V
    //   55: aconst_null
    //   56: astore_2
    //   57: aload_3
    //   58: monitorexit
    //   59: aload_2
    //   60: ifnull -40 -> 20
    //   63: aload_2
    //   64: aload_2
    //   65: invokevirtual 126	com/paypal/android/sdk/dz:b	()Ljava/lang/String;
    //   68: invokevirtual 128	com/paypal/android/sdk/dz:a	(Ljava/lang/String;)V
    //   71: aload_0
    //   72: getfield 45	com/paypal/android/sdk/dv:c	Ljava/lang/String;
    //   75: invokestatic 133	com/paypal/android/sdk/cj:a	(Ljava/lang/String;)Z
    //   78: ifeq +131 -> 209
    //   81: aload_0
    //   82: getfield 49	com/paypal/android/sdk/dv:f	Lcom/paypal/android/sdk/dn;
    //   85: astore_3
    //   86: aload_3
    //   87: aload_2
    //   88: invokeinterface 138 2 0
    //   93: ifne -73 -> 20
    //   96: aload_0
    //   97: getfield 47	com/paypal/android/sdk/dv:b	Lcom/paypal/android/sdk/ea;
    //   100: aload_2
    //   101: invokeinterface 142 2 0
    //   106: goto -86 -> 20
    //   109: astore_2
    //   110: aconst_null
    //   111: astore_2
    //   112: goto -55 -> 57
    //   115: aload_0
    //   116: getfield 43	com/paypal/android/sdk/dv:d	Ljava/util/List;
    //   119: iconst_0
    //   120: invokeinterface 146 2 0
    //   125: checkcast 108	com/paypal/android/sdk/dz
    //   128: astore_2
    //   129: goto -72 -> 57
    //   132: astore_2
    //   133: aload_3
    //   134: monitorexit
    //   135: aload_2
    //   136: athrow
    //   137: astore_3
    //   138: ldc -108
    //   140: ldc -106
    //   142: aload_3
    //   143: invokestatic 155	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   146: pop
    //   147: aload_2
    //   148: new 157	com/paypal/android/sdk/an
    //   151: dup
    //   152: getstatic 162	com/paypal/android/sdk/am:c	Lcom/paypal/android/sdk/am;
    //   155: invokevirtual 165	com/paypal/android/sdk/am:toString	()Ljava/lang/String;
    //   158: ldc -89
    //   160: aload_3
    //   161: invokevirtual 170	org/json/JSONException:getMessage	()Ljava/lang/String;
    //   164: invokespecial 173	com/paypal/android/sdk/an:<init>	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   167: invokevirtual 176	com/paypal/android/sdk/dz:a	(Lcom/paypal/android/sdk/al;)V
    //   170: goto -99 -> 71
    //   173: astore_3
    //   174: ldc -108
    //   176: ldc -106
    //   178: aload_3
    //   179: invokestatic 155	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   182: pop
    //   183: aload_2
    //   184: new 157	com/paypal/android/sdk/an
    //   187: dup
    //   188: getstatic 162	com/paypal/android/sdk/am:c	Lcom/paypal/android/sdk/am;
    //   191: invokevirtual 165	com/paypal/android/sdk/am:toString	()Ljava/lang/String;
    //   194: ldc -78
    //   196: aload_3
    //   197: invokevirtual 179	java/io/UnsupportedEncodingException:getMessage	()Ljava/lang/String;
    //   200: invokespecial 173	com/paypal/android/sdk/an:<init>	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   203: invokevirtual 176	com/paypal/android/sdk/dz:a	(Lcom/paypal/android/sdk/al;)V
    //   206: goto -135 -> 71
    //   209: aload_0
    //   210: getfield 51	com/paypal/android/sdk/dv:g	Lcom/paypal/android/sdk/dp;
    //   213: astore_3
    //   214: goto -128 -> 86
    //   217: new 82	java/lang/StringBuilder
    //   220: dup
    //   221: invokespecial 180	java/lang/StringBuilder:<init>	()V
    //   224: aload_0
    //   225: invokevirtual 91	java/lang/Object:getClass	()Ljava/lang/Class;
    //   228: invokevirtual 25	java/lang/Class:getSimpleName	()Ljava/lang/String;
    //   231: invokevirtual 95	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   234: ldc -74
    //   236: invokevirtual 95	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   239: pop
    //   240: aload_0
    //   241: getfield 51	com/paypal/android/sdk/dv:g	Lcom/paypal/android/sdk/dp;
    //   244: invokevirtual 184	com/paypal/android/sdk/dp:b	()V
    //   247: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	248	0	this	dv
    //   43	2	1	bool	boolean
    //   56	45	2	localdz1	dz
    //   109	1	2	localInterruptedException	InterruptedException
    //   111	18	2	localdz2	dz
    //   132	52	2	localObject1	Object
    //   31	103	3	localObject2	Object
    //   137	24	3	localJSONException	org.json.JSONException
    //   173	24	3	localUnsupportedEncodingException	java.io.UnsupportedEncodingException
    //   213	1	3	localdp	dp
    // Exception table:
    //   from	to	target	type
    //   48	55	109	java/lang/InterruptedException
    //   34	44	132	finally
    //   48	55	132	finally
    //   57	59	132	finally
    //   115	129	132	finally
    //   133	135	132	finally
    //   63	71	137	org/json/JSONException
    //   63	71	173	java/io/UnsupportedEncodingException
  }
}

/* Location:
 * Qualified Name:     com.paypal.android.sdk.dv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */