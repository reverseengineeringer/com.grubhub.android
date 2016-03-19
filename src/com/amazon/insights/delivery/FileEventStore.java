package com.amazon.insights.delivery;

import com.amazon.insights.InsightsCredentials;
import com.amazon.insights.core.InsightsContext;
import com.amazon.insights.core.configuration.Configuration;
import com.amazon.insights.core.idresolver.Id;
import com.amazon.insights.core.io.EncryptedBufferedReader;
import com.amazon.insights.core.io.EncryptedWriter;
import com.amazon.insights.core.log.Logger;
import com.amazon.insights.core.system.FileManager;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;
import java.io.Writer;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.concurrent.locks.ReentrantLock;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;

public class FileEventStore
  implements EventStore
{
  static final String ENCRYPTION_ALGORITHM = "AES";
  static final double ERROR_LENGTH_THRESHOLD_PERCENTAGE = 1.1D;
  static final String EVENTS_DIRECTORY = "events";
  static final String EVENT_FILE_NAME = "eventsFile";
  static final String KEY_MAX_STORAGE_SIZE = "maxStorageSize";
  static final long MAX_STORAGE_SIZE = 5242880L;
  private static final Logger logger = Logger.getLogger(FileEventStore.class);
  private final ReentrantLock accessLock = new ReentrantLock(true);
  private final InsightsContext context;
  private File eventsFile;
  private SecretKey secretKey;
  
  public FileEventStore(InsightsContext paramInsightsContext)
  {
    context = paramInsightsContext;
    tryCreateEventsFile();
    byte[] arrayOfByte = new byte[32];
    label214:
    for (;;)
    {
      try
      {
        localObject = paramInsightsContext.getCredentials().getPrivateKey();
        if ((paramInsightsContext.getUniqueId() == null) || (paramInsightsContext.getUniqueId() == Id.getEmptyId()) || (paramInsightsContext.getUniqueId().getValue() == null)) {
          break label214;
        }
        localObject = paramInsightsContext.getUniqueId().getValue();
        String str2 = paramInsightsContext.getCredentials().getPrivateKey();
        String str1 = str2;
        if (str2.length() > 16) {
          str1 = str2.substring(16);
        }
        localObject = paramInsightsContext.getConfiguration().optString("encryptionPrefix", str1) + (String)localObject;
        paramInsightsContext = ((String)localObject).getBytes("UTF-8");
      }
      catch (UnsupportedEncodingException paramInsightsContext)
      {
        Object localObject;
        secretKey = null;
        return;
      }
      try
      {
        localObject = MessageDigest.getInstance("SHA-256").digest(((String)localObject).getBytes("UTF-8"));
        paramInsightsContext = (InsightsContext)localObject;
      }
      catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
      {
        continue;
      }
      System.arraycopy(paramInsightsContext, 0, arrayOfByte, 0, 32);
      secretKey = new SecretKeySpec(arrayOfByte, "AES");
      return;
    }
  }
  
  /* Error */
  private File deleteReadEvents(int paramInt)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 11
    //   3: aconst_null
    //   4: astore 8
    //   6: aconst_null
    //   7: astore 10
    //   9: aconst_null
    //   10: astore 7
    //   12: aload_0
    //   13: getfield 66	com/amazon/insights/delivery/FileEventStore:context	Lcom/amazon/insights/core/InsightsContext;
    //   16: invokeinterface 183 1 0
    //   21: invokeinterface 189 1 0
    //   26: astore 13
    //   28: aload 13
    //   30: ldc 19
    //   32: invokeinterface 195 2 0
    //   37: astore 12
    //   39: aload_0
    //   40: getfield 66	com/amazon/insights/delivery/FileEventStore:context	Lcom/amazon/insights/core/InsightsContext;
    //   43: invokeinterface 111 1 0
    //   48: ldc 25
    //   50: ldc2_w 28
    //   53: invokestatic 201	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   56: invokeinterface 205 3 0
    //   61: invokevirtual 209	java/lang/Long:longValue	()J
    //   64: l2d
    //   65: ldc2_w 15
    //   68: dmul
    //   69: d2l
    //   70: lstore 4
    //   72: aload_0
    //   73: getfield 161	com/amazon/insights/delivery/FileEventStore:eventsFile	Ljava/io/File;
    //   76: invokevirtual 213	java/io/File:length	()J
    //   79: lload 4
    //   81: lcmp
    //   82: iflt +63 -> 145
    //   85: aload_0
    //   86: getfield 161	com/amazon/insights/delivery/FileEventStore:eventsFile	Ljava/io/File;
    //   89: invokevirtual 216	java/io/File:delete	()Z
    //   92: ifne +11 -> 103
    //   95: getstatic 48	com/amazon/insights/delivery/FileEventStore:logger	Lcom/amazon/insights/core/log/Logger;
    //   98: ldc -38
    //   100: invokevirtual 222	com/amazon/insights/core/log/Logger:e	(Ljava/lang/String;)V
    //   103: aload_0
    //   104: aload 13
    //   106: new 211	java/io/File
    //   109: dup
    //   110: aload 12
    //   112: ldc 22
    //   114: invokespecial 225	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   117: invokeinterface 229 2 0
    //   122: putfield 161	com/amazon/insights/delivery/FileEventStore:eventsFile	Ljava/io/File;
    //   125: aload_0
    //   126: getfield 161	com/amazon/insights/delivery/FileEventStore:eventsFile	Ljava/io/File;
    //   129: areturn
    //   130: astore 6
    //   132: getstatic 48	com/amazon/insights/delivery/FileEventStore:logger	Lcom/amazon/insights/core/log/Logger;
    //   135: ldc -25
    //   137: aload 6
    //   139: invokevirtual 234	com/amazon/insights/core/log/Logger:e	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   142: goto -17 -> 125
    //   145: new 211	java/io/File
    //   148: dup
    //   149: aload 12
    //   151: ldc -20
    //   153: invokespecial 225	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   156: astore 6
    //   158: aload 6
    //   160: invokevirtual 239	java/io/File:exists	()Z
    //   163: ifeq +19 -> 182
    //   166: aload 6
    //   168: invokevirtual 216	java/io/File:delete	()Z
    //   171: ifne +11 -> 182
    //   174: getstatic 48	com/amazon/insights/delivery/FileEventStore:logger	Lcom/amazon/insights/core/log/Logger;
    //   177: ldc -15
    //   179: invokevirtual 222	com/amazon/insights/core/log/Logger:e	(Ljava/lang/String;)V
    //   182: aload 13
    //   184: aload 6
    //   186: invokeinterface 229 2 0
    //   191: astore 14
    //   193: aload 14
    //   195: ifnull +189 -> 384
    //   198: aload_0
    //   199: getfield 161	com/amazon/insights/delivery/FileEventStore:eventsFile	Ljava/io/File;
    //   202: invokevirtual 239	java/io/File:exists	()Z
    //   205: ifeq +179 -> 384
    //   208: aload 14
    //   210: invokevirtual 239	java/io/File:exists	()Z
    //   213: ifeq +171 -> 384
    //   216: new 243	java/io/BufferedReader
    //   219: dup
    //   220: new 245	java/io/FileReader
    //   223: dup
    //   224: aload_0
    //   225: getfield 161	com/amazon/insights/delivery/FileEventStore:eventsFile	Ljava/io/File;
    //   228: invokespecial 248	java/io/FileReader:<init>	(Ljava/io/File;)V
    //   231: invokespecial 251	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   234: astore 6
    //   236: aload 6
    //   238: astore 9
    //   240: new 253	java/io/PrintWriter
    //   243: dup
    //   244: new 255	java/io/FileWriter
    //   247: dup
    //   248: aload 14
    //   250: iconst_1
    //   251: invokespecial 258	java/io/FileWriter:<init>	(Ljava/io/File;Z)V
    //   254: invokespecial 261	java/io/PrintWriter:<init>	(Ljava/io/Writer;)V
    //   257: astore 8
    //   259: iconst_0
    //   260: istore_2
    //   261: aload 6
    //   263: invokevirtual 264	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   266: astore 7
    //   268: aload 7
    //   270: ifnull +137 -> 407
    //   273: iload_2
    //   274: iconst_1
    //   275: iadd
    //   276: istore_3
    //   277: iload_3
    //   278: istore_2
    //   279: iload_3
    //   280: iload_1
    //   281: if_icmple -20 -> 261
    //   284: aload 8
    //   286: aload 7
    //   288: invokevirtual 267	java/io/PrintWriter:println	(Ljava/lang/String;)V
    //   291: aload 8
    //   293: invokevirtual 270	java/io/PrintWriter:flush	()V
    //   296: iload_3
    //   297: istore_2
    //   298: goto -37 -> 261
    //   301: astore 9
    //   303: aload 6
    //   305: astore 7
    //   307: aload 8
    //   309: astore 6
    //   311: aload 9
    //   313: astore 8
    //   315: getstatic 48	com/amazon/insights/delivery/FileEventStore:logger	Lcom/amazon/insights/core/log/Logger;
    //   318: ldc_w 272
    //   321: aload 8
    //   323: invokevirtual 234	com/amazon/insights/core/log/Logger:e	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   326: aload 6
    //   328: ifnull +8 -> 336
    //   331: aload 6
    //   333: invokevirtual 275	java/io/PrintWriter:close	()V
    //   336: aload 7
    //   338: ifnull +8 -> 346
    //   341: aload 7
    //   343: invokevirtual 276	java/io/BufferedReader:close	()V
    //   346: new 211	java/io/File
    //   349: dup
    //   350: aload 12
    //   352: ldc -20
    //   354: invokespecial 225	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   357: astore 6
    //   359: aload 6
    //   361: invokevirtual 239	java/io/File:exists	()Z
    //   364: ifeq +20 -> 384
    //   367: aload 6
    //   369: invokevirtual 216	java/io/File:delete	()Z
    //   372: ifne +12 -> 384
    //   375: getstatic 48	com/amazon/insights/delivery/FileEventStore:logger	Lcom/amazon/insights/core/log/Logger;
    //   378: ldc_w 278
    //   381: invokevirtual 222	com/amazon/insights/core/log/Logger:e	(Ljava/lang/String;)V
    //   384: aload_0
    //   385: getfield 161	com/amazon/insights/delivery/FileEventStore:eventsFile	Ljava/io/File;
    //   388: areturn
    //   389: astore 6
    //   391: getstatic 48	com/amazon/insights/delivery/FileEventStore:logger	Lcom/amazon/insights/core/log/Logger;
    //   394: ldc_w 280
    //   397: aload 6
    //   399: invokevirtual 234	com/amazon/insights/core/log/Logger:e	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   402: aload_0
    //   403: getfield 161	com/amazon/insights/delivery/FileEventStore:eventsFile	Ljava/io/File;
    //   406: areturn
    //   407: aload 8
    //   409: ifnull +8 -> 417
    //   412: aload 8
    //   414: invokevirtual 275	java/io/PrintWriter:close	()V
    //   417: aload 6
    //   419: ifnull +8 -> 427
    //   422: aload 6
    //   424: invokevirtual 276	java/io/BufferedReader:close	()V
    //   427: aload_0
    //   428: getfield 161	com/amazon/insights/delivery/FileEventStore:eventsFile	Ljava/io/File;
    //   431: invokevirtual 216	java/io/File:delete	()Z
    //   434: ifeq +64 -> 498
    //   437: aload 14
    //   439: aload_0
    //   440: getfield 161	com/amazon/insights/delivery/FileEventStore:eventsFile	Ljava/io/File;
    //   443: invokevirtual 284	java/io/File:renameTo	(Ljava/io/File;)Z
    //   446: ifne +12 -> 458
    //   449: getstatic 48	com/amazon/insights/delivery/FileEventStore:logger	Lcom/amazon/insights/core/log/Logger;
    //   452: ldc_w 286
    //   455: invokevirtual 222	com/amazon/insights/core/log/Logger:e	(Ljava/lang/String;)V
    //   458: aload_0
    //   459: aload 13
    //   461: new 211	java/io/File
    //   464: dup
    //   465: aload 12
    //   467: ldc 22
    //   469: invokespecial 225	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   472: invokeinterface 229 2 0
    //   477: putfield 161	com/amazon/insights/delivery/FileEventStore:eventsFile	Ljava/io/File;
    //   480: goto -134 -> 346
    //   483: astore 6
    //   485: getstatic 48	com/amazon/insights/delivery/FileEventStore:logger	Lcom/amazon/insights/core/log/Logger;
    //   488: ldc -25
    //   490: aload 6
    //   492: invokevirtual 234	com/amazon/insights/core/log/Logger:e	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   495: goto -149 -> 346
    //   498: getstatic 48	com/amazon/insights/delivery/FileEventStore:logger	Lcom/amazon/insights/core/log/Logger;
    //   501: ldc_w 288
    //   504: invokevirtual 222	com/amazon/insights/core/log/Logger:e	(Ljava/lang/String;)V
    //   507: goto -161 -> 346
    //   510: astore 7
    //   512: aconst_null
    //   513: astore 6
    //   515: aload 11
    //   517: astore 8
    //   519: aload 8
    //   521: astore 10
    //   523: aload 6
    //   525: astore 9
    //   527: getstatic 48	com/amazon/insights/delivery/FileEventStore:logger	Lcom/amazon/insights/core/log/Logger;
    //   530: ldc_w 290
    //   533: aload 7
    //   535: invokevirtual 234	com/amazon/insights/core/log/Logger:e	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   538: aload 8
    //   540: ifnull +8 -> 548
    //   543: aload 8
    //   545: invokevirtual 275	java/io/PrintWriter:close	()V
    //   548: aload 6
    //   550: ifnull -204 -> 346
    //   553: aload 6
    //   555: invokevirtual 276	java/io/BufferedReader:close	()V
    //   558: goto -212 -> 346
    //   561: astore 6
    //   563: goto -217 -> 346
    //   566: astore 7
    //   568: aconst_null
    //   569: astore 6
    //   571: iconst_0
    //   572: istore_1
    //   573: aload 8
    //   575: ifnull +8 -> 583
    //   578: aload 8
    //   580: invokevirtual 275	java/io/PrintWriter:close	()V
    //   583: aload 6
    //   585: ifnull +8 -> 593
    //   588: aload 6
    //   590: invokevirtual 276	java/io/BufferedReader:close	()V
    //   593: iload_1
    //   594: ifne +56 -> 650
    //   597: aload_0
    //   598: getfield 161	com/amazon/insights/delivery/FileEventStore:eventsFile	Ljava/io/File;
    //   601: invokevirtual 216	java/io/File:delete	()Z
    //   604: ifeq +64 -> 668
    //   607: aload 14
    //   609: aload_0
    //   610: getfield 161	com/amazon/insights/delivery/FileEventStore:eventsFile	Ljava/io/File;
    //   613: invokevirtual 284	java/io/File:renameTo	(Ljava/io/File;)Z
    //   616: ifne +12 -> 628
    //   619: getstatic 48	com/amazon/insights/delivery/FileEventStore:logger	Lcom/amazon/insights/core/log/Logger;
    //   622: ldc_w 286
    //   625: invokevirtual 222	com/amazon/insights/core/log/Logger:e	(Ljava/lang/String;)V
    //   628: aload_0
    //   629: aload 13
    //   631: new 211	java/io/File
    //   634: dup
    //   635: aload 12
    //   637: ldc 22
    //   639: invokespecial 225	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   642: invokeinterface 229 2 0
    //   647: putfield 161	com/amazon/insights/delivery/FileEventStore:eventsFile	Ljava/io/File;
    //   650: aload 7
    //   652: athrow
    //   653: astore 6
    //   655: getstatic 48	com/amazon/insights/delivery/FileEventStore:logger	Lcom/amazon/insights/core/log/Logger;
    //   658: ldc -25
    //   660: aload 6
    //   662: invokevirtual 234	com/amazon/insights/core/log/Logger:e	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   665: goto -15 -> 650
    //   668: getstatic 48	com/amazon/insights/delivery/FileEventStore:logger	Lcom/amazon/insights/core/log/Logger;
    //   671: ldc_w 288
    //   674: invokevirtual 222	com/amazon/insights/core/log/Logger:e	(Ljava/lang/String;)V
    //   677: goto -27 -> 650
    //   680: astore 6
    //   682: goto -255 -> 427
    //   685: astore 6
    //   687: goto -341 -> 346
    //   690: astore 6
    //   692: goto -99 -> 593
    //   695: astore 7
    //   697: iconst_0
    //   698: istore_1
    //   699: aload 10
    //   701: astore 8
    //   703: aload 9
    //   705: astore 6
    //   707: goto -134 -> 573
    //   710: astore 7
    //   712: iconst_0
    //   713: istore_1
    //   714: goto -141 -> 573
    //   717: astore 8
    //   719: aload 7
    //   721: astore 9
    //   723: iconst_1
    //   724: istore_1
    //   725: aload 8
    //   727: astore 7
    //   729: aload 6
    //   731: astore 8
    //   733: aload 9
    //   735: astore 6
    //   737: goto -164 -> 573
    //   740: astore 7
    //   742: aload 11
    //   744: astore 8
    //   746: goto -227 -> 519
    //   749: astore 7
    //   751: goto -232 -> 519
    //   754: astore 8
    //   756: aconst_null
    //   757: astore 6
    //   759: goto -444 -> 315
    //   762: astore 8
    //   764: aconst_null
    //   765: astore 9
    //   767: aload 6
    //   769: astore 7
    //   771: aload 9
    //   773: astore 6
    //   775: goto -460 -> 315
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	778	0	this	FileEventStore
    //   0	778	1	paramInt	int
    //   260	38	2	i	int
    //   276	21	3	j	int
    //   70	10	4	l	long
    //   130	8	6	localIOException1	IOException
    //   156	212	6	localObject1	Object
    //   389	34	6	localIOException2	IOException
    //   483	8	6	localIOException3	IOException
    //   513	41	6	localObject2	Object
    //   561	1	6	localIOException4	IOException
    //   569	20	6	localObject3	Object
    //   653	8	6	localIOException5	IOException
    //   680	1	6	localIOException6	IOException
    //   685	1	6	localIOException7	IOException
    //   690	1	6	localIOException8	IOException
    //   705	69	6	localObject4	Object
    //   10	332	7	localObject5	Object
    //   510	24	7	localIOException9	IOException
    //   566	85	7	localObject6	Object
    //   695	1	7	localObject7	Object
    //   710	10	7	localObject8	Object
    //   727	1	7	localObject9	Object
    //   740	1	7	localIOException10	IOException
    //   749	1	7	localIOException11	IOException
    //   769	1	7	localObject10	Object
    //   4	698	8	localObject11	Object
    //   717	9	8	localObject12	Object
    //   731	14	8	localObject13	Object
    //   754	1	8	localFileNotFoundException1	FileNotFoundException
    //   762	1	8	localFileNotFoundException2	FileNotFoundException
    //   238	1	9	localObject14	Object
    //   301	11	9	localFileNotFoundException3	FileNotFoundException
    //   525	247	9	localObject15	Object
    //   7	693	10	localObject16	Object
    //   1	742	11	localObject17	Object
    //   37	599	12	localFile1	File
    //   26	604	13	localFileManager	FileManager
    //   191	417	14	localFile2	File
    // Exception table:
    //   from	to	target	type
    //   103	125	130	java/io/IOException
    //   261	268	301	java/io/FileNotFoundException
    //   284	296	301	java/io/FileNotFoundException
    //   145	182	389	java/io/IOException
    //   182	193	389	java/io/IOException
    //   458	480	483	java/io/IOException
    //   216	236	510	java/io/IOException
    //   553	558	561	java/io/IOException
    //   216	236	566	finally
    //   628	650	653	java/io/IOException
    //   422	427	680	java/io/IOException
    //   341	346	685	java/io/IOException
    //   588	593	690	java/io/IOException
    //   240	259	695	finally
    //   527	538	695	finally
    //   261	268	710	finally
    //   284	296	710	finally
    //   315	326	717	finally
    //   240	259	740	java/io/IOException
    //   261	268	749	java/io/IOException
    //   284	296	749	java/io/IOException
    //   216	236	754	java/io/FileNotFoundException
    //   240	259	762	java/io/FileNotFoundException
  }
  
  public static FileEventStore newInstance(InsightsContext paramInsightsContext)
  {
    return new FileEventStore(paramInsightsContext);
  }
  
  private void tryCloseWriter(Writer paramWriter)
    throws EventStoreException
  {
    if (paramWriter != null) {}
    try
    {
      paramWriter.close();
      return;
    }
    catch (IOException paramWriter)
    {
      logger.e("Unable to close writer for events file", paramWriter);
    }
  }
  
  private boolean tryCreateEventsFile()
  {
    if ((eventsFile != null) && (eventsFile.exists())) {
      return true;
    }
    try
    {
      if ((eventsFile != null) && (eventsFile.exists())) {
        return true;
      }
    }
    finally {}
    try
    {
      FileManager localFileManager = context.getSystem().getFileManager();
      eventsFile = localFileManager.createFile(new File(localFileManager.createDirectory("events"), "eventsFile"));
      return true;
    }
    catch (IOException localIOException)
    {
      logger.deve("Unable to open events file");
      logger.e("An error occurred while attempting to create/open the events file", localIOException);
    }
    return false;
  }
  
  private Writer tryInitializeWriter()
    throws EventStoreException
  {
    try
    {
      if (tryCreateEventsFile()) {
        return new EncryptedWriter(new OutputStreamWriter(context.getSystem().getFileManager().newOutputStream(eventsFile, true)), secretKey);
      }
      throw new EventStoreException("Unable to create eventsFile");
    }
    catch (EventStoreException localEventStoreException)
    {
      throw localEventStoreException;
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      logger.e("Events file not found to persist event to", localFileNotFoundException);
      throw new EventStoreException("Unable to open events file writer", localFileNotFoundException);
    }
    catch (Exception localException)
    {
      logger.e("Unexpected exception", localException);
      throw new EventStoreException("Unexpected error while creating eventsFile writer", localException);
    }
  }
  
  public EventStore.EventIterator iterator()
  {
    new EventStore.EventIterator()
    {
      boolean isEndOfFile = false;
      int linesRead = 0;
      String nextBuffer = null;
      EncryptedBufferedReader reader = null;
      
      private void resetReader()
      {
        tryCloseReader();
        linesRead = 0;
        nextBuffer = null;
      }
      
      private void tryCloseReader()
      {
        if (reader != null) {}
        try
        {
          reader.close();
          return;
        }
        catch (IOException localIOException)
        {
          FileEventStore.logger.e("Unable to close reader for events file", localIOException);
          return;
        }
        finally
        {
          reader = null;
        }
      }
      
      private boolean tryOpenReader()
      {
        if (reader != null) {
          return true;
        }
        if (!isEndOfFile) {
          try
          {
            InputStreamReader localInputStreamReader = new InputStreamReader(context.getSystem().getFileManager().newInputStream(eventsFile));
            if (localInputStreamReader != null)
            {
              reader = new EncryptedBufferedReader(new BufferedReader(localInputStreamReader), secretKey);
              return true;
            }
          }
          catch (FileNotFoundException localFileNotFoundException)
          {
            for (;;)
            {
              FileEventStore.logger.e("Could not open the events file", localFileNotFoundException);
              Object localObject = null;
            }
          }
        }
        return false;
      }
      
      /* Error */
      public boolean hasNext()
      {
        // Byte code:
        //   0: iconst_1
        //   1: istore_2
        //   2: aload_0
        //   3: getfield 25	com/amazon/insights/delivery/FileEventStore$1:this$0	Lcom/amazon/insights/delivery/FileEventStore;
        //   6: invokestatic 116	com/amazon/insights/delivery/FileEventStore:access$400	(Lcom/amazon/insights/delivery/FileEventStore;)Ljava/util/concurrent/locks/ReentrantLock;
        //   9: invokevirtual 121	java/util/concurrent/locks/ReentrantLock:lock	()V
        //   12: aload_0
        //   13: getfield 32	com/amazon/insights/delivery/FileEventStore$1:nextBuffer	Ljava/lang/String;
        //   16: astore 4
        //   18: aload 4
        //   20: ifnull +15 -> 35
        //   23: aload_0
        //   24: getfield 25	com/amazon/insights/delivery/FileEventStore$1:this$0	Lcom/amazon/insights/delivery/FileEventStore;
        //   27: invokestatic 116	com/amazon/insights/delivery/FileEventStore:access$400	(Lcom/amazon/insights/delivery/FileEventStore;)Ljava/util/concurrent/locks/ReentrantLock;
        //   30: invokevirtual 124	java/util/concurrent/locks/ReentrantLock:unlock	()V
        //   33: iload_2
        //   34: ireturn
        //   35: aload_0
        //   36: invokespecial 126	com/amazon/insights/delivery/FileEventStore$1:tryOpenReader	()Z
        //   39: istore_3
        //   40: iload_3
        //   41: ifne +15 -> 56
        //   44: aload_0
        //   45: getfield 25	com/amazon/insights/delivery/FileEventStore$1:this$0	Lcom/amazon/insights/delivery/FileEventStore;
        //   48: invokestatic 116	com/amazon/insights/delivery/FileEventStore:access$400	(Lcom/amazon/insights/delivery/FileEventStore;)Ljava/util/concurrent/locks/ReentrantLock;
        //   51: invokevirtual 124	java/util/concurrent/locks/ReentrantLock:unlock	()V
        //   54: iconst_0
        //   55: ireturn
        //   56: iconst_0
        //   57: istore_1
        //   58: iload_1
        //   59: ifne +48 -> 107
        //   62: aload_0
        //   63: aload_0
        //   64: getfield 34	com/amazon/insights/delivery/FileEventStore$1:reader	Lcom/amazon/insights/core/io/EncryptedBufferedReader;
        //   67: invokevirtual 130	com/amazon/insights/core/io/EncryptedBufferedReader:readLine	()Ljava/lang/String;
        //   70: putfield 32	com/amazon/insights/delivery/FileEventStore$1:nextBuffer	Ljava/lang/String;
        //   73: iconst_1
        //   74: istore_1
        //   75: goto -17 -> 58
        //   78: astore 4
        //   80: aload_0
        //   81: aload_0
        //   82: getfield 30	com/amazon/insights/delivery/FileEventStore$1:linesRead	I
        //   85: iconst_1
        //   86: iadd
        //   87: putfield 30	com/amazon/insights/delivery/FileEventStore$1:linesRead	I
        //   90: iconst_0
        //   91: istore_1
        //   92: goto -34 -> 58
        //   95: astore 4
        //   97: aload_0
        //   98: aconst_null
        //   99: putfield 32	com/amazon/insights/delivery/FileEventStore$1:nextBuffer	Ljava/lang/String;
        //   102: iconst_1
        //   103: istore_1
        //   104: goto -46 -> 58
        //   107: aload_0
        //   108: getfield 32	com/amazon/insights/delivery/FileEventStore$1:nextBuffer	Ljava/lang/String;
        //   111: ifnonnull -88 -> 23
        //   114: aload_0
        //   115: iconst_1
        //   116: putfield 36	com/amazon/insights/delivery/FileEventStore$1:isEndOfFile	Z
        //   119: aload_0
        //   120: invokespecial 41	com/amazon/insights/delivery/FileEventStore$1:tryCloseReader	()V
        //   123: iconst_0
        //   124: istore_2
        //   125: goto -102 -> 23
        //   128: astore 4
        //   130: aload_0
        //   131: getfield 25	com/amazon/insights/delivery/FileEventStore$1:this$0	Lcom/amazon/insights/delivery/FileEventStore;
        //   134: invokestatic 116	com/amazon/insights/delivery/FileEventStore:access$400	(Lcom/amazon/insights/delivery/FileEventStore;)Ljava/util/concurrent/locks/ReentrantLock;
        //   137: invokevirtual 124	java/util/concurrent/locks/ReentrantLock:unlock	()V
        //   140: aload 4
        //   142: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	143	0	this	1
        //   57	47	1	i	int
        //   1	124	2	bool1	boolean
        //   39	2	3	bool2	boolean
        //   16	3	4	str	String
        //   78	1	4	localDecryptionException	com.amazon.insights.core.io.DecryptionException
        //   95	1	4	localIOException	IOException
        //   128	13	4	localObject	Object
        // Exception table:
        //   from	to	target	type
        //   62	73	78	com/amazon/insights/core/io/DecryptionException
        //   62	73	95	java/io/IOException
        //   12	18	128	finally
        //   35	40	128	finally
        //   62	73	128	finally
        //   80	90	128	finally
        //   97	102	128	finally
        //   107	123	128	finally
      }
      
      /* Error */
      public String next()
      {
        // Byte code:
        //   0: aload_0
        //   1: getfield 25	com/amazon/insights/delivery/FileEventStore$1:this$0	Lcom/amazon/insights/delivery/FileEventStore;
        //   4: invokestatic 116	com/amazon/insights/delivery/FileEventStore:access$400	(Lcom/amazon/insights/delivery/FileEventStore;)Ljava/util/concurrent/locks/ReentrantLock;
        //   7: invokevirtual 121	java/util/concurrent/locks/ReentrantLock:lock	()V
        //   10: aload_0
        //   11: getfield 32	com/amazon/insights/delivery/FileEventStore$1:nextBuffer	Ljava/lang/String;
        //   14: ifnull +35 -> 49
        //   17: aload_0
        //   18: getfield 32	com/amazon/insights/delivery/FileEventStore$1:nextBuffer	Ljava/lang/String;
        //   21: astore_3
        //   22: aload_0
        //   23: aload_0
        //   24: getfield 30	com/amazon/insights/delivery/FileEventStore$1:linesRead	I
        //   27: iconst_1
        //   28: iadd
        //   29: putfield 30	com/amazon/insights/delivery/FileEventStore$1:linesRead	I
        //   32: aload_0
        //   33: aconst_null
        //   34: putfield 32	com/amazon/insights/delivery/FileEventStore$1:nextBuffer	Ljava/lang/String;
        //   37: aload_0
        //   38: getfield 25	com/amazon/insights/delivery/FileEventStore$1:this$0	Lcom/amazon/insights/delivery/FileEventStore;
        //   41: invokestatic 116	com/amazon/insights/delivery/FileEventStore:access$400	(Lcom/amazon/insights/delivery/FileEventStore;)Ljava/util/concurrent/locks/ReentrantLock;
        //   44: invokevirtual 124	java/util/concurrent/locks/ReentrantLock:unlock	()V
        //   47: aload_3
        //   48: areturn
        //   49: aload_0
        //   50: invokespecial 126	com/amazon/insights/delivery/FileEventStore$1:tryOpenReader	()Z
        //   53: istore_2
        //   54: iload_2
        //   55: ifne +15 -> 70
        //   58: aload_0
        //   59: getfield 25	com/amazon/insights/delivery/FileEventStore$1:this$0	Lcom/amazon/insights/delivery/FileEventStore;
        //   62: invokestatic 116	com/amazon/insights/delivery/FileEventStore:access$400	(Lcom/amazon/insights/delivery/FileEventStore;)Ljava/util/concurrent/locks/ReentrantLock;
        //   65: invokevirtual 124	java/util/concurrent/locks/ReentrantLock:unlock	()V
        //   68: aconst_null
        //   69: areturn
        //   70: iconst_0
        //   71: istore_1
        //   72: aconst_null
        //   73: astore_3
        //   74: iload_1
        //   75: ifne +37 -> 112
        //   78: aload_0
        //   79: getfield 34	com/amazon/insights/delivery/FileEventStore$1:reader	Lcom/amazon/insights/core/io/EncryptedBufferedReader;
        //   82: invokevirtual 130	com/amazon/insights/core/io/EncryptedBufferedReader:readLine	()Ljava/lang/String;
        //   85: astore 4
        //   87: aload 4
        //   89: astore_3
        //   90: iconst_1
        //   91: istore_1
        //   92: goto -18 -> 74
        //   95: astore 4
        //   97: aload_0
        //   98: aload_0
        //   99: getfield 30	com/amazon/insights/delivery/FileEventStore$1:linesRead	I
        //   102: iconst_1
        //   103: iadd
        //   104: putfield 30	com/amazon/insights/delivery/FileEventStore$1:linesRead	I
        //   107: iconst_0
        //   108: istore_1
        //   109: goto -35 -> 74
        //   112: aload_3
        //   113: ifnull +29 -> 142
        //   116: aload_0
        //   117: aload_0
        //   118: getfield 30	com/amazon/insights/delivery/FileEventStore$1:linesRead	I
        //   121: iconst_1
        //   122: iadd
        //   123: putfield 30	com/amazon/insights/delivery/FileEventStore$1:linesRead	I
        //   126: goto -89 -> 37
        //   129: astore_3
        //   130: aload_0
        //   131: getfield 25	com/amazon/insights/delivery/FileEventStore$1:this$0	Lcom/amazon/insights/delivery/FileEventStore;
        //   134: invokestatic 116	com/amazon/insights/delivery/FileEventStore:access$400	(Lcom/amazon/insights/delivery/FileEventStore;)Ljava/util/concurrent/locks/ReentrantLock;
        //   137: invokevirtual 124	java/util/concurrent/locks/ReentrantLock:unlock	()V
        //   140: aload_3
        //   141: athrow
        //   142: aload_0
        //   143: iconst_1
        //   144: putfield 36	com/amazon/insights/delivery/FileEventStore$1:isEndOfFile	Z
        //   147: aload_0
        //   148: invokespecial 41	com/amazon/insights/delivery/FileEventStore$1:tryCloseReader	()V
        //   151: goto -114 -> 37
        //   154: astore_3
        //   155: iconst_1
        //   156: istore_1
        //   157: aconst_null
        //   158: astore_3
        //   159: goto -85 -> 74
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	162	0	this	1
        //   71	86	1	i	int
        //   53	2	2	bool	boolean
        //   21	92	3	localObject1	Object
        //   129	12	3	localObject2	Object
        //   154	1	3	localIOException	IOException
        //   158	1	3	localObject3	Object
        //   85	3	4	str	String
        //   95	1	4	localDecryptionException	com.amazon.insights.core.io.DecryptionException
        // Exception table:
        //   from	to	target	type
        //   78	87	95	com/amazon/insights/core/io/DecryptionException
        //   10	37	129	finally
        //   49	54	129	finally
        //   78	87	129	finally
        //   97	107	129	finally
        //   116	126	129	finally
        //   142	151	129	finally
        //   78	87	154	java/io/IOException
      }
      
      public String peek()
      {
        accessLock.lock();
        try
        {
          hasNext();
          String str = nextBuffer;
          return str;
        }
        finally
        {
          accessLock.unlock();
        }
      }
      
      public void remove()
      {
        throw new UnsupportedOperationException("The remove() operation is not supported for this iterator");
      }
      
      public void removeReadEvents()
      {
        accessLock.lock();
        try
        {
          FileEventStore.this.deleteReadEvents(linesRead);
          resetReader();
          return;
        }
        finally
        {
          accessLock.unlock();
        }
      }
    };
  }
  
  /* Error */
  public boolean put(String paramString)
    throws EventStoreException
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_3
    //   2: aconst_null
    //   3: astore 7
    //   5: aconst_null
    //   6: astore 6
    //   8: aload_0
    //   9: getfield 64	com/amazon/insights/delivery/FileEventStore:accessLock	Ljava/util/concurrent/locks/ReentrantLock;
    //   12: invokevirtual 352	java/util/concurrent/locks/ReentrantLock:lock	()V
    //   15: aload_0
    //   16: invokespecial 354	com/amazon/insights/delivery/FileEventStore:tryInitializeWriter	()Ljava/io/Writer;
    //   19: astore 8
    //   21: iload_3
    //   22: istore_2
    //   23: aload 8
    //   25: ifnull +94 -> 119
    //   28: aload 8
    //   30: astore 6
    //   32: aload 8
    //   34: astore 7
    //   36: aload_0
    //   37: getfield 66	com/amazon/insights/delivery/FileEventStore:context	Lcom/amazon/insights/core/InsightsContext;
    //   40: invokeinterface 111 1 0
    //   45: ldc 25
    //   47: ldc2_w 28
    //   50: invokestatic 201	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   53: invokeinterface 205 3 0
    //   58: invokevirtual 209	java/lang/Long:longValue	()J
    //   61: lstore 4
    //   63: aload 8
    //   65: astore 6
    //   67: aload 8
    //   69: astore 7
    //   71: aload_0
    //   72: getfield 161	com/amazon/insights/delivery/FileEventStore:eventsFile	Ljava/io/File;
    //   75: invokevirtual 213	java/io/File:length	()J
    //   78: aload_1
    //   79: invokevirtual 100	java/lang/String:length	()I
    //   82: i2l
    //   83: ladd
    //   84: lload 4
    //   86: lcmp
    //   87: ifgt +47 -> 134
    //   90: aload 8
    //   92: astore 6
    //   94: aload 8
    //   96: astore 7
    //   98: aload 8
    //   100: aload_1
    //   101: invokevirtual 357	java/io/Writer:write	(Ljava/lang/String;)V
    //   104: aload 8
    //   106: astore 6
    //   108: aload 8
    //   110: astore 7
    //   112: aload 8
    //   114: invokevirtual 358	java/io/Writer:flush	()V
    //   117: iconst_1
    //   118: istore_2
    //   119: aload_0
    //   120: getfield 64	com/amazon/insights/delivery/FileEventStore:accessLock	Ljava/util/concurrent/locks/ReentrantLock;
    //   123: invokevirtual 361	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   126: aload_0
    //   127: aload 8
    //   129: invokespecial 363	com/amazon/insights/delivery/FileEventStore:tryCloseWriter	(Ljava/io/Writer;)V
    //   132: iload_2
    //   133: ireturn
    //   134: aload 8
    //   136: astore 6
    //   138: aload 8
    //   140: astore 7
    //   142: getstatic 48	com/amazon/insights/delivery/FileEventStore:logger	Lcom/amazon/insights/core/log/Logger;
    //   145: new 106	java/lang/StringBuilder
    //   148: dup
    //   149: invokespecial 107	java/lang/StringBuilder:<init>	()V
    //   152: ldc_w 365
    //   155: invokevirtual 123	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   158: lload 4
    //   160: invokevirtual 368	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   163: ldc_w 370
    //   166: invokevirtual 123	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   169: invokevirtual 126	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   172: invokevirtual 222	com/amazon/insights/core/log/Logger:e	(Ljava/lang/String;)V
    //   175: iload_3
    //   176: istore_2
    //   177: goto -58 -> 119
    //   180: astore_1
    //   181: aload 6
    //   183: astore 7
    //   185: getstatic 48	com/amazon/insights/delivery/FileEventStore:logger	Lcom/amazon/insights/core/log/Logger;
    //   188: ldc_w 372
    //   191: aload_1
    //   192: invokevirtual 234	com/amazon/insights/core/log/Logger:e	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   195: aload_0
    //   196: getfield 64	com/amazon/insights/delivery/FileEventStore:accessLock	Ljava/util/concurrent/locks/ReentrantLock;
    //   199: invokevirtual 361	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   202: aload_0
    //   203: aload 6
    //   205: invokespecial 363	com/amazon/insights/delivery/FileEventStore:tryCloseWriter	(Ljava/io/Writer;)V
    //   208: iconst_0
    //   209: ireturn
    //   210: astore_1
    //   211: aload_0
    //   212: getfield 64	com/amazon/insights/delivery/FileEventStore:accessLock	Ljava/util/concurrent/locks/ReentrantLock;
    //   215: invokevirtual 361	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   218: aload_0
    //   219: aload 7
    //   221: invokespecial 363	com/amazon/insights/delivery/FileEventStore:tryCloseWriter	(Ljava/io/Writer;)V
    //   224: aload_1
    //   225: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	226	0	this	FileEventStore
    //   0	226	1	paramString	String
    //   22	155	2	bool1	boolean
    //   1	175	3	bool2	boolean
    //   61	98	4	l	long
    //   6	198	6	localObject1	Object
    //   3	217	7	localObject2	Object
    //   19	120	8	localWriter	Writer
    // Exception table:
    //   from	to	target	type
    //   15	21	180	java/io/IOException
    //   36	63	180	java/io/IOException
    //   71	90	180	java/io/IOException
    //   98	104	180	java/io/IOException
    //   112	117	180	java/io/IOException
    //   142	175	180	java/io/IOException
    //   15	21	210	finally
    //   36	63	210	finally
    //   71	90	210	finally
    //   98	104	210	finally
    //   112	117	210	finally
    //   142	175	210	finally
    //   185	195	210	finally
  }
}

/* Location:
 * Qualified Name:     com.amazon.insights.delivery.FileEventStore
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */