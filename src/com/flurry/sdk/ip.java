package com.flurry.sdk;

import android.content.Context;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;

public class ip
{
  public static final Integer a = Integer.valueOf(50);
  private static final String d = ip.class.getSimpleName();
  String b;
  LinkedHashMap<String, List<String>> c;
  
  public ip(String paramString)
  {
    a(paramString);
  }
  
  private void a(String paramString1, List<String> paramList, String paramString2)
  {
    try
    {
      jn.b();
      ib.a(5, d, "Saving Index File for " + paramString1 + " file name:" + hn.a().c().getFileStreamPath(g(paramString1)));
      paramString1 = new hu(hn.a().c().getFileStreamPath(g(paramString1)), paramString2, 1, new iy()
      {
        public iv<List<iq>> a(int paramAnonymousInt)
        {
          return new iu(new iq.a());
        }
      });
      paramString2 = new ArrayList();
      paramList = paramList.iterator();
      while (paramList.hasNext()) {
        paramString2.add(new iq((String)paramList.next()));
      }
      paramString1.a(paramString2);
    }
    finally {}
  }
  
  private void a(String paramString, byte[] paramArrayOfByte)
  {
    try
    {
      jn.b();
      ib.a(5, d, "Saving Block File for " + paramString + " file name:" + hn.a().c().getFileStreamPath(io.a(paramString)));
      new hu(hn.a().c().getFileStreamPath(io.a(paramString)), ".yflurrydatasenderblock.", 1, new iy()
      {
        public iv<io> a(int paramAnonymousInt)
        {
          return new io.a();
        }
      }).a(new io(paramArrayOfByte));
      return;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
  
  private void c()
  {
    try
    {
      LinkedList localLinkedList = new LinkedList(c.keySet());
      b();
      if (!localLinkedList.isEmpty()) {
        a(b, localLinkedList, b);
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  private void e(String paramString)
  {
    c = new LinkedHashMap();
    Object localObject1 = new ArrayList();
    Object localObject2;
    if (j(paramString))
    {
      localObject2 = k(paramString);
      if ((localObject2 != null) && (((List)localObject2).size() > 0))
      {
        ((List)localObject1).addAll((Collection)localObject2);
        localObject2 = ((List)localObject1).iterator();
        while (((Iterator)localObject2).hasNext()) {
          f((String)((Iterator)localObject2).next());
        }
      }
      i(paramString);
    }
    for (;;)
    {
      paramString = ((List)localObject1).iterator();
      while (paramString.hasNext())
      {
        localObject1 = (String)paramString.next();
        localObject2 = h((String)localObject1);
        if (localObject2 != null)
        {
          c.put(localObject1, localObject2);
          continue;
          paramString = (List)new hu(hn.a().c().getFileStreamPath(g(b)), paramString, 1, new iy()
          {
            public iv<List<iq>> a(int paramAnonymousInt)
            {
              return new iu(new iq.a());
            }
          }).a();
          if (paramString != null) {
            break label194;
          }
          ib.c(d, "New main file also not found. returning..");
        }
      }
      return;
      label194:
      paramString = paramString.iterator();
      while (paramString.hasNext()) {
        ((List)localObject1).add(((iq)paramString.next()).a());
      }
    }
  }
  
  private void f(String paramString)
  {
    List localList = k(paramString);
    if (localList == null) {
      ib.c(d, "No old file to replace");
    }
    do
    {
      return;
      Iterator localIterator = localList.iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        byte[] arrayOfByte = m(str);
        if (arrayOfByte == null)
        {
          ib.a(6, d, "File does not exist");
        }
        else
        {
          a(str, arrayOfByte);
          l(str);
        }
      }
    } while (localList == null);
    a(paramString, localList, ".YFlurrySenderIndex.info.");
    i(paramString);
  }
  
  private String g(String paramString)
  {
    return ".YFlurrySenderIndex.info." + paramString;
  }
  
  private List<String> h(String paramString)
  {
    try
    {
      jn.b();
      ib.a(5, d, "Reading Index File for " + paramString + " file name:" + hn.a().c().getFileStreamPath(g(paramString)));
      Object localObject = (List)new hu(hn.a().c().getFileStreamPath(g(paramString)), ".YFlurrySenderIndex.info.", 1, new iy()
      {
        public iv<List<iq>> a(int paramAnonymousInt)
        {
          return new iu(new iq.a());
        }
      }).a();
      paramString = new ArrayList();
      localObject = ((List)localObject).iterator();
      while (((Iterator)localObject).hasNext()) {
        paramString.add(((iq)((Iterator)localObject).next()).a());
      }
    }
    finally {}
    return paramString;
  }
  
  private void i(String paramString)
  {
    jn.b();
    ib.a(5, d, "Deleting Index File for " + paramString + " file name:" + hn.a().c().getFileStreamPath(new StringBuilder().append(".FlurrySenderIndex.info.").append(paramString).toString()));
    File localFile = hn.a().c().getFileStreamPath(".FlurrySenderIndex.info." + paramString);
    if (localFile.exists())
    {
      boolean bool = localFile.delete();
      ib.a(5, d, "Found file for " + paramString + ". Deleted - " + bool);
    }
  }
  
  private boolean j(String paramString)
  {
    try
    {
      File localFile = hn.a().c().getFileStreamPath(".FlurrySenderIndex.info." + paramString);
      ib.a(5, d, "isOldIndexFilePresent: for " + paramString + localFile.exists());
      boolean bool = localFile.exists();
      return bool;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
  
  /* Error */
  private List<String> k(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 6
    //   3: aload_0
    //   4: monitorenter
    //   5: invokestatic 56	com/flurry/sdk/jn:b	()V
    //   8: iconst_5
    //   9: getstatic 36	com/flurry/sdk/ip:d	Ljava/lang/String;
    //   12: new 58	java/lang/StringBuilder
    //   15: dup
    //   16: invokespecial 59	java/lang/StringBuilder:<init>	()V
    //   19: ldc -26
    //   21: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   24: aload_1
    //   25: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   28: ldc 67
    //   30: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   33: invokestatic 72	com/flurry/sdk/hn:a	()Lcom/flurry/sdk/hn;
    //   36: invokevirtual 75	com/flurry/sdk/hn:c	()Landroid/content/Context;
    //   39: new 58	java/lang/StringBuilder
    //   42: dup
    //   43: invokespecial 59	java/lang/StringBuilder:<init>	()V
    //   46: ldc -20
    //   48: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   51: aload_1
    //   52: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   55: invokevirtual 91	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   58: invokevirtual 85	android/content/Context:getFileStreamPath	(Ljava/lang/String;)Ljava/io/File;
    //   61: invokevirtual 88	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   64: invokevirtual 91	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   67: invokestatic 96	com/flurry/sdk/ib:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   70: invokestatic 72	com/flurry/sdk/hn:a	()Lcom/flurry/sdk/hn;
    //   73: invokevirtual 75	com/flurry/sdk/hn:c	()Landroid/content/Context;
    //   76: new 58	java/lang/StringBuilder
    //   79: dup
    //   80: invokespecial 59	java/lang/StringBuilder:<init>	()V
    //   83: ldc -20
    //   85: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   88: aload_1
    //   89: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   92: invokevirtual 91	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   95: invokevirtual 85	android/content/Context:getFileStreamPath	(Ljava/lang/String;)Ljava/io/File;
    //   98: astore 5
    //   100: aload 5
    //   102: invokevirtual 241	java/io/File:exists	()Z
    //   105: ifeq +270 -> 375
    //   108: iconst_5
    //   109: getstatic 36	com/flurry/sdk/ip:d	Ljava/lang/String;
    //   112: new 58	java/lang/StringBuilder
    //   115: dup
    //   116: invokespecial 59	java/lang/StringBuilder:<init>	()V
    //   119: ldc -26
    //   121: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   124: aload_1
    //   125: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   128: ldc_w 257
    //   131: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   134: invokevirtual 91	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   137: invokestatic 96	com/flurry/sdk/ib:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   140: new 259	java/io/DataInputStream
    //   143: dup
    //   144: new 261	java/io/FileInputStream
    //   147: dup
    //   148: aload 5
    //   150: invokespecial 264	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   153: invokespecial 267	java/io/DataInputStream:<init>	(Ljava/io/InputStream;)V
    //   156: astore 7
    //   158: aload 7
    //   160: astore 5
    //   162: aload 7
    //   164: invokevirtual 270	java/io/DataInputStream:readUnsignedShort	()I
    //   167: istore_3
    //   168: iload_3
    //   169: ifne +15 -> 184
    //   172: aload 7
    //   174: invokestatic 273	com/flurry/sdk/jn:a	(Ljava/io/Closeable;)V
    //   177: aload 6
    //   179: astore_1
    //   180: aload_0
    //   181: monitorexit
    //   182: aload_1
    //   183: areturn
    //   184: aload 7
    //   186: astore 5
    //   188: new 106	java/util/ArrayList
    //   191: dup
    //   192: iload_3
    //   193: invokespecial 276	java/util/ArrayList:<init>	(I)V
    //   196: astore_1
    //   197: iconst_0
    //   198: istore_2
    //   199: iload_2
    //   200: iload_3
    //   201: if_icmpge +104 -> 305
    //   204: aload 7
    //   206: astore 5
    //   208: aload 7
    //   210: invokevirtual 270	java/io/DataInputStream:readUnsignedShort	()I
    //   213: istore 4
    //   215: aload 7
    //   217: astore 5
    //   219: iconst_4
    //   220: getstatic 36	com/flurry/sdk/ip:d	Ljava/lang/String;
    //   223: new 58	java/lang/StringBuilder
    //   226: dup
    //   227: invokespecial 59	java/lang/StringBuilder:<init>	()V
    //   230: ldc_w 278
    //   233: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   236: iload_2
    //   237: invokevirtual 281	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   240: ldc_w 283
    //   243: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   246: iload 4
    //   248: invokevirtual 281	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   251: invokevirtual 91	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   254: invokestatic 96	com/flurry/sdk/ib:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   257: aload 7
    //   259: astore 5
    //   261: iload 4
    //   263: newarray <illegal type>
    //   265: astore 6
    //   267: aload 7
    //   269: astore 5
    //   271: aload 7
    //   273: aload 6
    //   275: invokevirtual 286	java/io/DataInputStream:readFully	([B)V
    //   278: aload 7
    //   280: astore 5
    //   282: aload_1
    //   283: new 127	java/lang/String
    //   286: dup
    //   287: aload 6
    //   289: invokespecial 287	java/lang/String:<init>	([B)V
    //   292: invokeinterface 133 2 0
    //   297: pop
    //   298: iload_2
    //   299: iconst_1
    //   300: iadd
    //   301: istore_2
    //   302: goto -103 -> 199
    //   305: aload 7
    //   307: astore 5
    //   309: aload 7
    //   311: invokevirtual 270	java/io/DataInputStream:readUnsignedShort	()I
    //   314: istore_2
    //   315: iload_2
    //   316: ifne +3 -> 319
    //   319: aload 7
    //   321: invokestatic 273	com/flurry/sdk/jn:a	(Ljava/io/Closeable;)V
    //   324: goto -144 -> 180
    //   327: astore 6
    //   329: aconst_null
    //   330: astore 7
    //   332: aconst_null
    //   333: astore_1
    //   334: aload 7
    //   336: astore 5
    //   338: bipush 6
    //   340: getstatic 36	com/flurry/sdk/ip:d	Ljava/lang/String;
    //   343: ldc_w 289
    //   346: aload 6
    //   348: invokestatic 292	com/flurry/sdk/ib:a	(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   351: aload 7
    //   353: invokestatic 273	com/flurry/sdk/jn:a	(Ljava/io/Closeable;)V
    //   356: goto -32 -> 324
    //   359: astore_1
    //   360: aload_0
    //   361: monitorexit
    //   362: aload_1
    //   363: athrow
    //   364: astore_1
    //   365: aconst_null
    //   366: astore 5
    //   368: aload 5
    //   370: invokestatic 273	com/flurry/sdk/jn:a	(Ljava/io/Closeable;)V
    //   373: aload_1
    //   374: athrow
    //   375: iconst_5
    //   376: getstatic 36	com/flurry/sdk/ip:d	Ljava/lang/String;
    //   379: ldc_w 294
    //   382: invokestatic 96	com/flurry/sdk/ib:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   385: aconst_null
    //   386: astore_1
    //   387: goto -63 -> 324
    //   390: astore_1
    //   391: goto -23 -> 368
    //   394: astore 6
    //   396: aconst_null
    //   397: astore_1
    //   398: goto -64 -> 334
    //   401: astore 6
    //   403: goto -69 -> 334
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	406	0	this	ip
    //   0	406	1	paramString	String
    //   198	118	2	i	int
    //   167	35	3	j	int
    //   213	49	4	k	int
    //   98	271	5	localObject	Object
    //   1	287	6	arrayOfByte	byte[]
    //   327	20	6	localThrowable1	Throwable
    //   394	1	6	localThrowable2	Throwable
    //   401	1	6	localThrowable3	Throwable
    //   156	196	7	localDataInputStream	java.io.DataInputStream
    // Exception table:
    //   from	to	target	type
    //   140	158	327	java/lang/Throwable
    //   5	140	359	finally
    //   172	177	359	finally
    //   319	324	359	finally
    //   351	356	359	finally
    //   368	375	359	finally
    //   375	385	359	finally
    //   140	158	364	finally
    //   162	168	390	finally
    //   188	197	390	finally
    //   208	215	390	finally
    //   219	257	390	finally
    //   261	267	390	finally
    //   271	278	390	finally
    //   282	298	390	finally
    //   309	315	390	finally
    //   338	351	390	finally
    //   162	168	394	java/lang/Throwable
    //   188	197	394	java/lang/Throwable
    //   208	215	401	java/lang/Throwable
    //   219	257	401	java/lang/Throwable
    //   261	267	401	java/lang/Throwable
    //   271	278	401	java/lang/Throwable
    //   282	298	401	java/lang/Throwable
    //   309	315	401	java/lang/Throwable
  }
  
  private void l(String paramString)
  {
    jn.b();
    ib.a(5, d, "Deleting  block File for " + paramString + " file name:" + hn.a().c().getFileStreamPath(new StringBuilder().append(".flurrydatasenderblock.").append(paramString).toString()));
    File localFile = hn.a().c().getFileStreamPath(".flurrydatasenderblock." + paramString);
    if (localFile.exists())
    {
      boolean bool = localFile.delete();
      ib.a(5, d, "Found file for " + paramString + ". Deleted - " + bool);
    }
  }
  
  /* Error */
  private byte[] m(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 6
    //   3: aconst_null
    //   4: astore 5
    //   6: invokestatic 56	com/flurry/sdk/jn:b	()V
    //   9: iconst_5
    //   10: getstatic 36	com/flurry/sdk/ip:d	Ljava/lang/String;
    //   13: new 58	java/lang/StringBuilder
    //   16: dup
    //   17: invokespecial 59	java/lang/StringBuilder:<init>	()V
    //   20: ldc_w 300
    //   23: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   26: aload_1
    //   27: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   30: ldc 67
    //   32: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   35: invokestatic 72	com/flurry/sdk/hn:a	()Lcom/flurry/sdk/hn;
    //   38: invokevirtual 75	com/flurry/sdk/hn:c	()Landroid/content/Context;
    //   41: new 58	java/lang/StringBuilder
    //   44: dup
    //   45: invokespecial 59	java/lang/StringBuilder:<init>	()V
    //   48: ldc_w 298
    //   51: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   54: aload_1
    //   55: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   58: invokevirtual 91	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   61: invokevirtual 85	android/content/Context:getFileStreamPath	(Ljava/lang/String;)Ljava/io/File;
    //   64: invokevirtual 88	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   67: invokevirtual 91	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   70: invokestatic 96	com/flurry/sdk/ib:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   73: invokestatic 72	com/flurry/sdk/hn:a	()Lcom/flurry/sdk/hn;
    //   76: invokevirtual 75	com/flurry/sdk/hn:c	()Landroid/content/Context;
    //   79: new 58	java/lang/StringBuilder
    //   82: dup
    //   83: invokespecial 59	java/lang/StringBuilder:<init>	()V
    //   86: ldc_w 298
    //   89: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   92: aload_1
    //   93: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   96: invokevirtual 91	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   99: invokevirtual 85	android/content/Context:getFileStreamPath	(Ljava/lang/String;)Ljava/io/File;
    //   102: astore_3
    //   103: aload_3
    //   104: invokevirtual 241	java/io/File:exists	()Z
    //   107: ifeq +162 -> 269
    //   110: iconst_5
    //   111: getstatic 36	com/flurry/sdk/ip:d	Ljava/lang/String;
    //   114: new 58	java/lang/StringBuilder
    //   117: dup
    //   118: invokespecial 59	java/lang/StringBuilder:<init>	()V
    //   121: ldc -26
    //   123: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   126: aload_1
    //   127: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   130: ldc_w 257
    //   133: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   136: invokevirtual 91	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   139: invokestatic 96	com/flurry/sdk/ib:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   142: new 259	java/io/DataInputStream
    //   145: dup
    //   146: new 261	java/io/FileInputStream
    //   149: dup
    //   150: aload_3
    //   151: invokespecial 264	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   154: invokespecial 267	java/io/DataInputStream:<init>	(Ljava/io/InputStream;)V
    //   157: astore 4
    //   159: aload 4
    //   161: astore_1
    //   162: aload 6
    //   164: astore_3
    //   165: aload 4
    //   167: invokevirtual 270	java/io/DataInputStream:readUnsignedShort	()I
    //   170: istore_2
    //   171: iload_2
    //   172: ifne +10 -> 182
    //   175: aload 4
    //   177: invokestatic 273	com/flurry/sdk/jn:a	(Ljava/io/Closeable;)V
    //   180: aconst_null
    //   181: areturn
    //   182: aload 4
    //   184: astore_1
    //   185: aload 6
    //   187: astore_3
    //   188: iload_2
    //   189: newarray <illegal type>
    //   191: astore 5
    //   193: aload 4
    //   195: astore_1
    //   196: aload 5
    //   198: astore_3
    //   199: aload 4
    //   201: aload 5
    //   203: invokevirtual 286	java/io/DataInputStream:readFully	([B)V
    //   206: aload 4
    //   208: astore_1
    //   209: aload 5
    //   211: astore_3
    //   212: aload 4
    //   214: invokevirtual 270	java/io/DataInputStream:readUnsignedShort	()I
    //   217: istore_2
    //   218: iload_2
    //   219: ifne +3 -> 222
    //   222: aload 4
    //   224: invokestatic 273	com/flurry/sdk/jn:a	(Ljava/io/Closeable;)V
    //   227: aload 5
    //   229: areturn
    //   230: astore 6
    //   232: aconst_null
    //   233: astore_3
    //   234: aload_3
    //   235: astore_1
    //   236: bipush 6
    //   238: getstatic 36	com/flurry/sdk/ip:d	Ljava/lang/String;
    //   241: ldc_w 289
    //   244: aload 6
    //   246: invokestatic 292	com/flurry/sdk/ib:a	(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   249: aload_3
    //   250: invokestatic 273	com/flurry/sdk/jn:a	(Ljava/io/Closeable;)V
    //   253: aload 5
    //   255: areturn
    //   256: astore_1
    //   257: aconst_null
    //   258: astore 4
    //   260: aload_1
    //   261: astore_3
    //   262: aload 4
    //   264: invokestatic 273	com/flurry/sdk/jn:a	(Ljava/io/Closeable;)V
    //   267: aload_3
    //   268: athrow
    //   269: iconst_4
    //   270: getstatic 36	com/flurry/sdk/ip:d	Ljava/lang/String;
    //   273: ldc_w 294
    //   276: invokestatic 96	com/flurry/sdk/ib:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   279: aconst_null
    //   280: areturn
    //   281: astore_3
    //   282: aload_1
    //   283: astore 4
    //   285: goto -23 -> 262
    //   288: astore 6
    //   290: aload_3
    //   291: astore 5
    //   293: aload 4
    //   295: astore_3
    //   296: goto -62 -> 234
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	299	0	this	ip
    //   0	299	1	paramString	String
    //   170	49	2	i	int
    //   102	166	3	localObject1	Object
    //   281	10	3	localObject2	Object
    //   295	1	3	localObject3	Object
    //   157	137	4	localObject4	Object
    //   4	288	5	localObject5	Object
    //   1	185	6	localObject6	Object
    //   230	15	6	localThrowable1	Throwable
    //   288	1	6	localThrowable2	Throwable
    // Exception table:
    //   from	to	target	type
    //   142	159	230	java/lang/Throwable
    //   142	159	256	finally
    //   165	171	281	finally
    //   188	193	281	finally
    //   199	206	281	finally
    //   212	218	281	finally
    //   236	249	281	finally
    //   165	171	288	java/lang/Throwable
    //   188	193	288	java/lang/Throwable
    //   199	206	288	java/lang/Throwable
    //   212	218	288	java/lang/Throwable
  }
  
  public List<String> a()
  {
    return new ArrayList(c.keySet());
  }
  
  public void a(io paramio, String paramString)
  {
    int i = 0;
    for (;;)
    {
      try
      {
        ib.a(4, d, "addBlockInfo" + paramString);
        String str = paramio.a();
        paramio = (List)c.get(paramString);
        if (paramio == null)
        {
          ib.a(4, d, "New Data Key");
          paramio = new LinkedList();
          i = 1;
          paramio.add(str);
          if (paramio.size() > a.intValue())
          {
            b((String)paramio.get(0));
            paramio.remove(0);
          }
          c.put(paramString, paramio);
          a(paramString, paramio, ".YFlurrySenderIndex.info.");
          if (i != 0) {
            c();
          }
          return;
        }
      }
      finally {}
    }
  }
  
  void a(String paramString)
  {
    b = (paramString + "Main");
    e(b);
  }
  
  public boolean a(String paramString1, String paramString2)
  {
    List localList = (List)c.get(paramString2);
    boolean bool = false;
    if (localList != null)
    {
      b(paramString1);
      bool = localList.remove(paramString1);
    }
    if ((localList != null) && (!localList.isEmpty()))
    {
      c.put(paramString2, localList);
      a(paramString2, localList, ".YFlurrySenderIndex.info.");
      return bool;
    }
    d(paramString2);
    return bool;
  }
  
  void b()
  {
    new hu(hn.a().c().getFileStreamPath(g(b)), ".YFlurrySenderIndex.info.", 1, new iy()
    {
      public iv<List<iq>> a(int paramAnonymousInt)
      {
        return new iu(new iq.a());
      }
    }).b();
  }
  
  boolean b(String paramString)
  {
    new hu(hn.a().c().getFileStreamPath(io.a(paramString)), ".yflurrydatasenderblock.", 1, new iy()
    {
      public iv<io> a(int paramAnonymousInt)
      {
        return new io.a();
      }
    }).b();
  }
  
  public List<String> c(String paramString)
  {
    return (List)c.get(paramString);
  }
  
  public boolean d(String paramString)
  {
    hu localhu;
    try
    {
      jn.b();
      localhu = new hu(hn.a().c().getFileStreamPath(g(paramString)), ".YFlurrySenderIndex.info.", 1, new iy()
      {
        public iv<List<iq>> a(int paramAnonymousInt)
        {
          return new iu(new iq.a());
        }
      });
      Object localObject = c(paramString);
      if (localObject != null)
      {
        ib.a(4, d, "discardOutdatedBlocksForDataKey: notSentBlocks = " + ((List)localObject).size());
        localObject = ((List)localObject).iterator();
        while (((Iterator)localObject).hasNext())
        {
          String str = (String)((Iterator)localObject).next();
          b(str);
          ib.a(4, d, "discardOutdatedBlocksForDataKey: removed block = " + str);
        }
      }
      c.remove(paramString);
    }
    finally {}
    boolean bool = localhu.b();
    c();
    return bool;
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.ip
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */