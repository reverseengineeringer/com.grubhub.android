package com.crashlytics.android;

final class ac
  extends com.crashlytics.android.internal.aa
{
  private final float a;
  
  ac(aa paramaa, float paramFloat)
  {
    a = paramFloat;
  }
  
  /* Error */
  public final void a()
  {
    // Byte code:
    //   0: invokestatic 27	com/crashlytics/android/internal/v:a	()Lcom/crashlytics/android/internal/v;
    //   3: invokevirtual 30	com/crashlytics/android/internal/v:b	()Lcom/crashlytics/android/internal/q;
    //   6: ldc 32
    //   8: new 34	java/lang/StringBuilder
    //   11: dup
    //   12: ldc 36
    //   14: invokespecial 39	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   17: aload_0
    //   18: getfield 17	com/crashlytics/android/ac:a	F
    //   21: invokevirtual 43	java/lang/StringBuilder:append	(F)Ljava/lang/StringBuilder;
    //   24: ldc 45
    //   26: invokevirtual 48	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   29: invokevirtual 52	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   32: invokeinterface 57 3 0
    //   37: aload_0
    //   38: getfield 17	com/crashlytics/android/ac:a	F
    //   41: fstore_1
    //   42: fload_1
    //   43: fconst_0
    //   44: fcmpl
    //   45: ifle +14 -> 59
    //   48: aload_0
    //   49: getfield 17	com/crashlytics/android/ac:a	F
    //   52: ldc 58
    //   54: fmul
    //   55: f2l
    //   56: invokestatic 64	java/lang/Thread:sleep	(J)V
    //   59: invokestatic 70	com/crashlytics/android/Crashlytics:getInstance	()Lcom/crashlytics/android/Crashlytics;
    //   62: astore 6
    //   64: aload 6
    //   66: invokevirtual 74	com/crashlytics/android/Crashlytics:l	()Lcom/crashlytics/android/v;
    //   69: astore 7
    //   71: aload_0
    //   72: getfield 12	com/crashlytics/android/ac:b	Lcom/crashlytics/android/aa;
    //   75: invokevirtual 79	com/crashlytics/android/aa:a	()Ljava/util/List;
    //   78: astore 5
    //   80: aload 7
    //   82: invokevirtual 84	com/crashlytics/android/v:a	()Z
    //   85: ifne +116 -> 201
    //   88: aload 5
    //   90: invokeinterface 89 1 0
    //   95: ifne +336 -> 431
    //   98: aload 6
    //   100: invokevirtual 92	com/crashlytics/android/Crashlytics:p	()Z
    //   103: ifne +328 -> 431
    //   106: invokestatic 27	com/crashlytics/android/internal/v:a	()Lcom/crashlytics/android/internal/v;
    //   109: invokevirtual 30	com/crashlytics/android/internal/v:b	()Lcom/crashlytics/android/internal/q;
    //   112: ldc 32
    //   114: new 34	java/lang/StringBuilder
    //   117: dup
    //   118: ldc 94
    //   120: invokespecial 39	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   123: aload 5
    //   125: invokeinterface 98 1 0
    //   130: invokevirtual 101	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   133: ldc 103
    //   135: invokevirtual 48	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   138: invokevirtual 52	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   141: invokeinterface 57 3 0
    //   146: aload 5
    //   148: invokeinterface 107 1 0
    //   153: astore 5
    //   155: aload 5
    //   157: invokeinterface 112 1 0
    //   162: ifeq +39 -> 201
    //   165: aload 5
    //   167: invokeinterface 116 1 0
    //   172: checkcast 118	com/crashlytics/android/Z
    //   175: invokevirtual 119	com/crashlytics/android/Z:a	()Z
    //   178: pop
    //   179: goto -24 -> 155
    //   182: astore 5
    //   184: invokestatic 27	com/crashlytics/android/internal/v:a	()Lcom/crashlytics/android/internal/v;
    //   187: invokevirtual 30	com/crashlytics/android/internal/v:b	()Lcom/crashlytics/android/internal/q;
    //   190: ldc 32
    //   192: ldc 121
    //   194: aload 5
    //   196: invokeinterface 124 4 0
    //   201: aload_0
    //   202: getfield 12	com/crashlytics/android/ac:b	Lcom/crashlytics/android/aa;
    //   205: aconst_null
    //   206: invokestatic 127	com/crashlytics/android/aa:a	(Lcom/crashlytics/android/aa;Ljava/lang/Thread;)Ljava/lang/Thread;
    //   209: pop
    //   210: return
    //   211: astore 5
    //   213: invokestatic 131	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   216: invokevirtual 134	java/lang/Thread:interrupt	()V
    //   219: goto -18 -> 201
    //   222: aload 5
    //   224: invokeinterface 89 1 0
    //   229: ifne -28 -> 201
    //   232: invokestatic 70	com/crashlytics/android/Crashlytics:getInstance	()Lcom/crashlytics/android/Crashlytics;
    //   235: invokevirtual 74	com/crashlytics/android/Crashlytics:l	()Lcom/crashlytics/android/v;
    //   238: invokevirtual 84	com/crashlytics/android/v:a	()Z
    //   241: ifne -40 -> 201
    //   244: invokestatic 27	com/crashlytics/android/internal/v:a	()Lcom/crashlytics/android/internal/v;
    //   247: invokevirtual 30	com/crashlytics/android/internal/v:b	()Lcom/crashlytics/android/internal/q;
    //   250: ldc 32
    //   252: new 34	java/lang/StringBuilder
    //   255: dup
    //   256: ldc -120
    //   258: invokespecial 39	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   261: aload 5
    //   263: invokeinterface 98 1 0
    //   268: invokevirtual 101	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   271: ldc -118
    //   273: invokevirtual 48	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   276: invokevirtual 52	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   279: invokeinterface 57 3 0
    //   284: aload 5
    //   286: invokeinterface 107 1 0
    //   291: astore 5
    //   293: aload 5
    //   295: invokeinterface 112 1 0
    //   300: ifeq +28 -> 328
    //   303: aload 5
    //   305: invokeinterface 116 1 0
    //   310: checkcast 118	com/crashlytics/android/Z
    //   313: astore 6
    //   315: aload_0
    //   316: getfield 12	com/crashlytics/android/ac:b	Lcom/crashlytics/android/aa;
    //   319: aload 6
    //   321: invokevirtual 141	com/crashlytics/android/aa:a	(Lcom/crashlytics/android/Z;)Z
    //   324: pop
    //   325: goto -32 -> 293
    //   328: aload_0
    //   329: getfield 12	com/crashlytics/android/ac:b	Lcom/crashlytics/android/aa;
    //   332: invokevirtual 79	com/crashlytics/android/aa:a	()Ljava/util/List;
    //   335: astore 6
    //   337: aload 6
    //   339: astore 5
    //   341: aload 6
    //   343: invokeinterface 89 1 0
    //   348: ifne -126 -> 222
    //   351: invokestatic 144	com/crashlytics/android/aa:b	()[S
    //   354: iload_2
    //   355: invokestatic 144	com/crashlytics/android/aa:b	()[S
    //   358: arraylength
    //   359: iconst_1
    //   360: isub
    //   361: invokestatic 150	java/lang/Math:min	(II)I
    //   364: saload
    //   365: i2l
    //   366: lstore_3
    //   367: invokestatic 27	com/crashlytics/android/internal/v:a	()Lcom/crashlytics/android/internal/v;
    //   370: invokevirtual 30	com/crashlytics/android/internal/v:b	()Lcom/crashlytics/android/internal/q;
    //   373: ldc 32
    //   375: new 34	java/lang/StringBuilder
    //   378: dup
    //   379: ldc -104
    //   381: invokespecial 39	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   384: lload_3
    //   385: invokevirtual 155	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   388: ldc -99
    //   390: invokevirtual 48	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   393: invokevirtual 52	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   396: invokeinterface 57 3 0
    //   401: lload_3
    //   402: ldc2_w 158
    //   405: lmul
    //   406: invokestatic 64	java/lang/Thread:sleep	(J)V
    //   409: iload_2
    //   410: iconst_1
    //   411: iadd
    //   412: istore_2
    //   413: aload 6
    //   415: astore 5
    //   417: goto -195 -> 222
    //   420: astore 5
    //   422: invokestatic 131	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   425: invokevirtual 134	java/lang/Thread:interrupt	()V
    //   428: goto -227 -> 201
    //   431: iconst_0
    //   432: istore_2
    //   433: goto -211 -> 222
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	436	0	this	ac
    //   41	2	1	f	float
    //   354	79	2	i	int
    //   366	36	3	l	long
    //   78	88	5	localObject1	Object
    //   182	13	5	localException	Exception
    //   211	74	5	localInterruptedException1	InterruptedException
    //   291	125	5	localObject2	Object
    //   420	1	5	localInterruptedException2	InterruptedException
    //   62	352	6	localObject3	Object
    //   69	12	7	localv	v
    // Exception table:
    //   from	to	target	type
    //   0	42	182	java/lang/Exception
    //   48	59	182	java/lang/Exception
    //   59	155	182	java/lang/Exception
    //   155	179	182	java/lang/Exception
    //   213	219	182	java/lang/Exception
    //   222	293	182	java/lang/Exception
    //   293	325	182	java/lang/Exception
    //   328	337	182	java/lang/Exception
    //   341	401	182	java/lang/Exception
    //   401	409	182	java/lang/Exception
    //   422	428	182	java/lang/Exception
    //   48	59	211	java/lang/InterruptedException
    //   401	409	420	java/lang/InterruptedException
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.ac
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */