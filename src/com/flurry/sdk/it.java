package com.flurry.sdk;

import java.io.IOException;
import java.io.OutputStream;
import java.util.zip.GZIPOutputStream;

public class it<ObjectType>
  extends is<ObjectType>
{
  public it(iv<ObjectType> paramiv)
  {
    super(paramiv);
  }
  
  public void a(OutputStream paramOutputStream, ObjectType paramObjectType)
    throws IOException
  {
    if (paramOutputStream != null) {}
    try
    {
      localGZIPOutputStream = new GZIPOutputStream(paramOutputStream);
      jn.a(paramObjectType);
    }
    finally
    {
      try
      {
        super.a(localGZIPOutputStream, paramObjectType);
        jn.a(localGZIPOutputStream);
        return;
      }
      finally
      {
        GZIPOutputStream localGZIPOutputStream;
        paramObjectType = localGZIPOutputStream;
      }
      paramOutputStream = finally;
      paramObjectType = null;
    }
    throw paramOutputStream;
  }
  
  /* Error */
  public ObjectType b(java.io.InputStream paramInputStream)
    throws IOException
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_1
    //   3: ifnull +24 -> 27
    //   6: new 34	java/util/zip/GZIPInputStream
    //   9: dup
    //   10: aload_1
    //   11: invokespecial 37	java/util/zip/GZIPInputStream:<init>	(Ljava/io/InputStream;)V
    //   14: astore_2
    //   15: aload_0
    //   16: aload_2
    //   17: invokespecial 39	com/flurry/sdk/is:b	(Ljava/io/InputStream;)Ljava/lang/Object;
    //   20: astore_1
    //   21: aload_2
    //   22: invokestatic 28	com/flurry/sdk/jn:a	(Ljava/io/Closeable;)V
    //   25: aload_1
    //   26: astore_2
    //   27: aload_2
    //   28: areturn
    //   29: astore_1
    //   30: aconst_null
    //   31: astore_2
    //   32: aload_2
    //   33: invokestatic 28	com/flurry/sdk/jn:a	(Ljava/io/Closeable;)V
    //   36: aload_1
    //   37: athrow
    //   38: astore_1
    //   39: goto -7 -> 32
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	42	0	this	it
    //   0	42	1	paramInputStream	java.io.InputStream
    //   1	32	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   6	15	29	finally
    //   15	21	38	finally
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.it
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */