package com.taplytics;

import android.os.AsyncTask;
import java.util.List;

class fw
  extends AsyncTask<List<Object>, Void, Void>
{
  private fw(ft paramft) {}
  
  /* Error */
  protected Void a(List<Object>... paramVarArgs)
  {
    // Byte code:
    //   0: aload_1
    //   1: ifnull +9 -> 10
    //   4: aload_1
    //   5: arraylength
    //   6: iconst_1
    //   7: if_icmpeq +5 -> 12
    //   10: aconst_null
    //   11: areturn
    //   12: aload_1
    //   13: iconst_0
    //   14: aaload
    //   15: iconst_0
    //   16: invokeinterface 29 2 0
    //   21: checkcast 31	org/json/JSONArray
    //   24: astore 13
    //   26: invokestatic 37	com/taplytics/fy:e	()Lcom/taplytics/fy;
    //   29: invokevirtual 41	com/taplytics/fy:p	()Landroid/content/Context;
    //   32: astore 11
    //   34: aload 13
    //   36: ifnull +639 -> 675
    //   39: aload 11
    //   41: invokevirtual 47	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   44: ldc 49
    //   46: aload 11
    //   48: invokevirtual 53	android/content/Context:getPackageName	()Ljava/lang/String;
    //   51: invokevirtual 59	android/content/pm/PackageManager:checkPermission	(Ljava/lang/String;Ljava/lang/String;)I
    //   54: ifne +621 -> 675
    //   57: getstatic 65	com/taplytics/kb:butterfly	Lcom/taplytics/kb;
    //   60: invokestatic 70	com/taplytics/iz:a	(Lcom/taplytics/kb;)Z
    //   63: ifne +612 -> 675
    //   66: new 72	java/util/ArrayList
    //   69: dup
    //   70: invokespecial 73	java/util/ArrayList:<init>	()V
    //   73: astore 12
    //   75: aload 13
    //   77: invokevirtual 77	org/json/JSONArray:length	()I
    //   80: istore 8
    //   82: invokestatic 37	com/taplytics/fy:e	()Lcom/taplytics/fy;
    //   85: invokevirtual 81	com/taplytics/fy:k	()Lcom/taplytics/eo;
    //   88: invokevirtual 87	com/taplytics/eo:o	()Lorg/json/JSONArray;
    //   91: astore 14
    //   93: new 72	java/util/ArrayList
    //   96: dup
    //   97: invokespecial 73	java/util/ArrayList:<init>	()V
    //   100: astore_1
    //   101: aload 14
    //   103: ifnull +614 -> 717
    //   106: iconst_0
    //   107: istore 7
    //   109: iload 7
    //   111: aload 14
    //   113: invokevirtual 77	org/json/JSONArray:length	()I
    //   116: if_icmpge +601 -> 717
    //   119: aload_1
    //   120: aload 14
    //   122: iload 7
    //   124: invokevirtual 91	org/json/JSONArray:getJSONObject	(I)Lorg/json/JSONObject;
    //   127: ldc 93
    //   129: invokevirtual 99	org/json/JSONObject:optString	(Ljava/lang/String;)Ljava/lang/String;
    //   132: invokeinterface 103 2 0
    //   137: pop
    //   138: iload 7
    //   140: iconst_1
    //   141: iadd
    //   142: istore 7
    //   144: goto -35 -> 109
    //   147: iload 7
    //   149: iload 8
    //   151: if_icmpge +299 -> 450
    //   154: aload 13
    //   156: iload 7
    //   158: invokevirtual 106	org/json/JSONArray:optJSONObject	(I)Lorg/json/JSONObject;
    //   161: astore 14
    //   163: new 108	com/taplytics/m
    //   166: dup
    //   167: ldc 110
    //   169: invokespecial 113	com/taplytics/m:<init>	(Ljava/lang/String;)V
    //   172: astore 15
    //   174: getstatic 119	java/lang/Double:TYPE	Ljava/lang/Class;
    //   177: astore 16
    //   179: getstatic 119	java/lang/Double:TYPE	Ljava/lang/Class;
    //   182: astore 17
    //   184: getstatic 122	java/lang/Float:TYPE	Ljava/lang/Class;
    //   187: astore 18
    //   189: aload 14
    //   191: ldc 124
    //   193: invokevirtual 128	org/json/JSONObject:optDouble	(Ljava/lang/String;)D
    //   196: dstore_2
    //   197: aload 14
    //   199: ldc -126
    //   201: invokevirtual 128	org/json/JSONObject:optDouble	(Ljava/lang/String;)D
    //   204: dstore 4
    //   206: aload 14
    //   208: ldc -124
    //   210: invokevirtual 128	org/json/JSONObject:optDouble	(Ljava/lang/String;)D
    //   213: d2f
    //   214: fstore 6
    //   216: aload 15
    //   218: ldc -122
    //   220: iconst_3
    //   221: anewarray 136	java/lang/Class
    //   224: dup
    //   225: iconst_0
    //   226: aload 16
    //   228: aastore
    //   229: dup
    //   230: iconst_1
    //   231: aload 17
    //   233: aastore
    //   234: dup
    //   235: iconst_2
    //   236: aload 18
    //   238: aastore
    //   239: iconst_3
    //   240: anewarray 138	java/lang/Object
    //   243: dup
    //   244: iconst_0
    //   245: dload_2
    //   246: invokestatic 142	java/lang/Double:valueOf	(D)Ljava/lang/Double;
    //   249: aastore
    //   250: dup
    //   251: iconst_1
    //   252: dload 4
    //   254: invokestatic 142	java/lang/Double:valueOf	(D)Ljava/lang/Double;
    //   257: aastore
    //   258: dup
    //   259: iconst_2
    //   260: fload 6
    //   262: invokestatic 145	java/lang/Float:valueOf	(F)Ljava/lang/Float;
    //   265: aastore
    //   266: invokevirtual 148	com/taplytics/m:a	(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    //   269: pop
    //   270: aload 14
    //   272: ldc 93
    //   274: invokevirtual 99	org/json/JSONObject:optString	(Ljava/lang/String;)Ljava/lang/String;
    //   277: astore 16
    //   279: aload 15
    //   281: ldc -106
    //   283: iconst_1
    //   284: anewarray 136	java/lang/Class
    //   287: dup
    //   288: iconst_0
    //   289: ldc -104
    //   291: aastore
    //   292: iconst_1
    //   293: anewarray 138	java/lang/Object
    //   296: dup
    //   297: iconst_0
    //   298: aload 16
    //   300: aastore
    //   301: invokevirtual 148	com/taplytics/m:a	(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    //   304: pop
    //   305: getstatic 155	java/lang/Long:TYPE	Ljava/lang/Class;
    //   308: astore 16
    //   310: ldc -99
    //   312: ldc -97
    //   314: invokestatic 162	com/taplytics/m:a	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    //   317: astore 17
    //   319: aload 15
    //   321: ldc -92
    //   323: iconst_1
    //   324: anewarray 136	java/lang/Class
    //   327: dup
    //   328: iconst_0
    //   329: aload 16
    //   331: aastore
    //   332: iconst_1
    //   333: anewarray 138	java/lang/Object
    //   336: dup
    //   337: iconst_0
    //   338: aload 17
    //   340: aastore
    //   341: invokevirtual 148	com/taplytics/m:a	(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    //   344: pop
    //   345: getstatic 167	java/lang/Integer:TYPE	Ljava/lang/Class;
    //   348: astore 16
    //   350: ldc -99
    //   352: ldc -87
    //   354: invokestatic 162	com/taplytics/m:a	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    //   357: checkcast 166	java/lang/Integer
    //   360: invokevirtual 172	java/lang/Integer:intValue	()I
    //   363: istore 9
    //   365: ldc -99
    //   367: ldc -82
    //   369: invokestatic 162	com/taplytics/m:a	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    //   372: checkcast 166	java/lang/Integer
    //   375: invokevirtual 172	java/lang/Integer:intValue	()I
    //   378: istore 10
    //   380: aload 15
    //   382: ldc -80
    //   384: iconst_1
    //   385: anewarray 136	java/lang/Class
    //   388: dup
    //   389: iconst_0
    //   390: aload 16
    //   392: aastore
    //   393: iconst_1
    //   394: anewarray 138	java/lang/Object
    //   397: dup
    //   398: iconst_0
    //   399: iload 10
    //   401: iload 9
    //   403: ior
    //   404: invokestatic 179	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   407: aastore
    //   408: invokevirtual 148	com/taplytics/m:a	(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    //   411: pop
    //   412: aload 12
    //   414: aload 15
    //   416: ldc -75
    //   418: invokevirtual 184	com/taplytics/m:a	(Ljava/lang/String;)Ljava/lang/Object;
    //   421: invokeinterface 103 2 0
    //   426: pop
    //   427: aload_1
    //   428: aload 14
    //   430: ldc 93
    //   432: invokevirtual 99	org/json/JSONObject:optString	(Ljava/lang/String;)Ljava/lang/String;
    //   435: invokeinterface 187 2 0
    //   440: pop
    //   441: iload 7
    //   443: iconst_1
    //   444: iadd
    //   445: istore 7
    //   447: goto -300 -> 147
    //   450: new 108	com/taplytics/m
    //   453: dup
    //   454: ldc -67
    //   456: invokespecial 113	com/taplytics/m:<init>	(Ljava/lang/String;)V
    //   459: astore 13
    //   461: getstatic 167	java/lang/Integer:TYPE	Ljava/lang/Class;
    //   464: astore 14
    //   466: ldc -65
    //   468: ldc -63
    //   470: invokestatic 162	com/taplytics/m:a	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    //   473: astore 15
    //   475: aload 13
    //   477: ldc -61
    //   479: iconst_1
    //   480: anewarray 136	java/lang/Class
    //   483: dup
    //   484: iconst_0
    //   485: aload 14
    //   487: aastore
    //   488: iconst_1
    //   489: anewarray 138	java/lang/Object
    //   492: dup
    //   493: iconst_0
    //   494: aload 15
    //   496: aastore
    //   497: invokevirtual 148	com/taplytics/m:a	(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    //   500: pop
    //   501: aload 13
    //   503: ldc -59
    //   505: iconst_1
    //   506: anewarray 136	java/lang/Class
    //   509: dup
    //   510: iconst_0
    //   511: ldc 25
    //   513: aastore
    //   514: iconst_1
    //   515: anewarray 138	java/lang/Object
    //   518: dup
    //   519: iconst_0
    //   520: aload 12
    //   522: aastore
    //   523: invokevirtual 148	com/taplytics/m:a	(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    //   526: pop
    //   527: aload_0
    //   528: getfield 11	com/taplytics/fw:a	Lcom/taplytics/ft;
    //   531: aload 11
    //   533: invokestatic 202	com/taplytics/ft:a	(Lcom/taplytics/ft;Landroid/content/Context;)Lcom/taplytics/m;
    //   536: astore 11
    //   538: aload_0
    //   539: getfield 11	com/taplytics/fw:a	Lcom/taplytics/ft;
    //   542: aload 13
    //   544: ldc -75
    //   546: invokevirtual 184	com/taplytics/m:a	(Ljava/lang/String;)Ljava/lang/Object;
    //   549: invokestatic 205	com/taplytics/ft:a	(Lcom/taplytics/ft;Ljava/lang/Object;)Ljava/lang/Object;
    //   552: pop
    //   553: aload_0
    //   554: getfield 11	com/taplytics/fw:a	Lcom/taplytics/ft;
    //   557: aload_1
    //   558: invokestatic 208	com/taplytics/ft:a	(Lcom/taplytics/ft;Ljava/util/List;)Ljava/util/List;
    //   561: pop
    //   562: aload 11
    //   564: ldc -46
    //   566: invokevirtual 184	com/taplytics/m:a	(Ljava/lang/String;)Ljava/lang/Object;
    //   569: pop
    //   570: aconst_null
    //   571: areturn
    //   572: astore_1
    //   573: new 212	java/lang/StringBuilder
    //   576: dup
    //   577: invokespecial 213	java/lang/StringBuilder:<init>	()V
    //   580: ldc -41
    //   582: invokevirtual 219	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   585: aload_1
    //   586: invokevirtual 222	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   589: invokevirtual 219	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   592: ldc -32
    //   594: invokevirtual 219	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   597: invokevirtual 227	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   600: invokestatic 232	com/taplytics/ck:c	(Ljava/lang/String;)V
    //   603: aload_0
    //   604: getfield 11	com/taplytics/fw:a	Lcom/taplytics/ft;
    //   607: invokestatic 235	com/taplytics/ft:a	(Lcom/taplytics/ft;)Lcom/taplytics/es;
    //   610: invokeinterface 240 1 0
    //   615: aload_0
    //   616: getfield 11	com/taplytics/fw:a	Lcom/taplytics/ft;
    //   619: invokestatic 235	com/taplytics/ft:a	(Lcom/taplytics/ft;)Lcom/taplytics/es;
    //   622: invokeinterface 240 1 0
    //   627: aconst_null
    //   628: areturn
    //   629: astore_1
    //   630: new 212	java/lang/StringBuilder
    //   633: dup
    //   634: invokespecial 213	java/lang/StringBuilder:<init>	()V
    //   637: ldc -14
    //   639: invokevirtual 219	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   642: aload_1
    //   643: invokevirtual 243	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   646: invokevirtual 219	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   649: ldc -11
    //   651: invokevirtual 219	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   654: invokevirtual 227	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   657: invokestatic 232	com/taplytics/ck:c	(Ljava/lang/String;)V
    //   660: aload_0
    //   661: getfield 11	com/taplytics/fw:a	Lcom/taplytics/ft;
    //   664: invokestatic 235	com/taplytics/ft:a	(Lcom/taplytics/ft;)Lcom/taplytics/es;
    //   667: invokeinterface 240 1 0
    //   672: goto -57 -> 615
    //   675: ldc -9
    //   677: invokestatic 249	com/taplytics/ck:b	(Ljava/lang/String;)V
    //   680: goto -65 -> 615
    //   683: astore_1
    //   684: new 212	java/lang/StringBuilder
    //   687: dup
    //   688: invokespecial 213	java/lang/StringBuilder:<init>	()V
    //   691: ldc -5
    //   693: invokevirtual 219	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   696: aload_1
    //   697: invokevirtual 222	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   700: invokevirtual 219	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   703: ldc -3
    //   705: invokevirtual 219	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   708: invokevirtual 227	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   711: invokestatic 232	com/taplytics/ck:c	(Ljava/lang/String;)V
    //   714: goto -87 -> 627
    //   717: iconst_0
    //   718: istore 7
    //   720: goto -573 -> 147
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	723	0	this	fw
    //   0	723	1	paramVarArgs	List<Object>[]
    //   196	50	2	d1	double
    //   204	49	4	d2	double
    //   214	47	6	f	float
    //   107	612	7	i	int
    //   80	72	8	j	int
    //   363	41	9	k	int
    //   378	26	10	m	int
    //   32	531	11	localObject1	Object
    //   73	448	12	localArrayList	java.util.ArrayList
    //   24	519	13	localObject2	Object
    //   91	395	14	localObject3	Object
    //   172	323	15	localObject4	Object
    //   177	214	16	localObject5	Object
    //   182	157	17	localObject6	Object
    //   187	50	18	localClass	Class
    // Exception table:
    //   from	to	target	type
    //   82	101	572	java/lang/Exception
    //   109	138	572	java/lang/Exception
    //   154	441	572	java/lang/Exception
    //   450	570	572	java/lang/Exception
    //   82	101	629	java/lang/Throwable
    //   109	138	629	java/lang/Throwable
    //   154	441	629	java/lang/Throwable
    //   450	570	629	java/lang/Throwable
    //   615	627	683	java/lang/Exception
  }
}

/* Location:
 * Qualified Name:     com.taplytics.fw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */