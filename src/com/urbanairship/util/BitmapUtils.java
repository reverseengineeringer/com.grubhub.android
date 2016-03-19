package com.urbanairship.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import com.urbanairship.Logger;
import java.io.File;
import java.io.IOException;
import java.net.URL;

public class BitmapUtils
{
  private static final int BUFFER_SIZE = 1024;
  private static final int NETWORK_TIMEOUT_MS = 2000;
  
  public static int calculateInSampleSize(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i = 1;
    int j = 1;
    if ((paramInt2 > paramInt4) || (paramInt1 > paramInt3))
    {
      paramInt2 /= 2;
      int k = paramInt1 / 2;
      paramInt1 = j;
      for (;;)
      {
        i = paramInt1;
        if (paramInt2 / paramInt1 <= paramInt4) {
          break;
        }
        i = paramInt1;
        if (k / paramInt1 <= paramInt3) {
          break;
        }
        paramInt1 *= 2;
      }
    }
    return i;
  }
  
  /* Error */
  private static boolean downloadFile(URL paramURL, File paramFile)
    throws IOException
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: new 22	java/lang/StringBuilder
    //   5: dup
    //   6: invokespecial 23	java/lang/StringBuilder:<init>	()V
    //   9: ldc 25
    //   11: invokevirtual 29	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   14: aload_0
    //   15: invokevirtual 32	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   18: ldc 34
    //   20: invokevirtual 29	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   23: aload_1
    //   24: invokevirtual 40	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   27: invokevirtual 29	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   30: invokevirtual 43	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   33: invokestatic 49	com/urbanairship/Logger:verbose	(Ljava/lang/String;)V
    //   36: aload_0
    //   37: invokevirtual 55	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   40: astore_0
    //   41: aload_0
    //   42: sipush 2000
    //   45: invokevirtual 61	java/net/URLConnection:setConnectTimeout	(I)V
    //   48: aload_0
    //   49: iconst_1
    //   50: invokevirtual 65	java/net/URLConnection:setUseCaches	(Z)V
    //   53: aload_0
    //   54: invokevirtual 69	java/net/URLConnection:getInputStream	()Ljava/io/InputStream;
    //   57: astore_0
    //   58: aload_0
    //   59: ifnull +90 -> 149
    //   62: new 71	java/io/FileOutputStream
    //   65: dup
    //   66: aload_1
    //   67: invokespecial 74	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   70: astore_1
    //   71: sipush 1024
    //   74: newarray <illegal type>
    //   76: astore_3
    //   77: aload_0
    //   78: aload_3
    //   79: invokevirtual 80	java/io/InputStream:read	([B)I
    //   82: istore_2
    //   83: iload_2
    //   84: iconst_m1
    //   85: if_icmpeq +38 -> 123
    //   88: aload_1
    //   89: aload_3
    //   90: iconst_0
    //   91: iload_2
    //   92: invokevirtual 84	java/io/FileOutputStream:write	([BII)V
    //   95: goto -18 -> 77
    //   98: astore 4
    //   100: aload_0
    //   101: astore_3
    //   102: aload 4
    //   104: astore_0
    //   105: aload_1
    //   106: ifnull +7 -> 113
    //   109: aload_1
    //   110: invokevirtual 87	java/io/FileOutputStream:close	()V
    //   113: aload_3
    //   114: ifnull +7 -> 121
    //   117: aload_3
    //   118: invokevirtual 88	java/io/InputStream:close	()V
    //   121: aload_0
    //   122: athrow
    //   123: aload_1
    //   124: invokevirtual 87	java/io/FileOutputStream:close	()V
    //   127: aload_0
    //   128: invokevirtual 88	java/io/InputStream:close	()V
    //   131: aload_1
    //   132: ifnull +7 -> 139
    //   135: aload_1
    //   136: invokevirtual 87	java/io/FileOutputStream:close	()V
    //   139: aload_0
    //   140: ifnull +7 -> 147
    //   143: aload_0
    //   144: invokevirtual 88	java/io/InputStream:close	()V
    //   147: iconst_1
    //   148: ireturn
    //   149: iconst_0
    //   150: ifeq +11 -> 161
    //   153: new 90	java/lang/NullPointerException
    //   156: dup
    //   157: invokespecial 91	java/lang/NullPointerException:<init>	()V
    //   160: athrow
    //   161: aload_0
    //   162: ifnull +7 -> 169
    //   165: aload_0
    //   166: invokevirtual 88	java/io/InputStream:close	()V
    //   169: iconst_0
    //   170: ireturn
    //   171: astore_0
    //   172: aconst_null
    //   173: astore_1
    //   174: goto -69 -> 105
    //   177: astore 4
    //   179: aconst_null
    //   180: astore_1
    //   181: aload_0
    //   182: astore_3
    //   183: aload 4
    //   185: astore_0
    //   186: goto -81 -> 105
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	189	0	paramURL	URL
    //   0	189	1	paramFile	File
    //   82	10	2	i	int
    //   1	182	3	localObject1	Object
    //   98	5	4	localObject2	Object
    //   177	7	4	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   71	77	98	finally
    //   77	83	98	finally
    //   88	95	98	finally
    //   123	131	98	finally
    //   36	58	171	finally
    //   62	71	177	finally
  }
  
  public static Bitmap fetchScaledBitmap(Context paramContext, URL paramURL, int paramInt1, int paramInt2)
    throws IOException
  {
    Logger.verbose("BitmapUtils - Fetching image from: " + paramURL);
    paramContext = File.createTempFile("ua_", ".temp", paramContext.getCacheDir());
    Logger.verbose("BitmapUtils - Created temp file: " + paramContext);
    if (!downloadFile(paramURL, paramContext))
    {
      Logger.verbose("BitmapUtils - Failed to fetch image from: " + paramURL);
      return null;
    }
    BitmapFactory.Options localOptions = new BitmapFactory.Options();
    inJustDecodeBounds = true;
    BitmapFactory.decodeFile(paramContext.getAbsolutePath(), localOptions);
    int i = outWidth;
    int j = outHeight;
    inSampleSize = calculateInSampleSize(i, j, paramInt1, paramInt2);
    inJustDecodeBounds = false;
    Bitmap localBitmap = BitmapFactory.decodeFile(paramContext.getAbsolutePath(), localOptions);
    if (paramContext.delete()) {
      Logger.verbose("BitmapUtils - Deleted temp file: " + paramContext);
    }
    for (;;)
    {
      Logger.debug(String.format("BitmapUtils - Fetched image from: %s. Original image size: %dx%d. Requested image size: %dx%d. Bitmap size: %dx%d. SampleSize: %d", new Object[] { paramURL, Integer.valueOf(i), Integer.valueOf(j), Integer.valueOf(paramInt1), Integer.valueOf(paramInt2), Integer.valueOf(localBitmap.getWidth()), Integer.valueOf(localBitmap.getHeight()), Integer.valueOf(inSampleSize) }));
      return localBitmap;
      Logger.verbose("BitmapUtils - Failed to delete temp file: " + paramContext);
    }
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.util.BitmapUtils
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */