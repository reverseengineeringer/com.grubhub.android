package com.amazon.insights.abtest.cache;

import com.amazon.insights.abtest.DefaultVariation;
import com.amazon.insights.core.InsightsContext;
import com.amazon.insights.core.log.Logger;
import com.amazon.insights.core.system.FileManager;
import com.amazon.insights.core.system.System;
import java.io.File;
import java.io.IOException;
import java.io.Writer;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONException;
import org.json.JSONObject;

public class FileVariationCache
  implements VariationCache
{
  public static final String VARIATIONS_DIRECTORY = "variations";
  private static Logger logger = Logger.getLogger(FileVariationCache.class);
  private final FileManager fileManager;
  private final Map<String, File> variationFiles = new ConcurrentHashMap();
  private final File variationsDirectory;
  
  public FileVariationCache(InsightsContext paramInsightsContext)
  {
    fileManager = paramInsightsContext.getSystem().getFileManager();
    variationsDirectory = fileManager.createDirectory("variations");
    loadVariationFileInfo();
  }
  
  private void loadVariationFileInfo()
  {
    if ((variationsDirectory == null) || (!variationsDirectory.exists())) {}
    for (;;)
    {
      return;
      Iterator localIterator = fileManager.listFilesInDirectory(variationsDirectory).iterator();
      while (localIterator.hasNext())
      {
        File localFile = (File)localIterator.next();
        variationFiles.put(localFile.getName(), localFile);
      }
    }
  }
  
  /* Error */
  private DefaultVariation loadVariationFromFile(File paramFile)
  {
    // Byte code:
    //   0: aload_1
    //   1: ifnonnull +5 -> 6
    //   4: aconst_null
    //   5: areturn
    //   6: new 109	java/io/BufferedReader
    //   9: dup
    //   10: new 111	java/io/InputStreamReader
    //   13: dup
    //   14: new 113	java/util/zip/GZIPInputStream
    //   17: dup
    //   18: aload_0
    //   19: getfield 53	com/amazon/insights/abtest/cache/FileVariationCache:fileManager	Lcom/amazon/insights/core/system/FileManager;
    //   22: aload_1
    //   23: invokeinterface 117 2 0
    //   28: invokespecial 120	java/util/zip/GZIPInputStream:<init>	(Ljava/io/InputStream;)V
    //   31: invokespecial 121	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   34: invokespecial 124	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   37: astore_1
    //   38: new 126	java/lang/StringBuilder
    //   41: dup
    //   42: invokespecial 127	java/lang/StringBuilder:<init>	()V
    //   45: astore_3
    //   46: aload_1
    //   47: invokevirtual 130	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   50: astore 4
    //   52: aload 4
    //   54: ifnull +32 -> 86
    //   57: aload_3
    //   58: aload 4
    //   60: invokevirtual 134	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   63: pop
    //   64: goto -18 -> 46
    //   67: astore_3
    //   68: aload_1
    //   69: invokevirtual 137	java/io/BufferedReader:close	()V
    //   72: aload_3
    //   73: athrow
    //   74: astore_1
    //   75: getstatic 29	com/amazon/insights/abtest/cache/FileVariationCache:logger	Lcom/amazon/insights/core/log/Logger;
    //   78: ldc -117
    //   80: aload_1
    //   81: invokevirtual 143	com/amazon/insights/core/log/Logger:e	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   84: aconst_null
    //   85: areturn
    //   86: new 145	org/json/JSONObject
    //   89: dup
    //   90: aload_3
    //   91: invokevirtual 148	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   94: invokespecial 151	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   97: astore_3
    //   98: aload_1
    //   99: invokevirtual 137	java/io/BufferedReader:close	()V
    //   102: new 153	com/amazon/insights/abtest/DefaultVariation$Builder
    //   105: dup
    //   106: invokespecial 154	com/amazon/insights/abtest/DefaultVariation$Builder:<init>	()V
    //   109: astore_1
    //   110: aload_1
    //   111: aload_3
    //   112: ldc -100
    //   114: invokevirtual 160	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   117: invokevirtual 164	com/amazon/insights/abtest/DefaultVariation$Builder:setApplicationKey	(Ljava/lang/String;)Lcom/amazon/insights/abtest/DefaultVariation$Builder;
    //   120: pop
    //   121: aload_1
    //   122: aload_3
    //   123: ldc -90
    //   125: invokevirtual 160	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   128: invokestatic 172	com/amazon/insights/core/idresolver/Id:valueOf	(Ljava/lang/String;)Lcom/amazon/insights/core/idresolver/Id;
    //   131: invokevirtual 176	com/amazon/insights/abtest/DefaultVariation$Builder:setUniqueId	(Lcom/amazon/insights/core/idresolver/Id;)Lcom/amazon/insights/abtest/DefaultVariation$Builder;
    //   134: pop
    //   135: aload_1
    //   136: getstatic 182	com/amazon/insights/abtest/DefaultVariation$AllocationSource:CACHE	Lcom/amazon/insights/abtest/DefaultVariation$AllocationSource;
    //   139: invokevirtual 186	com/amazon/insights/abtest/DefaultVariation$Builder:setAllocationSource	(Lcom/amazon/insights/abtest/DefaultVariation$AllocationSource;)V
    //   142: aload_1
    //   143: new 188	java/util/Date
    //   146: dup
    //   147: aload_3
    //   148: ldc -66
    //   150: invokevirtual 194	org/json/JSONObject:getLong	(Ljava/lang/String;)J
    //   153: invokespecial 197	java/util/Date:<init>	(J)V
    //   156: invokevirtual 201	com/amazon/insights/abtest/DefaultVariation$Builder:setExpirationDate	(Ljava/util/Date;)Lcom/amazon/insights/abtest/DefaultVariation$Builder;
    //   159: pop
    //   160: aload_1
    //   161: aload_3
    //   162: ldc -53
    //   164: invokevirtual 160	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   167: invokevirtual 206	com/amazon/insights/abtest/DefaultVariation$Builder:setProjectName	(Ljava/lang/String;)Lcom/amazon/insights/abtest/DefaultVariation$Builder;
    //   170: pop
    //   171: aload_1
    //   172: aload_3
    //   173: ldc -48
    //   175: invokevirtual 160	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   178: invokevirtual 211	com/amazon/insights/abtest/DefaultVariation$Builder:setVariationName	(Ljava/lang/String;)Lcom/amazon/insights/abtest/DefaultVariation$Builder;
    //   181: pop
    //   182: aload_1
    //   183: aload_3
    //   184: ldc -43
    //   186: invokevirtual 194	org/json/JSONObject:getLong	(Ljava/lang/String;)J
    //   189: invokevirtual 217	com/amazon/insights/abtest/DefaultVariation$Builder:setVariationId	(J)Lcom/amazon/insights/abtest/DefaultVariation$Builder;
    //   192: pop
    //   193: aload_1
    //   194: aload_3
    //   195: ldc -37
    //   197: invokevirtual 194	org/json/JSONObject:getLong	(Ljava/lang/String;)J
    //   200: invokevirtual 222	com/amazon/insights/abtest/DefaultVariation$Builder:setExperimentId	(J)Lcom/amazon/insights/abtest/DefaultVariation$Builder;
    //   203: pop
    //   204: aload_3
    //   205: ldc -32
    //   207: invokevirtual 228	org/json/JSONObject:getJSONArray	(Ljava/lang/String;)Lorg/json/JSONArray;
    //   210: astore_3
    //   211: aload_3
    //   212: ifnull +66 -> 278
    //   215: new 230	java/util/HashMap
    //   218: dup
    //   219: invokespecial 231	java/util/HashMap:<init>	()V
    //   222: astore 4
    //   224: iconst_0
    //   225: istore_2
    //   226: iload_2
    //   227: aload_3
    //   228: invokevirtual 237	org/json/JSONArray:length	()I
    //   231: if_icmpge +40 -> 271
    //   234: aload_3
    //   235: iload_2
    //   236: invokevirtual 241	org/json/JSONArray:getJSONObject	(I)Lorg/json/JSONObject;
    //   239: astore 5
    //   241: aload 5
    //   243: ifnull +67 -> 310
    //   246: aload 4
    //   248: aload 5
    //   250: ldc -13
    //   252: invokevirtual 160	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   255: aload 5
    //   257: ldc -11
    //   259: invokevirtual 160	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   262: invokeinterface 99 3 0
    //   267: pop
    //   268: goto +42 -> 310
    //   271: aload_1
    //   272: aload 4
    //   274: invokevirtual 249	com/amazon/insights/abtest/DefaultVariation$Builder:setVariables	(Ljava/util/Map;)Lcom/amazon/insights/abtest/DefaultVariation$Builder;
    //   277: pop
    //   278: aload_1
    //   279: invokevirtual 253	com/amazon/insights/abtest/DefaultVariation$Builder:build	()Lcom/amazon/insights/abtest/DefaultVariation;
    //   282: astore_1
    //   283: aload_1
    //   284: areturn
    //   285: astore_1
    //   286: getstatic 29	com/amazon/insights/abtest/cache/FileVariationCache:logger	Lcom/amazon/insights/core/log/Logger;
    //   289: ldc -1
    //   291: aload_1
    //   292: invokevirtual 143	com/amazon/insights/core/log/Logger:e	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   295: aconst_null
    //   296: areturn
    //   297: astore_1
    //   298: getstatic 29	com/amazon/insights/abtest/cache/FileVariationCache:logger	Lcom/amazon/insights/core/log/Logger;
    //   301: ldc_w 257
    //   304: aload_1
    //   305: invokevirtual 143	com/amazon/insights/core/log/Logger:e	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   308: aconst_null
    //   309: areturn
    //   310: iload_2
    //   311: iconst_1
    //   312: iadd
    //   313: istore_2
    //   314: goto -88 -> 226
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	317	0	this	FileVariationCache
    //   0	317	1	paramFile	File
    //   225	89	2	i	int
    //   45	13	3	localStringBuilder	StringBuilder
    //   67	24	3	localObject1	Object
    //   97	138	3	localObject2	Object
    //   50	223	4	localObject3	Object
    //   239	17	5	localJSONObject	JSONObject
    // Exception table:
    //   from	to	target	type
    //   38	46	67	finally
    //   46	52	67	finally
    //   57	64	67	finally
    //   86	98	67	finally
    //   6	38	74	java/io/FileNotFoundException
    //   68	74	74	java/io/FileNotFoundException
    //   98	211	74	java/io/FileNotFoundException
    //   215	224	74	java/io/FileNotFoundException
    //   226	241	74	java/io/FileNotFoundException
    //   246	268	74	java/io/FileNotFoundException
    //   271	278	74	java/io/FileNotFoundException
    //   278	283	74	java/io/FileNotFoundException
    //   6	38	285	java/io/IOException
    //   68	74	285	java/io/IOException
    //   98	211	285	java/io/IOException
    //   215	224	285	java/io/IOException
    //   226	241	285	java/io/IOException
    //   246	268	285	java/io/IOException
    //   271	278	285	java/io/IOException
    //   278	283	285	java/io/IOException
    //   6	38	297	org/json/JSONException
    //   68	74	297	org/json/JSONException
    //   98	211	297	org/json/JSONException
    //   215	224	297	org/json/JSONException
    //   226	241	297	org/json/JSONException
    //   246	268	297	org/json/JSONException
    //   271	278	297	org/json/JSONException
    //   278	283	297	org/json/JSONException
  }
  
  private boolean writeVariationToFile(DefaultVariation paramDefaultVariation, Writer paramWriter)
  {
    try
    {
      paramDefaultVariation = paramDefaultVariation.toJSONObject().toString(4);
      if (paramDefaultVariation != null) {}
      try
      {
        paramWriter.write(paramDefaultVariation);
        paramWriter.flush();
        return true;
      }
      catch (IOException paramDefaultVariation)
      {
        return false;
      }
      return false;
    }
    catch (JSONException paramDefaultVariation) {}
  }
  
  public boolean contains(DefaultVariation paramDefaultVariation)
  {
    try
    {
      boolean bool = variationFiles.containsKey(paramDefaultVariation.getProjectName());
      return bool;
    }
    finally
    {
      paramDefaultVariation = finally;
      throw paramDefaultVariation;
    }
  }
  
  public Map<String, DefaultVariation> get(Set<String> paramSet)
  {
    ConcurrentHashMap localConcurrentHashMap;
    for (;;)
    {
      String str;
      Object localObject;
      try
      {
        localConcurrentHashMap = new ConcurrentHashMap();
        paramSet = paramSet.iterator();
        if (!paramSet.hasNext()) {
          break;
        }
        str = (String)paramSet.next();
        if (!variationFiles.containsKey(str)) {
          continue;
        }
        localObject = (File)variationFiles.get(str);
        if (!((File)localObject).exists())
        {
          variationFiles.remove(str);
          continue;
        }
        localObject = loadVariationFromFile((File)localObject);
      }
      finally {}
      if (localObject != null) {
        localConcurrentHashMap.put(str, localObject);
      }
    }
    return localConcurrentHashMap;
  }
  
  public Map<String, DefaultVariation> getAll()
  {
    for (;;)
    {
      Map.Entry localEntry;
      try
      {
        ConcurrentHashMap localConcurrentHashMap = new ConcurrentHashMap();
        Iterator localIterator = variationFiles.entrySet().iterator();
        if (!localIterator.hasNext()) {
          break;
        }
        localEntry = (Map.Entry)localIterator.next();
        if (!((File)localEntry.getValue()).exists())
        {
          variationFiles.remove(localEntry.getKey());
          continue;
        }
        localDefaultVariation = loadVariationFromFile((File)localEntry.getValue());
      }
      finally {}
      DefaultVariation localDefaultVariation;
      if (localDefaultVariation != null) {
        localMap.put(localEntry.getKey(), localDefaultVariation);
      }
    }
    return localMap;
  }
  
  /* Error */
  public boolean put(DefaultVariation paramDefaultVariation)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: invokestatic 319	com/amazon/insights/core/util/Preconditions:checkNotNull	(Ljava/lang/Object;)Ljava/lang/Object;
    //   6: pop
    //   7: aload_1
    //   8: invokevirtual 322	com/amazon/insights/abtest/DefaultVariation:isDefault	()Z
    //   11: ifne +123 -> 134
    //   14: iconst_1
    //   15: istore_2
    //   16: iload_2
    //   17: invokestatic 326	com/amazon/insights/core/util/Preconditions:checkArgument	(Z)V
    //   20: aload_0
    //   21: getfield 39	com/amazon/insights/abtest/cache/FileVariationCache:variationFiles	Ljava/util/Map;
    //   24: aload_1
    //   25: invokevirtual 281	com/amazon/insights/abtest/DefaultVariation:getProjectName	()Ljava/lang/String;
    //   28: invokeinterface 285 2 0
    //   33: ifeq +106 -> 139
    //   36: aload_0
    //   37: getfield 39	com/amazon/insights/abtest/cache/FileVariationCache:variationFiles	Ljava/util/Map;
    //   40: aload_1
    //   41: invokevirtual 281	com/amazon/insights/abtest/DefaultVariation:getProjectName	()Ljava/lang/String;
    //   44: invokeinterface 292 2 0
    //   49: checkcast 66	java/io/File
    //   52: astore_3
    //   53: aload_3
    //   54: ifnull +255 -> 309
    //   57: aload_0
    //   58: getfield 53	com/amazon/insights/abtest/cache/FileVariationCache:fileManager	Lcom/amazon/insights/core/system/FileManager;
    //   61: aload_3
    //   62: iconst_0
    //   63: invokeinterface 330 3 0
    //   68: astore 4
    //   70: aload 4
    //   72: ifnull +150 -> 222
    //   75: new 332	java/io/OutputStreamWriter
    //   78: dup
    //   79: new 334	java/util/zip/GZIPOutputStream
    //   82: dup
    //   83: aload 4
    //   85: invokespecial 337	java/util/zip/GZIPOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   88: invokespecial 338	java/io/OutputStreamWriter:<init>	(Ljava/io/OutputStream;)V
    //   91: astore 4
    //   93: aload_0
    //   94: aload_1
    //   95: aload 4
    //   97: invokespecial 340	com/amazon/insights/abtest/cache/FileVariationCache:writeVariationToFile	(Lcom/amazon/insights/abtest/DefaultVariation;Ljava/io/Writer;)Z
    //   100: ifeq +112 -> 212
    //   103: aload_0
    //   104: getfield 39	com/amazon/insights/abtest/cache/FileVariationCache:variationFiles	Ljava/util/Map;
    //   107: aload_1
    //   108: invokevirtual 281	com/amazon/insights/abtest/DefaultVariation:getProjectName	()Ljava/lang/String;
    //   111: aload_3
    //   112: invokeinterface 99 3 0
    //   117: pop
    //   118: aload 4
    //   120: ifnull +8 -> 128
    //   123: aload 4
    //   125: invokevirtual 341	java/io/OutputStreamWriter:close	()V
    //   128: iconst_1
    //   129: istore_2
    //   130: aload_0
    //   131: monitorexit
    //   132: iload_2
    //   133: ireturn
    //   134: iconst_0
    //   135: istore_2
    //   136: goto -120 -> 16
    //   139: aload_1
    //   140: invokevirtual 281	com/amazon/insights/abtest/DefaultVariation:getProjectName	()Ljava/lang/String;
    //   143: astore_3
    //   144: new 66	java/io/File
    //   147: dup
    //   148: aload_0
    //   149: getfield 61	com/amazon/insights/abtest/cache/FileVariationCache:variationsDirectory	Ljava/io/File;
    //   152: aload_3
    //   153: invokespecial 344	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   156: astore_3
    //   157: aload_0
    //   158: getfield 53	com/amazon/insights/abtest/cache/FileVariationCache:fileManager	Lcom/amazon/insights/core/system/FileManager;
    //   161: aload_3
    //   162: invokeinterface 348 2 0
    //   167: astore_3
    //   168: goto -115 -> 53
    //   171: astore_1
    //   172: getstatic 29	com/amazon/insights/abtest/cache/FileVariationCache:logger	Lcom/amazon/insights/core/log/Logger;
    //   175: ldc_w 350
    //   178: invokevirtual 353	com/amazon/insights/core/log/Logger:deve	(Ljava/lang/String;)V
    //   181: getstatic 29	com/amazon/insights/abtest/cache/FileVariationCache:logger	Lcom/amazon/insights/core/log/Logger;
    //   184: ldc_w 355
    //   187: aload_1
    //   188: invokevirtual 143	com/amazon/insights/core/log/Logger:e	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   191: iconst_0
    //   192: istore_2
    //   193: goto -63 -> 130
    //   196: astore_1
    //   197: getstatic 29	com/amazon/insights/abtest/cache/FileVariationCache:logger	Lcom/amazon/insights/core/log/Logger;
    //   200: ldc_w 357
    //   203: aload_1
    //   204: invokevirtual 143	com/amazon/insights/core/log/Logger:e	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   207: iconst_0
    //   208: istore_2
    //   209: goto -79 -> 130
    //   212: aload 4
    //   214: ifnull +8 -> 222
    //   217: aload 4
    //   219: invokevirtual 341	java/io/OutputStreamWriter:close	()V
    //   222: iconst_0
    //   223: istore_2
    //   224: goto -94 -> 130
    //   227: astore_3
    //   228: aconst_null
    //   229: astore_1
    //   230: getstatic 29	com/amazon/insights/abtest/cache/FileVariationCache:logger	Lcom/amazon/insights/core/log/Logger;
    //   233: ldc_w 359
    //   236: aload_3
    //   237: invokevirtual 143	com/amazon/insights/core/log/Logger:e	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   240: aload_1
    //   241: ifnull -19 -> 222
    //   244: aload_1
    //   245: invokevirtual 341	java/io/OutputStreamWriter:close	()V
    //   248: goto -26 -> 222
    //   251: astore_1
    //   252: goto -30 -> 222
    //   255: astore_1
    //   256: aconst_null
    //   257: astore_3
    //   258: aload_3
    //   259: ifnull +7 -> 266
    //   262: aload_3
    //   263: invokevirtual 341	java/io/OutputStreamWriter:close	()V
    //   266: aload_1
    //   267: athrow
    //   268: astore_1
    //   269: aload_0
    //   270: monitorexit
    //   271: aload_1
    //   272: athrow
    //   273: astore_1
    //   274: goto -146 -> 128
    //   277: astore_1
    //   278: goto -56 -> 222
    //   281: astore_3
    //   282: goto -16 -> 266
    //   285: astore_1
    //   286: aload 4
    //   288: astore_3
    //   289: goto -31 -> 258
    //   292: astore 4
    //   294: aload_1
    //   295: astore_3
    //   296: aload 4
    //   298: astore_1
    //   299: goto -41 -> 258
    //   302: astore_3
    //   303: aload 4
    //   305: astore_1
    //   306: goto -76 -> 230
    //   309: aconst_null
    //   310: astore 4
    //   312: goto -242 -> 70
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	315	0	this	FileVariationCache
    //   0	315	1	paramDefaultVariation	DefaultVariation
    //   15	209	2	bool	boolean
    //   52	116	3	localObject1	Object
    //   227	10	3	localIOException1	IOException
    //   257	6	3	localObject2	Object
    //   281	1	3	localIOException2	IOException
    //   288	8	3	localObject3	Object
    //   302	1	3	localIOException3	IOException
    //   68	219	4	localObject4	Object
    //   292	12	4	localObject5	Object
    //   310	1	4	localObject6	Object
    // Exception table:
    //   from	to	target	type
    //   139	168	171	java/io/IOException
    //   57	70	196	java/io/FileNotFoundException
    //   75	93	227	java/io/IOException
    //   244	248	251	java/io/IOException
    //   75	93	255	finally
    //   2	14	268	finally
    //   16	53	268	finally
    //   57	70	268	finally
    //   123	128	268	finally
    //   139	168	268	finally
    //   172	191	268	finally
    //   197	207	268	finally
    //   217	222	268	finally
    //   244	248	268	finally
    //   262	266	268	finally
    //   266	268	268	finally
    //   123	128	273	java/io/IOException
    //   217	222	277	java/io/IOException
    //   262	266	281	java/io/IOException
    //   93	118	285	finally
    //   230	240	292	finally
    //   93	118	302	java/io/IOException
  }
}

/* Location:
 * Qualified Name:     com.amazon.insights.abtest.cache.FileVariationCache
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */