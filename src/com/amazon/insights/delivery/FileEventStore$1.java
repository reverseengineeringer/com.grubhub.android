package com.amazon.insights.delivery;

import com.amazon.insights.core.InsightsContext;
import com.amazon.insights.core.io.EncryptedBufferedReader;
import com.amazon.insights.core.log.Logger;
import com.amazon.insights.core.system.FileManager;
import com.amazon.insights.core.system.System;
import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.concurrent.locks.ReentrantLock;

class FileEventStore$1
  implements EventStore.EventIterator
{
  boolean isEndOfFile = false;
  int linesRead = 0;
  String nextBuffer = null;
  EncryptedBufferedReader reader = null;
  
  FileEventStore$1(FileEventStore paramFileEventStore) {}
  
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
      FileEventStore.access$200().e("Unable to close reader for events file", localIOException);
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
        InputStreamReader localInputStreamReader = new InputStreamReader(FileEventStore.access$100(this$0).getSystem().getFileManager().newInputStream(FileEventStore.access$000(this$0)));
        if (localInputStreamReader != null)
        {
          reader = new EncryptedBufferedReader(new BufferedReader(localInputStreamReader), FileEventStore.access$300(this$0));
          return true;
        }
      }
      catch (FileNotFoundException localFileNotFoundException)
      {
        for (;;)
        {
          FileEventStore.access$200().e("Could not open the events file", localFileNotFoundException);
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
    FileEventStore.access$400(this$0).lock();
    try
    {
      hasNext();
      String str = nextBuffer;
      return str;
    }
    finally
    {
      FileEventStore.access$400(this$0).unlock();
    }
  }
  
  public void remove()
  {
    throw new UnsupportedOperationException("The remove() operation is not supported for this iterator");
  }
  
  public void removeReadEvents()
  {
    FileEventStore.access$400(this$0).lock();
    try
    {
      FileEventStore.access$500(this$0, linesRead);
      resetReader();
      return;
    }
    finally
    {
      FileEventStore.access$400(this$0).unlock();
    }
  }
}

/* Location:
 * Qualified Name:     com.amazon.insights.delivery.FileEventStore.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */