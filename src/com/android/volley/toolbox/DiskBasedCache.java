package com.android.volley.toolbox;

import android.os.SystemClock;
import com.android.volley.Cache;
import com.android.volley.Cache.Entry;
import com.android.volley.VolleyLog;
import java.io.EOFException;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class DiskBasedCache
  implements Cache
{
  private static final int CACHE_MAGIC = 538051844;
  private static final int DEFAULT_DISK_USAGE_BYTES = 5242880;
  private static final float HYSTERESIS_FACTOR = 0.9F;
  private final Map<String, DiskBasedCache.CacheHeader> mEntries = new LinkedHashMap(16, 0.75F, true);
  private final int mMaxCacheSizeInBytes;
  private final File mRootDirectory;
  private long mTotalSize = 0L;
  
  public DiskBasedCache(File paramFile)
  {
    this(paramFile, 5242880);
  }
  
  public DiskBasedCache(File paramFile, int paramInt)
  {
    mRootDirectory = paramFile;
    mMaxCacheSizeInBytes = paramInt;
  }
  
  private String getFilenameForKey(String paramString)
  {
    int i = paramString.length() / 2;
    int j = paramString.substring(0, i).hashCode();
    return String.valueOf(j) + String.valueOf(paramString.substring(i).hashCode());
  }
  
  private void pruneIfNeeded(int paramInt)
  {
    if (mTotalSize + paramInt < mMaxCacheSizeInBytes) {}
    label119:
    label229:
    label233:
    for (;;)
    {
      return;
      if (VolleyLog.DEBUG) {
        VolleyLog.v("Pruning old cache entries.", new Object[0]);
      }
      long l1 = mTotalSize;
      long l2 = SystemClock.elapsedRealtime();
      Iterator localIterator = mEntries.entrySet().iterator();
      int i = 0;
      DiskBasedCache.CacheHeader localCacheHeader;
      if (localIterator.hasNext())
      {
        localCacheHeader = (DiskBasedCache.CacheHeader)((Map.Entry)localIterator.next()).getValue();
        if (getFileForKey(key).delete())
        {
          mTotalSize -= size;
          localIterator.remove();
          i += 1;
          if ((float)(mTotalSize + paramInt) >= mMaxCacheSizeInBytes * 0.9F) {
            break label229;
          }
        }
      }
      for (;;)
      {
        if (!VolleyLog.DEBUG) {
          break label233;
        }
        VolleyLog.v("pruned %d files, %d bytes, %d ms", new Object[] { Integer.valueOf(i), Long.valueOf(mTotalSize - l1), Long.valueOf(SystemClock.elapsedRealtime() - l2) });
        return;
        VolleyLog.d("Could not delete cache entry for key=%s, filename=%s", new Object[] { key, getFilenameForKey(key) });
        break label119;
        break;
      }
    }
  }
  
  private void putEntry(String paramString, DiskBasedCache.CacheHeader paramCacheHeader)
  {
    if (!mEntries.containsKey(paramString)) {}
    DiskBasedCache.CacheHeader localCacheHeader;
    long l;
    for (mTotalSize += size;; mTotalSize = (size - size + l))
    {
      mEntries.put(paramString, paramCacheHeader);
      return;
      localCacheHeader = (DiskBasedCache.CacheHeader)mEntries.get(paramString);
      l = mTotalSize;
    }
  }
  
  private static int read(InputStream paramInputStream)
    throws IOException
  {
    int i = paramInputStream.read();
    if (i == -1) {
      throw new EOFException();
    }
    return i;
  }
  
  static int readInt(InputStream paramInputStream)
    throws IOException
  {
    return 0x0 | read(paramInputStream) << 0 | read(paramInputStream) << 8 | read(paramInputStream) << 16 | read(paramInputStream) << 24;
  }
  
  static long readLong(InputStream paramInputStream)
    throws IOException
  {
    return 0L | (read(paramInputStream) & 0xFF) << 0 | (read(paramInputStream) & 0xFF) << 8 | (read(paramInputStream) & 0xFF) << 16 | (read(paramInputStream) & 0xFF) << 24 | (read(paramInputStream) & 0xFF) << 32 | (read(paramInputStream) & 0xFF) << 40 | (read(paramInputStream) & 0xFF) << 48 | (read(paramInputStream) & 0xFF) << 56;
  }
  
  static String readString(InputStream paramInputStream)
    throws IOException
  {
    return new String(streamToBytes(paramInputStream, (int)readLong(paramInputStream)), "UTF-8");
  }
  
  static Map<String, String> readStringStringMap(InputStream paramInputStream)
    throws IOException
  {
    int j = readInt(paramInputStream);
    if (j == 0) {}
    for (Object localObject = Collections.emptyMap();; localObject = new HashMap(j))
    {
      int i = 0;
      while (i < j)
      {
        ((Map)localObject).put(readString(paramInputStream).intern(), readString(paramInputStream).intern());
        i += 1;
      }
    }
    return (Map<String, String>)localObject;
  }
  
  private void removeEntry(String paramString)
  {
    DiskBasedCache.CacheHeader localCacheHeader = (DiskBasedCache.CacheHeader)mEntries.get(paramString);
    if (localCacheHeader != null)
    {
      mTotalSize -= size;
      mEntries.remove(paramString);
    }
  }
  
  private static byte[] streamToBytes(InputStream paramInputStream, int paramInt)
    throws IOException
  {
    byte[] arrayOfByte = new byte[paramInt];
    int i = 0;
    while (i < paramInt)
    {
      int j = paramInputStream.read(arrayOfByte, i, paramInt - i);
      if (j == -1) {
        break;
      }
      i += j;
    }
    if (i != paramInt) {
      throw new IOException("Expected " + paramInt + " bytes, read " + i + " bytes");
    }
    return arrayOfByte;
  }
  
  static void writeInt(OutputStream paramOutputStream, int paramInt)
    throws IOException
  {
    paramOutputStream.write(paramInt >> 0 & 0xFF);
    paramOutputStream.write(paramInt >> 8 & 0xFF);
    paramOutputStream.write(paramInt >> 16 & 0xFF);
    paramOutputStream.write(paramInt >> 24 & 0xFF);
  }
  
  static void writeLong(OutputStream paramOutputStream, long paramLong)
    throws IOException
  {
    paramOutputStream.write((byte)(int)(paramLong >>> 0));
    paramOutputStream.write((byte)(int)(paramLong >>> 8));
    paramOutputStream.write((byte)(int)(paramLong >>> 16));
    paramOutputStream.write((byte)(int)(paramLong >>> 24));
    paramOutputStream.write((byte)(int)(paramLong >>> 32));
    paramOutputStream.write((byte)(int)(paramLong >>> 40));
    paramOutputStream.write((byte)(int)(paramLong >>> 48));
    paramOutputStream.write((byte)(int)(paramLong >>> 56));
  }
  
  static void writeString(OutputStream paramOutputStream, String paramString)
    throws IOException
  {
    paramString = paramString.getBytes("UTF-8");
    writeLong(paramOutputStream, paramString.length);
    paramOutputStream.write(paramString, 0, paramString.length);
  }
  
  static void writeStringStringMap(Map<String, String> paramMap, OutputStream paramOutputStream)
    throws IOException
  {
    if (paramMap != null)
    {
      writeInt(paramOutputStream, paramMap.size());
      paramMap = paramMap.entrySet().iterator();
      while (paramMap.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)paramMap.next();
        writeString(paramOutputStream, (String)localEntry.getKey());
        writeString(paramOutputStream, (String)localEntry.getValue());
      }
    }
    writeInt(paramOutputStream, 0);
  }
  
  public void clear()
  {
    int i = 0;
    try
    {
      File[] arrayOfFile = mRootDirectory.listFiles();
      if (arrayOfFile != null)
      {
        int j = arrayOfFile.length;
        while (i < j)
        {
          arrayOfFile[i].delete();
          i += 1;
        }
      }
      mEntries.clear();
      mTotalSize = 0L;
      VolleyLog.d("Cache cleared.", new Object[0]);
      return;
    }
    finally {}
  }
  
  /* Error */
  public Cache.Entry get(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 41	com/android/volley/toolbox/DiskBasedCache:mEntries	Ljava/util/Map;
    //   6: aload_1
    //   7: invokeinterface 180 2 0
    //   12: checkcast 128	com/android/volley/toolbox/DiskBasedCache$CacheHeader
    //   15: astore 4
    //   17: aload 4
    //   19: ifnonnull +9 -> 28
    //   22: aconst_null
    //   23: astore_1
    //   24: aload_0
    //   25: monitorexit
    //   26: aload_1
    //   27: areturn
    //   28: aload_0
    //   29: aload_1
    //   30: invokevirtual 136	com/android/volley/toolbox/DiskBasedCache:getFileForKey	(Ljava/lang/String;)Ljava/io/File;
    //   33: astore 5
    //   35: new 295	com/android/volley/toolbox/DiskBasedCache$CountingInputStream
    //   38: dup
    //   39: new 297	java/io/FileInputStream
    //   42: dup
    //   43: aload 5
    //   45: invokespecial 299	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   48: aconst_null
    //   49: invokespecial 302	com/android/volley/toolbox/DiskBasedCache$CountingInputStream:<init>	(Ljava/io/InputStream;Lcom/android/volley/toolbox/DiskBasedCache$1;)V
    //   52: astore_3
    //   53: aload_3
    //   54: astore_2
    //   55: aload_3
    //   56: invokestatic 306	com/android/volley/toolbox/DiskBasedCache$CacheHeader:readHeader	(Ljava/io/InputStream;)Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;
    //   59: pop
    //   60: aload_3
    //   61: astore_2
    //   62: aload 4
    //   64: aload_3
    //   65: aload 5
    //   67: invokevirtual 308	java/io/File:length	()J
    //   70: aload_3
    //   71: invokestatic 312	com/android/volley/toolbox/DiskBasedCache$CountingInputStream:access$100	(Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;)I
    //   74: i2l
    //   75: lsub
    //   76: l2i
    //   77: invokestatic 207	com/android/volley/toolbox/DiskBasedCache:streamToBytes	(Ljava/io/InputStream;I)[B
    //   80: invokevirtual 316	com/android/volley/toolbox/DiskBasedCache$CacheHeader:toCacheEntry	([B)Lcom/android/volley/Cache$Entry;
    //   83: astore 4
    //   85: aload 4
    //   87: astore_2
    //   88: aload_2
    //   89: astore_1
    //   90: aload_3
    //   91: ifnull -67 -> 24
    //   94: aload_3
    //   95: invokevirtual 319	com/android/volley/toolbox/DiskBasedCache$CountingInputStream:close	()V
    //   98: aload_2
    //   99: astore_1
    //   100: goto -76 -> 24
    //   103: astore_1
    //   104: aconst_null
    //   105: astore_1
    //   106: goto -82 -> 24
    //   109: astore 4
    //   111: aconst_null
    //   112: astore_3
    //   113: aload_3
    //   114: astore_2
    //   115: ldc_w 321
    //   118: iconst_2
    //   119: anewarray 4	java/lang/Object
    //   122: dup
    //   123: iconst_0
    //   124: aload 5
    //   126: invokevirtual 324	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   129: aastore
    //   130: dup
    //   131: iconst_1
    //   132: aload 4
    //   134: invokevirtual 325	java/io/IOException:toString	()Ljava/lang/String;
    //   137: aastore
    //   138: invokestatic 166	com/android/volley/VolleyLog:d	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   141: aload_3
    //   142: astore_2
    //   143: aload_0
    //   144: aload_1
    //   145: invokevirtual 327	com/android/volley/toolbox/DiskBasedCache:remove	(Ljava/lang/String;)V
    //   148: aload_3
    //   149: ifnull +7 -> 156
    //   152: aload_3
    //   153: invokevirtual 319	com/android/volley/toolbox/DiskBasedCache$CountingInputStream:close	()V
    //   156: aconst_null
    //   157: astore_1
    //   158: goto -134 -> 24
    //   161: astore_1
    //   162: aconst_null
    //   163: astore_1
    //   164: goto -140 -> 24
    //   167: astore_1
    //   168: aconst_null
    //   169: astore_2
    //   170: aload_2
    //   171: ifnull +7 -> 178
    //   174: aload_2
    //   175: invokevirtual 319	com/android/volley/toolbox/DiskBasedCache$CountingInputStream:close	()V
    //   178: aload_1
    //   179: athrow
    //   180: astore_1
    //   181: aload_0
    //   182: monitorexit
    //   183: aload_1
    //   184: athrow
    //   185: astore_1
    //   186: aconst_null
    //   187: astore_1
    //   188: goto -164 -> 24
    //   191: astore_1
    //   192: goto -22 -> 170
    //   195: astore 4
    //   197: goto -84 -> 113
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	200	0	this	DiskBasedCache
    //   0	200	1	paramString	String
    //   54	121	2	localObject1	Object
    //   52	101	3	localCountingInputStream	DiskBasedCache.CountingInputStream
    //   15	71	4	localObject2	Object
    //   109	24	4	localIOException1	IOException
    //   195	1	4	localIOException2	IOException
    //   33	92	5	localFile	File
    // Exception table:
    //   from	to	target	type
    //   94	98	103	java/io/IOException
    //   35	53	109	java/io/IOException
    //   152	156	161	java/io/IOException
    //   35	53	167	finally
    //   2	17	180	finally
    //   28	35	180	finally
    //   94	98	180	finally
    //   152	156	180	finally
    //   174	178	180	finally
    //   178	180	180	finally
    //   174	178	185	java/io/IOException
    //   55	60	191	finally
    //   62	85	191	finally
    //   115	141	191	finally
    //   143	148	191	finally
    //   55	60	195	java/io/IOException
    //   62	85	195	java/io/IOException
  }
  
  public File getFileForKey(String paramString)
  {
    return new File(mRootDirectory, getFilenameForKey(paramString));
  }
  
  /* Error */
  public void initialize()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 45	com/android/volley/toolbox/DiskBasedCache:mRootDirectory	Ljava/io/File;
    //   6: invokevirtual 334	java/io/File:exists	()Z
    //   9: ifne +36 -> 45
    //   12: aload_0
    //   13: getfield 45	com/android/volley/toolbox/DiskBasedCache:mRootDirectory	Ljava/io/File;
    //   16: invokevirtual 337	java/io/File:mkdirs	()Z
    //   19: ifne +23 -> 42
    //   22: ldc_w 339
    //   25: iconst_1
    //   26: anewarray 4	java/lang/Object
    //   29: dup
    //   30: iconst_0
    //   31: aload_0
    //   32: getfield 45	com/android/volley/toolbox/DiskBasedCache:mRootDirectory	Ljava/io/File;
    //   35: invokevirtual 324	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   38: aastore
    //   39: invokestatic 342	com/android/volley/VolleyLog:e	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   42: aload_0
    //   43: monitorexit
    //   44: return
    //   45: aload_0
    //   46: getfield 45	com/android/volley/toolbox/DiskBasedCache:mRootDirectory	Ljava/io/File;
    //   49: invokevirtual 288	java/io/File:listFiles	()[Ljava/io/File;
    //   52: astore 5
    //   54: aload 5
    //   56: ifnull -14 -> 42
    //   59: aload 5
    //   61: arraylength
    //   62: istore_2
    //   63: iconst_0
    //   64: istore_1
    //   65: iload_1
    //   66: iload_2
    //   67: if_icmpge -25 -> 42
    //   70: aload 5
    //   72: iload_1
    //   73: aaload
    //   74: astore 6
    //   76: aconst_null
    //   77: astore_3
    //   78: new 297	java/io/FileInputStream
    //   81: dup
    //   82: aload 6
    //   84: invokespecial 299	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   87: astore 4
    //   89: aload 4
    //   91: astore_3
    //   92: aload 4
    //   94: invokestatic 306	com/android/volley/toolbox/DiskBasedCache$CacheHeader:readHeader	(Ljava/io/InputStream;)Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;
    //   97: astore 7
    //   99: aload 4
    //   101: astore_3
    //   102: aload 7
    //   104: aload 6
    //   106: invokevirtual 308	java/io/File:length	()J
    //   109: putfield 144	com/android/volley/toolbox/DiskBasedCache$CacheHeader:size	J
    //   112: aload 4
    //   114: astore_3
    //   115: aload_0
    //   116: aload 7
    //   118: getfield 132	com/android/volley/toolbox/DiskBasedCache$CacheHeader:key	Ljava/lang/String;
    //   121: aload 7
    //   123: invokespecial 344	com/android/volley/toolbox/DiskBasedCache:putEntry	(Ljava/lang/String;Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;)V
    //   126: aload 4
    //   128: ifnull +8 -> 136
    //   131: aload 4
    //   133: invokevirtual 345	java/io/FileInputStream:close	()V
    //   136: iload_1
    //   137: iconst_1
    //   138: iadd
    //   139: istore_1
    //   140: goto -75 -> 65
    //   143: astore_3
    //   144: aconst_null
    //   145: astore 4
    //   147: aload 6
    //   149: ifnull +12 -> 161
    //   152: aload 4
    //   154: astore_3
    //   155: aload 6
    //   157: invokevirtual 141	java/io/File:delete	()Z
    //   160: pop
    //   161: aload 4
    //   163: ifnull -27 -> 136
    //   166: aload 4
    //   168: invokevirtual 345	java/io/FileInputStream:close	()V
    //   171: goto -35 -> 136
    //   174: astore_3
    //   175: goto -39 -> 136
    //   178: astore 5
    //   180: aload_3
    //   181: astore 4
    //   183: aload 5
    //   185: astore_3
    //   186: aload 4
    //   188: ifnull +8 -> 196
    //   191: aload 4
    //   193: invokevirtual 345	java/io/FileInputStream:close	()V
    //   196: aload_3
    //   197: athrow
    //   198: astore_3
    //   199: aload_0
    //   200: monitorexit
    //   201: aload_3
    //   202: athrow
    //   203: astore_3
    //   204: goto -68 -> 136
    //   207: astore 4
    //   209: goto -13 -> 196
    //   212: astore 5
    //   214: aload_3
    //   215: astore 4
    //   217: aload 5
    //   219: astore_3
    //   220: goto -34 -> 186
    //   223: astore_3
    //   224: goto -77 -> 147
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	227	0	this	DiskBasedCache
    //   64	76	1	i	int
    //   62	6	2	j	int
    //   77	38	3	localObject1	Object
    //   143	1	3	localIOException1	IOException
    //   154	1	3	localObject2	Object
    //   174	7	3	localIOException2	IOException
    //   185	12	3	localObject3	Object
    //   198	4	3	localObject4	Object
    //   203	12	3	localIOException3	IOException
    //   219	1	3	localObject5	Object
    //   223	1	3	localIOException4	IOException
    //   87	105	4	localObject6	Object
    //   207	1	4	localIOException5	IOException
    //   215	1	4	localIOException6	IOException
    //   52	19	5	arrayOfFile	File[]
    //   178	6	5	localObject7	Object
    //   212	6	5	localObject8	Object
    //   74	82	6	localFile	File
    //   97	25	7	localCacheHeader	DiskBasedCache.CacheHeader
    // Exception table:
    //   from	to	target	type
    //   78	89	143	java/io/IOException
    //   166	171	174	java/io/IOException
    //   78	89	178	finally
    //   2	42	198	finally
    //   45	54	198	finally
    //   59	63	198	finally
    //   131	136	198	finally
    //   166	171	198	finally
    //   191	196	198	finally
    //   196	198	198	finally
    //   131	136	203	java/io/IOException
    //   191	196	207	java/io/IOException
    //   92	99	212	finally
    //   102	112	212	finally
    //   115	126	212	finally
    //   155	161	212	finally
    //   92	99	223	java/io/IOException
    //   102	112	223	java/io/IOException
    //   115	126	223	java/io/IOException
  }
  
  public void invalidate(String paramString, boolean paramBoolean)
  {
    try
    {
      Cache.Entry localEntry = get(paramString);
      if (localEntry != null)
      {
        softTtl = 0L;
        if (paramBoolean) {
          ttl = 0L;
        }
        put(paramString, localEntry);
      }
      return;
    }
    finally {}
  }
  
  /* Error */
  public void put(String paramString, Cache.Entry paramEntry)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: aload_2
    //   4: getfield 364	com/android/volley/Cache$Entry:data	[B
    //   7: arraylength
    //   8: invokespecial 366	com/android/volley/toolbox/DiskBasedCache:pruneIfNeeded	(I)V
    //   11: aload_0
    //   12: aload_1
    //   13: invokevirtual 136	com/android/volley/toolbox/DiskBasedCache:getFileForKey	(Ljava/lang/String;)Ljava/io/File;
    //   16: astore_3
    //   17: new 368	java/io/FileOutputStream
    //   20: dup
    //   21: aload_3
    //   22: invokespecial 369	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   25: astore 4
    //   27: new 128	com/android/volley/toolbox/DiskBasedCache$CacheHeader
    //   30: dup
    //   31: aload_1
    //   32: aload_2
    //   33: invokespecial 371	com/android/volley/toolbox/DiskBasedCache$CacheHeader:<init>	(Ljava/lang/String;Lcom/android/volley/Cache$Entry;)V
    //   36: astore 5
    //   38: aload 5
    //   40: aload 4
    //   42: invokevirtual 375	com/android/volley/toolbox/DiskBasedCache$CacheHeader:writeHeader	(Ljava/io/OutputStream;)Z
    //   45: pop
    //   46: aload 4
    //   48: aload_2
    //   49: getfield 364	com/android/volley/Cache$Entry:data	[B
    //   52: invokevirtual 378	java/io/FileOutputStream:write	([B)V
    //   55: aload 4
    //   57: invokevirtual 379	java/io/FileOutputStream:close	()V
    //   60: aload_0
    //   61: aload_1
    //   62: aload 5
    //   64: invokespecial 344	com/android/volley/toolbox/DiskBasedCache:putEntry	(Ljava/lang/String;Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;)V
    //   67: aload_0
    //   68: monitorexit
    //   69: return
    //   70: astore_1
    //   71: aload_3
    //   72: invokevirtual 141	java/io/File:delete	()Z
    //   75: ifne -8 -> 67
    //   78: ldc_w 381
    //   81: iconst_1
    //   82: anewarray 4	java/lang/Object
    //   85: dup
    //   86: iconst_0
    //   87: aload_3
    //   88: invokevirtual 324	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   91: aastore
    //   92: invokestatic 166	com/android/volley/VolleyLog:d	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   95: goto -28 -> 67
    //   98: astore_1
    //   99: aload_0
    //   100: monitorexit
    //   101: aload_1
    //   102: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	103	0	this	DiskBasedCache
    //   0	103	1	paramString	String
    //   0	103	2	paramEntry	Cache.Entry
    //   16	72	3	localFile	File
    //   25	31	4	localFileOutputStream	java.io.FileOutputStream
    //   36	27	5	localCacheHeader	DiskBasedCache.CacheHeader
    // Exception table:
    //   from	to	target	type
    //   17	67	70	java/io/IOException
    //   2	17	98	finally
    //   17	67	98	finally
    //   71	95	98	finally
  }
  
  public void remove(String paramString)
  {
    try
    {
      boolean bool = getFileForKey(paramString).delete();
      removeEntry(paramString);
      if (!bool) {
        VolleyLog.d("Could not delete cache entry for key=%s, filename=%s", new Object[] { paramString, getFilenameForKey(paramString) });
      }
      return;
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     com.android.volley.toolbox.DiskBasedCache
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */