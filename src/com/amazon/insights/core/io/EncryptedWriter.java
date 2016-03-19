package com.amazon.insights.core.io;

import java.io.IOException;
import java.io.Writer;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;

public class EncryptedWriter
  extends Writer
{
  private Cipher cipher = null;
  private final Writer writer;
  
  public EncryptedWriter(Writer paramWriter, SecretKey paramSecretKey)
  {
    writer = paramWriter;
    try
    {
      cipher = Cipher.getInstance(paramSecretKey.getAlgorithm());
      cipher.init(1, paramSecretKey);
      return;
    }
    catch (NoSuchAlgorithmException paramWriter)
    {
      cipher = null;
      throw new IllegalArgumentException(paramWriter);
    }
    catch (NoSuchPaddingException paramWriter)
    {
      cipher = null;
      throw new IllegalArgumentException(paramWriter);
    }
    catch (InvalidKeyException paramWriter)
    {
      cipher = null;
      throw new IllegalArgumentException(paramWriter);
    }
  }
  
  public Writer append(char paramChar)
    throws IOException
  {
    throw new UnsupportedOperationException("This writer does not support the write(char) method");
  }
  
  public Writer append(CharSequence paramCharSequence)
    throws IOException
  {
    throw new UnsupportedOperationException("This writer does not support the write(CharSequence) method");
  }
  
  public Writer append(CharSequence paramCharSequence, int paramInt1, int paramInt2)
    throws IOException
  {
    throw new UnsupportedOperationException("This writer does not support the write(CharSequence,int,int) method");
  }
  
  public void close()
    throws IOException
  {
    writer.close();
  }
  
  public void flush()
    throws IOException
  {
    writer.flush();
  }
  
  public void write(int paramInt)
    throws IOException
  {
    throw new UnsupportedOperationException("This writer does not support the write(int) method");
  }
  
  /* Error */
  public void write(String paramString)
    throws IOException
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aload_0
    //   3: getfield 21	com/amazon/insights/core/io/EncryptedWriter:cipher	Ljavax/crypto/Cipher;
    //   6: ifnonnull +13 -> 19
    //   9: new 49	java/io/IOException
    //   12: dup
    //   13: ldc 86
    //   15: invokespecial 87	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   18: athrow
    //   19: new 89	java/io/ByteArrayOutputStream
    //   22: dup
    //   23: invokespecial 90	java/io/ByteArrayOutputStream:<init>	()V
    //   26: astore_2
    //   27: new 92	java/util/zip/GZIPOutputStream
    //   30: dup
    //   31: aload_2
    //   32: invokespecial 95	java/util/zip/GZIPOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   35: astore 4
    //   37: aload 4
    //   39: aload_1
    //   40: ldc 97
    //   42: invokevirtual 103	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   45: invokevirtual 106	java/util/zip/GZIPOutputStream:write	([B)V
    //   48: aload 4
    //   50: invokevirtual 107	java/util/zip/GZIPOutputStream:close	()V
    //   53: aload_0
    //   54: getfield 21	com/amazon/insights/core/io/EncryptedWriter:cipher	Ljavax/crypto/Cipher;
    //   57: aload_2
    //   58: invokevirtual 111	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   61: invokevirtual 115	javax/crypto/Cipher:doFinal	([B)[B
    //   64: invokestatic 120	org/apache/commons/codec/binary/Base64:encodeBase64	([B)[B
    //   67: astore_1
    //   68: aload_0
    //   69: getfield 23	com/amazon/insights/core/io/EncryptedWriter:writer	Ljava/io/Writer;
    //   72: new 122	java/lang/StringBuilder
    //   75: dup
    //   76: invokespecial 123	java/lang/StringBuilder:<init>	()V
    //   79: new 99	java/lang/String
    //   82: dup
    //   83: aload_1
    //   84: ldc 97
    //   86: invokespecial 126	java/lang/String:<init>	([BLjava/lang/String;)V
    //   89: invokevirtual 129	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   92: ldc -125
    //   94: invokevirtual 129	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   97: invokevirtual 134	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   100: invokevirtual 136	java/io/Writer:write	(Ljava/lang/String;)V
    //   103: aload_2
    //   104: ifnull +7 -> 111
    //   107: aload_2
    //   108: invokevirtual 137	java/io/ByteArrayOutputStream:close	()V
    //   111: aload 4
    //   113: ifnull +8 -> 121
    //   116: aload 4
    //   118: invokevirtual 107	java/util/zip/GZIPOutputStream:close	()V
    //   121: return
    //   122: astore_1
    //   123: new 49	java/io/IOException
    //   126: dup
    //   127: aload_1
    //   128: invokevirtual 138	java/lang/Exception:toString	()Ljava/lang/String;
    //   131: invokespecial 87	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   134: athrow
    //   135: astore_1
    //   136: aload_2
    //   137: astore_3
    //   138: aload 4
    //   140: astore_2
    //   141: aload_3
    //   142: ifnull +7 -> 149
    //   145: aload_3
    //   146: invokevirtual 137	java/io/ByteArrayOutputStream:close	()V
    //   149: aload_2
    //   150: ifnull +7 -> 157
    //   153: aload_2
    //   154: invokevirtual 107	java/util/zip/GZIPOutputStream:close	()V
    //   157: aload_1
    //   158: athrow
    //   159: astore_1
    //   160: aconst_null
    //   161: astore_2
    //   162: goto -21 -> 141
    //   165: astore_1
    //   166: aconst_null
    //   167: astore 4
    //   169: aload_2
    //   170: astore_3
    //   171: aload 4
    //   173: astore_2
    //   174: goto -33 -> 141
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	177	0	this	EncryptedWriter
    //   0	177	1	paramString	String
    //   26	148	2	localObject1	Object
    //   1	170	3	localObject2	Object
    //   35	137	4	localGZIPOutputStream	java.util.zip.GZIPOutputStream
    // Exception table:
    //   from	to	target	type
    //   53	103	122	java/lang/Exception
    //   37	53	135	finally
    //   53	103	135	finally
    //   123	135	135	finally
    //   19	27	159	finally
    //   27	37	165	finally
  }
  
  public void write(String paramString, int paramInt1, int paramInt2)
    throws IOException
  {
    throw new UnsupportedOperationException("This writer does not support the write(String,int,int) method");
  }
  
  public void write(char[] paramArrayOfChar)
    throws IOException
  {
    throw new UnsupportedOperationException("This writer does not support the write(char[]) method");
  }
  
  public void write(char[] paramArrayOfChar, int paramInt1, int paramInt2)
    throws IOException
  {
    throw new UnsupportedOperationException("This writer does not support the write(char[],int,int) method");
  }
}

/* Location:
 * Qualified Name:     com.amazon.insights.core.io.EncryptedWriter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */