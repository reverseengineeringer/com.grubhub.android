package com.appsflyer;

import android.content.Context;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.atomic.AtomicInteger;

abstract class b
  implements Runnable
{
  private static AtomicInteger d = new AtomicInteger(0);
  private WeakReference<Context> a = null;
  private String b;
  private ScheduledExecutorService c;
  
  public b(Context paramContext, String paramString, ScheduledExecutorService paramScheduledExecutorService)
  {
    a = new WeakReference(paramContext);
    b = paramString;
    c = paramScheduledExecutorService;
  }
  
  public abstract String a();
  
  protected abstract void a(String paramString);
  
  protected abstract void a(Map<String, String> paramMap);
  
  /* Error */
  public void run()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 6
    //   3: aload_0
    //   4: getfield 38	com/appsflyer/b:b	Ljava/lang/String;
    //   7: ifnull +13 -> 20
    //   10: aload_0
    //   11: getfield 38	com/appsflyer/b:b	Ljava/lang/String;
    //   14: invokevirtual 54	java/lang/String:length	()I
    //   17: ifne +4 -> 21
    //   20: return
    //   21: getstatic 25	com/appsflyer/b:d	Ljava/util/concurrent/atomic/AtomicInteger;
    //   24: invokevirtual 57	java/util/concurrent/atomic/AtomicInteger:incrementAndGet	()I
    //   27: pop
    //   28: aload_0
    //   29: getfield 31	com/appsflyer/b:a	Ljava/lang/ref/WeakReference;
    //   32: invokevirtual 61	java/lang/ref/WeakReference:get	()Ljava/lang/Object;
    //   35: checkcast 63	android/content/Context
    //   38: astore 7
    //   40: aload 7
    //   42: ifnonnull +22 -> 64
    //   45: getstatic 25	com/appsflyer/b:d	Ljava/util/concurrent/atomic/AtomicInteger;
    //   48: invokevirtual 66	java/util/concurrent/atomic/AtomicInteger:decrementAndGet	()I
    //   51: pop
    //   52: iconst_0
    //   53: ifeq -33 -> 20
    //   56: new 68	java/lang/NullPointerException
    //   59: dup
    //   60: invokespecial 69	java/lang/NullPointerException:<init>	()V
    //   63: athrow
    //   64: aload 7
    //   66: aload 7
    //   68: invokestatic 75	com/appsflyer/AppsFlyerLib:e	(Landroid/content/Context;)Ljava/lang/String;
    //   71: invokestatic 78	com/appsflyer/AppsFlyerLib:b	(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    //   74: astore_3
    //   75: ldc 80
    //   77: astore_2
    //   78: aload_3
    //   79: ifnull +23 -> 102
    //   82: new 82	java/lang/StringBuilder
    //   85: dup
    //   86: invokespecial 83	java/lang/StringBuilder:<init>	()V
    //   89: ldc 85
    //   91: invokevirtual 89	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   94: aload_3
    //   95: invokevirtual 89	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   98: invokevirtual 92	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   101: astore_2
    //   102: new 82	java/lang/StringBuilder
    //   105: dup
    //   106: invokespecial 83	java/lang/StringBuilder:<init>	()V
    //   109: aload_0
    //   110: invokevirtual 94	com/appsflyer/b:a	()Ljava/lang/String;
    //   113: invokevirtual 89	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   116: aload 7
    //   118: invokevirtual 97	android/content/Context:getPackageName	()Ljava/lang/String;
    //   121: invokevirtual 89	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   124: aload_2
    //   125: invokevirtual 89	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   128: ldc 99
    //   130: invokevirtual 89	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   133: aload_0
    //   134: getfield 38	com/appsflyer/b:b	Ljava/lang/String;
    //   137: invokevirtual 89	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   140: ldc 101
    //   142: invokevirtual 89	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   145: aload 7
    //   147: invokestatic 103	com/appsflyer/AppsFlyerLib:d	(Landroid/content/Context;)Ljava/lang/String;
    //   150: invokevirtual 89	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   153: astore_3
    //   154: aload 7
    //   156: invokestatic 107	com/appsflyer/AppsFlyerLib:f	(Landroid/content/Context;)Z
    //   159: ifeq +28 -> 187
    //   162: new 82	java/lang/StringBuilder
    //   165: dup
    //   166: invokespecial 83	java/lang/StringBuilder:<init>	()V
    //   169: ldc 109
    //   171: invokevirtual 89	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   174: aload_3
    //   175: invokevirtual 92	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   178: invokevirtual 89	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   181: invokevirtual 92	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   184: invokestatic 113	com/appsflyer/o:b	(Ljava/lang/String;)V
    //   187: new 115	java/net/URL
    //   190: dup
    //   191: aload_3
    //   192: invokevirtual 92	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   195: invokespecial 117	java/net/URL:<init>	(Ljava/lang/String;)V
    //   198: invokevirtual 121	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   201: checkcast 123	java/net/HttpURLConnection
    //   204: astore 4
    //   206: aload 4
    //   208: astore_2
    //   209: aload 4
    //   211: ldc 125
    //   213: invokevirtual 128	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   216: aload 4
    //   218: astore_2
    //   219: aload 4
    //   221: sipush 10000
    //   224: invokevirtual 131	java/net/HttpURLConnection:setConnectTimeout	(I)V
    //   227: aload 4
    //   229: astore_2
    //   230: aload 4
    //   232: ldc -123
    //   234: ldc -121
    //   236: invokevirtual 139	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   239: aload 4
    //   241: astore_2
    //   242: aload 4
    //   244: invokevirtual 142	java/net/HttpURLConnection:connect	()V
    //   247: aload 4
    //   249: astore_2
    //   250: aload 4
    //   252: invokevirtual 145	java/net/HttpURLConnection:getResponseCode	()I
    //   255: sipush 200
    //   258: if_icmpne +453 -> 711
    //   261: aload 4
    //   263: astore_2
    //   264: new 82	java/lang/StringBuilder
    //   267: dup
    //   268: invokespecial 83	java/lang/StringBuilder:<init>	()V
    //   271: astore 8
    //   273: new 147	java/io/InputStreamReader
    //   276: dup
    //   277: aload 4
    //   279: invokevirtual 151	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   282: invokespecial 154	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   285: astore 5
    //   287: new 156	java/io/BufferedReader
    //   290: dup
    //   291: aload 5
    //   293: invokespecial 159	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   296: astore_3
    //   297: aload_3
    //   298: invokevirtual 162	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   301: astore_2
    //   302: aload_2
    //   303: ifnull +121 -> 424
    //   306: aload 8
    //   308: aload_2
    //   309: invokevirtual 89	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   312: bipush 10
    //   314: invokevirtual 165	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   317: pop
    //   318: goto -21 -> 297
    //   321: astore_2
    //   322: aload_3
    //   323: astore 6
    //   325: aload_2
    //   326: astore_3
    //   327: aload 6
    //   329: ifnull +11 -> 340
    //   332: aload 4
    //   334: astore_2
    //   335: aload 6
    //   337: invokevirtual 167	java/io/BufferedReader:close	()V
    //   340: aload 5
    //   342: ifnull +11 -> 353
    //   345: aload 4
    //   347: astore_2
    //   348: aload 5
    //   350: invokevirtual 168	java/io/InputStreamReader:close	()V
    //   353: aload 4
    //   355: astore_2
    //   356: aload_3
    //   357: athrow
    //   358: astore_2
    //   359: aload 4
    //   361: astore_3
    //   362: aload_2
    //   363: astore 4
    //   365: aload_3
    //   366: astore_2
    //   367: invokestatic 171	com/appsflyer/AppsFlyerLib:b	()Lcom/appsflyer/a;
    //   370: ifnull +14 -> 384
    //   373: aload_3
    //   374: astore_2
    //   375: aload_0
    //   376: aload 4
    //   378: invokevirtual 174	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   381: invokevirtual 176	com/appsflyer/b:a	(Ljava/lang/String;)V
    //   384: aload_3
    //   385: astore_2
    //   386: ldc -78
    //   388: aload 4
    //   390: invokevirtual 174	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   393: aload 4
    //   395: invokestatic 183	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   398: pop
    //   399: getstatic 25	com/appsflyer/b:d	Ljava/util/concurrent/atomic/AtomicInteger;
    //   402: invokevirtual 66	java/util/concurrent/atomic/AtomicInteger:decrementAndGet	()I
    //   405: pop
    //   406: aload_3
    //   407: ifnull +7 -> 414
    //   410: aload_3
    //   411: invokevirtual 186	java/net/HttpURLConnection:disconnect	()V
    //   414: aload_0
    //   415: getfield 40	com/appsflyer/b:c	Ljava/util/concurrent/ScheduledExecutorService;
    //   418: invokeinterface 191 1 0
    //   423: return
    //   424: aload_3
    //   425: ifnull +10 -> 435
    //   428: aload 4
    //   430: astore_2
    //   431: aload_3
    //   432: invokevirtual 167	java/io/BufferedReader:close	()V
    //   435: aload 5
    //   437: ifnull +11 -> 448
    //   440: aload 4
    //   442: astore_2
    //   443: aload 5
    //   445: invokevirtual 168	java/io/InputStreamReader:close	()V
    //   448: aload 4
    //   450: astore_2
    //   451: aload 7
    //   453: invokestatic 107	com/appsflyer/AppsFlyerLib:f	(Landroid/content/Context;)Z
    //   456: ifeq +32 -> 488
    //   459: aload 4
    //   461: astore_2
    //   462: new 82	java/lang/StringBuilder
    //   465: dup
    //   466: invokespecial 83	java/lang/StringBuilder:<init>	()V
    //   469: ldc -63
    //   471: invokevirtual 89	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   474: aload 8
    //   476: invokevirtual 92	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   479: invokevirtual 89	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   482: invokevirtual 92	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   485: invokestatic 113	com/appsflyer/o:b	(Ljava/lang/String;)V
    //   488: aload 4
    //   490: astore_2
    //   491: aload 8
    //   493: invokevirtual 194	java/lang/StringBuilder:length	()I
    //   496: ifle +191 -> 687
    //   499: aload 7
    //   501: ifnull +186 -> 687
    //   504: aload 4
    //   506: astore_2
    //   507: aload 8
    //   509: invokevirtual 92	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   512: invokestatic 197	com/appsflyer/AppsFlyerLib:c	(Ljava/lang/String;)Ljava/util/Map;
    //   515: astore_3
    //   516: aload 4
    //   518: astore_2
    //   519: aload_3
    //   520: ldc -57
    //   522: invokeinterface 204 2 0
    //   527: checkcast 50	java/lang/String
    //   530: astore 6
    //   532: aload 6
    //   534: ifnull +16 -> 550
    //   537: aload 4
    //   539: astore_2
    //   540: ldc -50
    //   542: aload 6
    //   544: invokevirtual 210	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   547: ifeq +95 -> 642
    //   550: aload 4
    //   552: astore_2
    //   553: aload 7
    //   555: ldc -44
    //   557: iconst_0
    //   558: invokevirtual 216	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   561: invokeinterface 222 1 0
    //   566: astore 5
    //   568: aload 4
    //   570: astore_2
    //   571: aload 5
    //   573: ldc -32
    //   575: aload 8
    //   577: invokevirtual 92	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   580: invokeinterface 230 3 0
    //   585: pop
    //   586: aload 4
    //   588: astore_2
    //   589: aload 5
    //   591: invokeinterface 234 1 0
    //   596: pop
    //   597: aload 4
    //   599: astore_2
    //   600: aload 7
    //   602: invokestatic 107	com/appsflyer/AppsFlyerLib:f	(Landroid/content/Context;)Z
    //   605: ifeq +37 -> 642
    //   608: aload 4
    //   610: astore_2
    //   611: ldc -78
    //   613: new 82	java/lang/StringBuilder
    //   616: dup
    //   617: invokespecial 83	java/lang/StringBuilder:<init>	()V
    //   620: ldc -20
    //   622: invokevirtual 89	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   625: aload 6
    //   627: invokevirtual 89	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   630: ldc -18
    //   632: invokevirtual 89	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   635: invokevirtual 92	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   638: invokestatic 241	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   641: pop
    //   642: aload 4
    //   644: astore_2
    //   645: invokestatic 171	com/appsflyer/AppsFlyerLib:b	()Lcom/appsflyer/a;
    //   648: ifnull +39 -> 687
    //   651: aload 4
    //   653: astore_2
    //   654: getstatic 25	com/appsflyer/b:d	Ljava/util/concurrent/atomic/AtomicInteger;
    //   657: invokevirtual 244	java/util/concurrent/atomic/AtomicInteger:intValue	()I
    //   660: istore_1
    //   661: iload_1
    //   662: iconst_1
    //   663: if_icmpgt +24 -> 687
    //   666: aload 4
    //   668: astore_2
    //   669: aload 7
    //   671: invokestatic 247	com/appsflyer/AppsFlyerLib:b	(Landroid/content/Context;)Ljava/util/Map;
    //   674: astore 5
    //   676: aload 5
    //   678: astore_3
    //   679: aload 4
    //   681: astore_2
    //   682: aload_0
    //   683: aload_3
    //   684: invokevirtual 249	com/appsflyer/b:a	(Ljava/util/Map;)V
    //   687: getstatic 25	com/appsflyer/b:d	Ljava/util/concurrent/atomic/AtomicInteger;
    //   690: invokevirtual 66	java/util/concurrent/atomic/AtomicInteger:decrementAndGet	()I
    //   693: pop
    //   694: aload 4
    //   696: ifnull -282 -> 414
    //   699: aload 4
    //   701: invokevirtual 186	java/net/HttpURLConnection:disconnect	()V
    //   704: goto -290 -> 414
    //   707: astore_2
    //   708: goto -29 -> 679
    //   711: aload 4
    //   713: astore_2
    //   714: invokestatic 171	com/appsflyer/AppsFlyerLib:b	()Lcom/appsflyer/a;
    //   717: ifnull +33 -> 750
    //   720: aload 4
    //   722: astore_2
    //   723: aload_0
    //   724: new 82	java/lang/StringBuilder
    //   727: dup
    //   728: invokespecial 83	java/lang/StringBuilder:<init>	()V
    //   731: ldc -5
    //   733: invokevirtual 89	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   736: aload 4
    //   738: invokevirtual 145	java/net/HttpURLConnection:getResponseCode	()I
    //   741: invokevirtual 254	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   744: invokevirtual 92	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   747: invokevirtual 176	com/appsflyer/b:a	(Ljava/lang/String;)V
    //   750: aload 4
    //   752: astore_2
    //   753: aload 7
    //   755: invokestatic 107	com/appsflyer/AppsFlyerLib:f	(Landroid/content/Context;)Z
    //   758: ifeq -71 -> 687
    //   761: aload 4
    //   763: astore_2
    //   764: new 82	java/lang/StringBuilder
    //   767: dup
    //   768: invokespecial 83	java/lang/StringBuilder:<init>	()V
    //   771: ldc_w 256
    //   774: invokevirtual 89	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   777: aload 4
    //   779: invokevirtual 145	java/net/HttpURLConnection:getResponseCode	()I
    //   782: invokevirtual 254	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   785: ldc_w 258
    //   788: invokevirtual 89	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   791: aload_3
    //   792: invokevirtual 261	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   795: invokevirtual 92	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   798: invokestatic 113	com/appsflyer/o:b	(Ljava/lang/String;)V
    //   801: goto -114 -> 687
    //   804: astore_3
    //   805: getstatic 25	com/appsflyer/b:d	Ljava/util/concurrent/atomic/AtomicInteger;
    //   808: invokevirtual 66	java/util/concurrent/atomic/AtomicInteger:decrementAndGet	()I
    //   811: pop
    //   812: aload_2
    //   813: ifnull +7 -> 820
    //   816: aload_2
    //   817: invokevirtual 186	java/net/HttpURLConnection:disconnect	()V
    //   820: aload_3
    //   821: athrow
    //   822: astore_3
    //   823: aconst_null
    //   824: astore_2
    //   825: goto -20 -> 805
    //   828: astore 4
    //   830: aconst_null
    //   831: astore_3
    //   832: goto -467 -> 365
    //   835: astore_3
    //   836: aconst_null
    //   837: astore 5
    //   839: goto -512 -> 327
    //   842: astore_3
    //   843: goto -516 -> 327
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	846	0	this	b
    //   660	4	1	i	int
    //   77	232	2	localObject1	Object
    //   321	5	2	localObject2	Object
    //   334	22	2	localObject3	Object
    //   358	5	2	localThrowable1	Throwable
    //   366	316	2	localObject4	Object
    //   707	1	2	locali	i
    //   713	112	2	localObject5	Object
    //   74	718	3	localObject6	Object
    //   804	17	3	localObject7	Object
    //   822	1	3	localObject8	Object
    //   831	1	3	localObject9	Object
    //   835	1	3	localObject10	Object
    //   842	1	3	localObject11	Object
    //   204	574	4	localObject12	Object
    //   828	1	4	localThrowable2	Throwable
    //   285	553	5	localObject13	Object
    //   1	625	6	localObject14	Object
    //   38	716	7	localContext	Context
    //   271	305	8	localStringBuilder	StringBuilder
    // Exception table:
    //   from	to	target	type
    //   297	302	321	finally
    //   306	318	321	finally
    //   209	216	358	java/lang/Throwable
    //   219	227	358	java/lang/Throwable
    //   230	239	358	java/lang/Throwable
    //   242	247	358	java/lang/Throwable
    //   250	261	358	java/lang/Throwable
    //   264	273	358	java/lang/Throwable
    //   335	340	358	java/lang/Throwable
    //   348	353	358	java/lang/Throwable
    //   356	358	358	java/lang/Throwable
    //   431	435	358	java/lang/Throwable
    //   443	448	358	java/lang/Throwable
    //   451	459	358	java/lang/Throwable
    //   462	488	358	java/lang/Throwable
    //   491	499	358	java/lang/Throwable
    //   507	516	358	java/lang/Throwable
    //   519	532	358	java/lang/Throwable
    //   540	550	358	java/lang/Throwable
    //   553	568	358	java/lang/Throwable
    //   571	586	358	java/lang/Throwable
    //   589	597	358	java/lang/Throwable
    //   600	608	358	java/lang/Throwable
    //   611	642	358	java/lang/Throwable
    //   645	651	358	java/lang/Throwable
    //   654	661	358	java/lang/Throwable
    //   669	676	358	java/lang/Throwable
    //   682	687	358	java/lang/Throwable
    //   714	720	358	java/lang/Throwable
    //   723	750	358	java/lang/Throwable
    //   753	761	358	java/lang/Throwable
    //   764	801	358	java/lang/Throwable
    //   669	676	707	com/appsflyer/i
    //   209	216	804	finally
    //   219	227	804	finally
    //   230	239	804	finally
    //   242	247	804	finally
    //   250	261	804	finally
    //   264	273	804	finally
    //   335	340	804	finally
    //   348	353	804	finally
    //   356	358	804	finally
    //   367	373	804	finally
    //   375	384	804	finally
    //   386	399	804	finally
    //   431	435	804	finally
    //   443	448	804	finally
    //   451	459	804	finally
    //   462	488	804	finally
    //   491	499	804	finally
    //   507	516	804	finally
    //   519	532	804	finally
    //   540	550	804	finally
    //   553	568	804	finally
    //   571	586	804	finally
    //   589	597	804	finally
    //   600	608	804	finally
    //   611	642	804	finally
    //   645	651	804	finally
    //   654	661	804	finally
    //   669	676	804	finally
    //   682	687	804	finally
    //   714	720	804	finally
    //   723	750	804	finally
    //   753	761	804	finally
    //   764	801	804	finally
    //   28	40	822	finally
    //   64	75	822	finally
    //   82	102	822	finally
    //   102	187	822	finally
    //   187	206	822	finally
    //   28	40	828	java/lang/Throwable
    //   64	75	828	java/lang/Throwable
    //   82	102	828	java/lang/Throwable
    //   102	187	828	java/lang/Throwable
    //   187	206	828	java/lang/Throwable
    //   273	287	835	finally
    //   287	297	842	finally
  }
}

/* Location:
 * Qualified Name:     com.appsflyer.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */