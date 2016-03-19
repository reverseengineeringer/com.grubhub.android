package com.amazon.insights.core.io;

import java.io.BufferedReader;
import java.io.IOException;
import java.nio.CharBuffer;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;

public class EncryptedBufferedReader
  extends BufferedReader
{
  private static final int BUFFER_SIZE = 1024;
  private Cipher cipher;
  private final BufferedReader reader;
  
  public EncryptedBufferedReader(BufferedReader paramBufferedReader, SecretKey paramSecretKey)
  {
    super(paramBufferedReader);
    reader = paramBufferedReader;
    try
    {
      cipher = Cipher.getInstance(paramSecretKey.getAlgorithm());
      cipher.init(2, paramSecretKey);
      return;
    }
    catch (NoSuchAlgorithmException paramBufferedReader)
    {
      cipher = null;
      throw new IllegalArgumentException(paramBufferedReader);
    }
    catch (NoSuchPaddingException paramBufferedReader)
    {
      cipher = null;
      throw new IllegalArgumentException(paramBufferedReader);
    }
    catch (InvalidKeyException paramBufferedReader)
    {
      cipher = null;
      throw new IllegalArgumentException(paramBufferedReader);
    }
  }
  
  public void close()
    throws IOException
  {
    reader.close();
  }
  
  public void mark(int paramInt)
    throws IOException
  {
    throw new UnsupportedOperationException("This writer does not support the mark(int) method");
  }
  
  public boolean markSupported()
  {
    return false;
  }
  
  public int read()
    throws IOException
  {
    throw new UnsupportedOperationException("This writer does not support the read() method");
  }
  
  public int read(CharBuffer paramCharBuffer)
    throws IOException
  {
    throw new UnsupportedOperationException("This writer does not support the read(CharBuffer) method");
  }
  
  public int read(char[] paramArrayOfChar)
    throws IOException
  {
    throw new UnsupportedOperationException("This writer does not support the read(char[]) method");
  }
  
  public int read(char[] paramArrayOfChar, int paramInt1, int paramInt2)
    throws IOException
  {
    throw new UnsupportedOperationException("This writer does not support the read(char[],int,int) method");
  }
  
  /* Error */
  public String readLine()
    throws IOException, DecryptionException
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_0
    //   3: getfield 38	com/amazon/insights/core/io/EncryptedBufferedReader:cipher	Ljavax/crypto/Cipher;
    //   6: ifnonnull +13 -> 19
    //   9: new 52	java/io/IOException
    //   12: dup
    //   13: ldc 90
    //   15: invokespecial 91	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   18: athrow
    //   19: aload_0
    //   20: getfield 24	com/amazon/insights/core/io/EncryptedBufferedReader:reader	Ljava/io/BufferedReader;
    //   23: invokevirtual 93	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   26: astore_3
    //   27: aload_3
    //   28: ifnonnull +41 -> 69
    //   31: iconst_0
    //   32: ifeq +11 -> 43
    //   35: new 95	java/lang/NullPointerException
    //   38: dup
    //   39: invokespecial 97	java/lang/NullPointerException:<init>	()V
    //   42: athrow
    //   43: iconst_0
    //   44: ifeq +11 -> 55
    //   47: new 95	java/lang/NullPointerException
    //   50: dup
    //   51: invokespecial 97	java/lang/NullPointerException:<init>	()V
    //   54: athrow
    //   55: iconst_0
    //   56: ifeq +11 -> 67
    //   59: new 95	java/lang/NullPointerException
    //   62: dup
    //   63: invokespecial 97	java/lang/NullPointerException:<init>	()V
    //   66: athrow
    //   67: aload_2
    //   68: areturn
    //   69: new 99	java/io/ByteArrayInputStream
    //   72: dup
    //   73: aload_0
    //   74: getfield 38	com/amazon/insights/core/io/EncryptedBufferedReader:cipher	Ljavax/crypto/Cipher;
    //   77: aload_3
    //   78: ldc 101
    //   80: invokevirtual 107	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   83: invokestatic 113	org/apache/commons/codec/binary/Base64:decodeBase64	([B)[B
    //   86: invokevirtual 116	javax/crypto/Cipher:doFinal	([B)[B
    //   89: invokespecial 119	java/io/ByteArrayInputStream:<init>	([B)V
    //   92: astore 4
    //   94: new 121	java/io/ByteArrayOutputStream
    //   97: dup
    //   98: invokespecial 122	java/io/ByteArrayOutputStream:<init>	()V
    //   101: astore 5
    //   103: sipush 1024
    //   106: newarray <illegal type>
    //   108: astore 11
    //   110: new 124	java/util/zip/GZIPInputStream
    //   113: dup
    //   114: aload 4
    //   116: invokespecial 127	java/util/zip/GZIPInputStream:<init>	(Ljava/io/InputStream;)V
    //   119: astore_3
    //   120: aload_3
    //   121: astore 8
    //   123: aload_3
    //   124: astore_2
    //   125: aload 5
    //   127: astore 6
    //   129: aload 4
    //   131: astore 7
    //   133: aload_3
    //   134: astore 9
    //   136: aload_3
    //   137: astore 10
    //   139: aload_3
    //   140: aload 11
    //   142: invokevirtual 130	java/util/zip/GZIPInputStream:read	([B)I
    //   145: istore_1
    //   146: iload_1
    //   147: ifle +134 -> 281
    //   150: aload_3
    //   151: astore 8
    //   153: aload_3
    //   154: astore_2
    //   155: aload 5
    //   157: astore 6
    //   159: aload 4
    //   161: astore 7
    //   163: aload_3
    //   164: astore 9
    //   166: aload_3
    //   167: astore 10
    //   169: aload 5
    //   171: aload 11
    //   173: iconst_0
    //   174: iload_1
    //   175: invokevirtual 134	java/io/ByteArrayOutputStream:write	([BII)V
    //   178: goto -58 -> 120
    //   181: astore 12
    //   183: aload_3
    //   184: astore 8
    //   186: aload_3
    //   187: astore_2
    //   188: aload 5
    //   190: astore 6
    //   192: aload 4
    //   194: astore 7
    //   196: aload_3
    //   197: astore 11
    //   199: aload_3
    //   200: astore 9
    //   202: aload_3
    //   203: astore 10
    //   205: new 82	com/amazon/insights/core/io/DecryptionException
    //   208: dup
    //   209: aload 12
    //   211: invokespecial 137	com/amazon/insights/core/io/DecryptionException:<init>	(Ljava/lang/Exception;)V
    //   214: athrow
    //   215: astore_3
    //   216: aload 8
    //   218: astore_2
    //   219: aload 5
    //   221: astore 6
    //   223: aload 4
    //   225: astore 7
    //   227: new 82	com/amazon/insights/core/io/DecryptionException
    //   230: dup
    //   231: aload_3
    //   232: invokespecial 137	com/amazon/insights/core/io/DecryptionException:<init>	(Ljava/lang/Exception;)V
    //   235: athrow
    //   236: astore 8
    //   238: aload 7
    //   240: astore 4
    //   242: aload 6
    //   244: astore 5
    //   246: aload_2
    //   247: astore_3
    //   248: aload 8
    //   250: astore_2
    //   251: aload_3
    //   252: ifnull +7 -> 259
    //   255: aload_3
    //   256: invokevirtual 138	java/util/zip/GZIPInputStream:close	()V
    //   259: aload 4
    //   261: ifnull +8 -> 269
    //   264: aload 4
    //   266: invokevirtual 139	java/io/ByteArrayInputStream:close	()V
    //   269: aload 5
    //   271: ifnull +8 -> 279
    //   274: aload 5
    //   276: invokevirtual 140	java/io/ByteArrayOutputStream:close	()V
    //   279: aload_2
    //   280: athrow
    //   281: aload_3
    //   282: astore 8
    //   284: aload_3
    //   285: astore_2
    //   286: aload 5
    //   288: astore 6
    //   290: aload 4
    //   292: astore 7
    //   294: aload_3
    //   295: astore 11
    //   297: aload_3
    //   298: astore 9
    //   300: aload_3
    //   301: astore 10
    //   303: new 103	java/lang/String
    //   306: dup
    //   307: aload 5
    //   309: invokevirtual 144	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   312: ldc 101
    //   314: invokespecial 147	java/lang/String:<init>	([BLjava/lang/String;)V
    //   317: astore 12
    //   319: aload_3
    //   320: ifnull +7 -> 327
    //   323: aload_3
    //   324: invokevirtual 138	java/util/zip/GZIPInputStream:close	()V
    //   327: aload 4
    //   329: ifnull +8 -> 337
    //   332: aload 4
    //   334: invokevirtual 139	java/io/ByteArrayInputStream:close	()V
    //   337: aload 12
    //   339: astore_2
    //   340: aload 5
    //   342: ifnull -275 -> 67
    //   345: aload 5
    //   347: invokevirtual 140	java/io/ByteArrayOutputStream:close	()V
    //   350: aload 12
    //   352: areturn
    //   353: astore_3
    //   354: aconst_null
    //   355: astore 5
    //   357: aconst_null
    //   358: astore 4
    //   360: aconst_null
    //   361: astore_2
    //   362: aload 5
    //   364: astore 6
    //   366: aload 4
    //   368: astore 7
    //   370: new 82	com/amazon/insights/core/io/DecryptionException
    //   373: dup
    //   374: aload_3
    //   375: invokespecial 137	com/amazon/insights/core/io/DecryptionException:<init>	(Ljava/lang/Exception;)V
    //   378: athrow
    //   379: aload 5
    //   381: astore 6
    //   383: aload 4
    //   385: astore 7
    //   387: aload_3
    //   388: athrow
    //   389: aload 5
    //   391: astore 6
    //   393: aload 4
    //   395: astore 7
    //   397: new 52	java/io/IOException
    //   400: dup
    //   401: aload_3
    //   402: invokevirtual 150	java/lang/Exception:toString	()Ljava/lang/String;
    //   405: invokespecial 91	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   408: athrow
    //   409: astore_2
    //   410: aconst_null
    //   411: astore 5
    //   413: aconst_null
    //   414: astore 4
    //   416: aconst_null
    //   417: astore_3
    //   418: goto -167 -> 251
    //   421: astore_2
    //   422: aconst_null
    //   423: astore 5
    //   425: aconst_null
    //   426: astore_3
    //   427: goto -176 -> 251
    //   430: astore_2
    //   431: aconst_null
    //   432: astore_3
    //   433: goto -182 -> 251
    //   436: astore_3
    //   437: aconst_null
    //   438: astore 5
    //   440: aconst_null
    //   441: astore_2
    //   442: goto -53 -> 389
    //   445: astore_3
    //   446: aconst_null
    //   447: astore_2
    //   448: goto -59 -> 389
    //   451: astore_3
    //   452: aload 11
    //   454: astore_2
    //   455: goto -66 -> 389
    //   458: astore_3
    //   459: aconst_null
    //   460: astore 5
    //   462: aconst_null
    //   463: astore_2
    //   464: goto -85 -> 379
    //   467: astore_3
    //   468: aconst_null
    //   469: astore_2
    //   470: goto -91 -> 379
    //   473: astore_3
    //   474: aload 9
    //   476: astore_2
    //   477: goto -98 -> 379
    //   480: astore_3
    //   481: aconst_null
    //   482: astore 5
    //   484: aconst_null
    //   485: astore_2
    //   486: goto -124 -> 362
    //   489: astore_3
    //   490: aconst_null
    //   491: astore_2
    //   492: goto -130 -> 362
    //   495: astore_3
    //   496: aload 10
    //   498: astore_2
    //   499: goto -137 -> 362
    //   502: astore_3
    //   503: aconst_null
    //   504: astore 5
    //   506: aconst_null
    //   507: astore 4
    //   509: aconst_null
    //   510: astore_2
    //   511: goto -292 -> 219
    //   514: astore_3
    //   515: aconst_null
    //   516: astore 5
    //   518: aconst_null
    //   519: astore_2
    //   520: goto -301 -> 219
    //   523: astore_3
    //   524: aconst_null
    //   525: astore_2
    //   526: goto -307 -> 219
    //   529: astore 12
    //   531: aconst_null
    //   532: astore_3
    //   533: goto -350 -> 183
    //   536: astore_3
    //   537: aconst_null
    //   538: astore 5
    //   540: aconst_null
    //   541: astore 4
    //   543: aconst_null
    //   544: astore_2
    //   545: goto -166 -> 379
    //   548: astore_3
    //   549: aconst_null
    //   550: astore 5
    //   552: aconst_null
    //   553: astore 4
    //   555: aconst_null
    //   556: astore_2
    //   557: goto -168 -> 389
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	560	0	this	EncryptedBufferedReader
    //   145	30	1	i	int
    //   1	361	2	localObject1	Object
    //   409	1	2	localObject2	Object
    //   421	1	2	localObject3	Object
    //   430	1	2	localObject4	Object
    //   441	116	2	localObject5	Object
    //   26	177	3	localObject6	Object
    //   215	17	3	localIllegalBlockSizeException1	javax.crypto.IllegalBlockSizeException
    //   247	77	3	localObject7	Object
    //   353	49	3	localBadPaddingException1	javax.crypto.BadPaddingException
    //   417	16	3	localObject8	Object
    //   436	1	3	localException1	Exception
    //   445	1	3	localException2	Exception
    //   451	1	3	localException3	Exception
    //   458	1	3	localDecryptionException1	DecryptionException
    //   467	1	3	localDecryptionException2	DecryptionException
    //   473	1	3	localDecryptionException3	DecryptionException
    //   480	1	3	localBadPaddingException2	javax.crypto.BadPaddingException
    //   489	1	3	localBadPaddingException3	javax.crypto.BadPaddingException
    //   495	1	3	localBadPaddingException4	javax.crypto.BadPaddingException
    //   502	1	3	localIllegalBlockSizeException2	javax.crypto.IllegalBlockSizeException
    //   514	1	3	localIllegalBlockSizeException3	javax.crypto.IllegalBlockSizeException
    //   523	1	3	localIllegalBlockSizeException4	javax.crypto.IllegalBlockSizeException
    //   532	1	3	localObject9	Object
    //   536	1	3	localDecryptionException4	DecryptionException
    //   548	1	3	localException4	Exception
    //   92	462	4	localObject10	Object
    //   101	450	5	localObject11	Object
    //   127	265	6	localObject12	Object
    //   131	265	7	localObject13	Object
    //   121	96	8	localObject14	Object
    //   236	13	8	localObject15	Object
    //   282	1	8	localObject16	Object
    //   134	341	9	localObject17	Object
    //   137	360	10	localObject18	Object
    //   108	345	11	localObject19	Object
    //   181	29	12	localException5	Exception
    //   317	34	12	str	String
    //   529	1	12	localException6	Exception
    // Exception table:
    //   from	to	target	type
    //   139	146	181	java/lang/Exception
    //   169	178	181	java/lang/Exception
    //   139	146	215	javax/crypto/IllegalBlockSizeException
    //   169	178	215	javax/crypto/IllegalBlockSizeException
    //   205	215	215	javax/crypto/IllegalBlockSizeException
    //   303	319	215	javax/crypto/IllegalBlockSizeException
    //   139	146	236	finally
    //   169	178	236	finally
    //   205	215	236	finally
    //   227	236	236	finally
    //   303	319	236	finally
    //   370	379	236	finally
    //   387	389	236	finally
    //   397	409	236	finally
    //   19	27	353	javax/crypto/BadPaddingException
    //   69	94	353	javax/crypto/BadPaddingException
    //   19	27	409	finally
    //   69	94	409	finally
    //   94	103	421	finally
    //   103	110	430	finally
    //   110	120	430	finally
    //   94	103	436	java/lang/Exception
    //   103	110	445	java/lang/Exception
    //   205	215	451	java/lang/Exception
    //   303	319	451	java/lang/Exception
    //   94	103	458	com/amazon/insights/core/io/DecryptionException
    //   103	110	467	com/amazon/insights/core/io/DecryptionException
    //   110	120	467	com/amazon/insights/core/io/DecryptionException
    //   139	146	473	com/amazon/insights/core/io/DecryptionException
    //   169	178	473	com/amazon/insights/core/io/DecryptionException
    //   205	215	473	com/amazon/insights/core/io/DecryptionException
    //   303	319	473	com/amazon/insights/core/io/DecryptionException
    //   94	103	480	javax/crypto/BadPaddingException
    //   103	110	489	javax/crypto/BadPaddingException
    //   110	120	489	javax/crypto/BadPaddingException
    //   139	146	495	javax/crypto/BadPaddingException
    //   169	178	495	javax/crypto/BadPaddingException
    //   205	215	495	javax/crypto/BadPaddingException
    //   303	319	495	javax/crypto/BadPaddingException
    //   19	27	502	javax/crypto/IllegalBlockSizeException
    //   69	94	502	javax/crypto/IllegalBlockSizeException
    //   94	103	514	javax/crypto/IllegalBlockSizeException
    //   103	110	523	javax/crypto/IllegalBlockSizeException
    //   110	120	523	javax/crypto/IllegalBlockSizeException
    //   110	120	529	java/lang/Exception
    //   19	27	536	com/amazon/insights/core/io/DecryptionException
    //   69	94	536	com/amazon/insights/core/io/DecryptionException
    //   19	27	548	java/lang/Exception
    //   69	94	548	java/lang/Exception
  }
  
  public boolean ready()
    throws IOException
  {
    return reader.ready();
  }
  
  public void reset()
    throws IOException
  {
    reader.reset();
  }
  
  public long skip(long paramLong)
    throws IOException
  {
    throw new UnsupportedOperationException("This writer does not support the skip(long) method");
  }
}

/* Location:
 * Qualified Name:     com.amazon.insights.core.io.EncryptedBufferedReader
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */