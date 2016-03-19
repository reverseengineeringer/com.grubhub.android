package com.amazon.insights.session;

import com.amazon.insights.InsightsCredentials;
import com.amazon.insights.core.InsightsContext;
import com.amazon.insights.core.configuration.Configuration;
import com.amazon.insights.core.idresolver.Id;
import com.amazon.insights.core.io.EncryptedBufferedReader;
import com.amazon.insights.core.io.EncryptedWriter;
import com.amazon.insights.core.log.Logger;
import com.amazon.insights.core.system.FileManager;
import com.amazon.insights.delivery.EventStoreException;
import com.amazon.insights.delivery.FileEventStore;
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
import java.util.concurrent.locks.ReentrantReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock.ReadLock;
import java.util.concurrent.locks.ReentrantReadWriteLock.WriteLock;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;

public class FileSessionStore
  implements SessionStore
{
  static final String ENCRYPTION_ALGORITHM = "AES";
  static final String KEY_MAX_STORAGE_SIZE = "maxStorageSize";
  static final long MAX_STORAGE_SIZE = 22560L;
  protected static final String SESSION_DIRECTORY = "sessions";
  protected static final String SESSION_FILE_NAME = "sessionFile";
  private static final Logger logger = Logger.getLogger(FileEventStore.class);
  private final InsightsContext context;
  private final ReentrantReadWriteLock lock = new ReentrantReadWriteLock(true);
  private final ReentrantReadWriteLock.ReadLock readSessionLock = lock.readLock();
  private EncryptedBufferedReader reader = null;
  private SecretKey secretKey;
  private File sessionFile;
  private final ReentrantReadWriteLock.WriteLock writeSessionLock = lock.writeLock();
  
  public FileSessionStore(InsightsContext paramInsightsContext)
  {
    context = paramInsightsContext;
    paramInsightsContext = context.getSystem().getFileManager();
    Object localObject = paramInsightsContext.createDirectory("sessions");
    label318:
    for (;;)
    {
      try
      {
        sessionFile = paramInsightsContext.createFile(new File((File)localObject, "sessionFile"));
        byte[] arrayOfByte = new byte[32];
        try
        {
          paramInsightsContext = context.getCredentials().getPrivateKey();
          if ((context.getUniqueId() == null) || (context.getUniqueId() == Id.getEmptyId()) || (context.getUniqueId().getValue() == null)) {
            break label318;
          }
          paramInsightsContext = context.getUniqueId().getValue();
          String str = context.getCredentials().getPrivateKey();
          localObject = str;
          if (str.length() > 16) {
            localObject = str.substring(16);
          }
          localObject = context.getConfiguration().optString("encryptionPrefix", (String)localObject) + paramInsightsContext;
          paramInsightsContext = ((String)localObject).getBytes("UTF-8");
        }
        catch (UnsupportedEncodingException paramInsightsContext)
        {
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
      catch (IOException paramInsightsContext)
      {
        logger.deve("Unable to open session file");
        logger.e("An error occurred while attempting to create/open the session file", paramInsightsContext);
      }
    }
  }
  
  /* Error */
  private void tryCloseReader()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 82	com/amazon/insights/session/FileSessionStore:reader	Lcom/amazon/insights/core/io/EncryptedBufferedReader;
    //   4: ifnull +29 -> 33
    //   7: aload_0
    //   8: getfield 74	com/amazon/insights/session/FileSessionStore:readSessionLock	Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;
    //   11: invokevirtual 215	java/util/concurrent/locks/ReentrantReadWriteLock$ReadLock:lock	()V
    //   14: aload_0
    //   15: getfield 82	com/amazon/insights/session/FileSessionStore:reader	Lcom/amazon/insights/core/io/EncryptedBufferedReader;
    //   18: invokevirtual 220	com/amazon/insights/core/io/EncryptedBufferedReader:close	()V
    //   21: aload_0
    //   22: aconst_null
    //   23: putfield 82	com/amazon/insights/session/FileSessionStore:reader	Lcom/amazon/insights/core/io/EncryptedBufferedReader;
    //   26: aload_0
    //   27: getfield 74	com/amazon/insights/session/FileSessionStore:readSessionLock	Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;
    //   30: invokevirtual 223	java/util/concurrent/locks/ReentrantReadWriteLock$ReadLock:unlock	()V
    //   33: return
    //   34: astore_1
    //   35: getstatic 50	com/amazon/insights/session/FileSessionStore:logger	Lcom/amazon/insights/core/log/Logger;
    //   38: ldc -31
    //   40: aload_1
    //   41: invokevirtual 210	com/amazon/insights/core/log/Logger:e	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   44: aload_0
    //   45: aconst_null
    //   46: putfield 82	com/amazon/insights/session/FileSessionStore:reader	Lcom/amazon/insights/core/io/EncryptedBufferedReader;
    //   49: goto -23 -> 26
    //   52: astore_1
    //   53: aload_0
    //   54: getfield 74	com/amazon/insights/session/FileSessionStore:readSessionLock	Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;
    //   57: invokevirtual 223	java/util/concurrent/locks/ReentrantReadWriteLock$ReadLock:unlock	()V
    //   60: aload_1
    //   61: athrow
    //   62: astore_1
    //   63: aload_0
    //   64: aconst_null
    //   65: putfield 82	com/amazon/insights/session/FileSessionStore:reader	Lcom/amazon/insights/core/io/EncryptedBufferedReader;
    //   68: aload_1
    //   69: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	70	0	this	FileSessionStore
    //   34	7	1	localIOException	IOException
    //   52	9	1	localObject1	Object
    //   62	7	1	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   14	21	34	java/io/IOException
    //   21	26	52	finally
    //   44	49	52	finally
    //   63	70	52	finally
    //   14	21	62	finally
    //   35	44	62	finally
  }
  
  private void tryCloseWriter(Writer paramWriter)
    throws SessionStoreException
  {
    if (paramWriter != null) {}
    try
    {
      paramWriter.close();
      return;
    }
    catch (IOException paramWriter)
    {
      logger.e("Unable to close writer for session file", paramWriter);
    }
  }
  
  private Writer tryInitializeWriter()
    throws SessionStoreException
  {
    try
    {
      EncryptedWriter localEncryptedWriter = new EncryptedWriter(new OutputStreamWriter(context.getSystem().getFileManager().newOutputStream(sessionFile, false)), secretKey);
      return localEncryptedWriter;
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      logger.e("Session file not found to persist session to", localFileNotFoundException);
      throw new EventStoreException("Unable to open session file writer", localFileNotFoundException);
    }
    catch (Exception localException)
    {
      logger.e("Unexpected exception", localException);
    }
    return null;
  }
  
  private boolean tryOpenReader()
  {
    if (reader != null) {
      return true;
    }
    try
    {
      InputStreamReader localInputStreamReader = new InputStreamReader(context.getSystem().getFileManager().newInputStream(sessionFile));
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
        logger.e("Could not open the session file", localFileNotFoundException);
        Object localObject = null;
      }
    }
    return false;
  }
  
  public Session getSession()
  {
    FileManager localFileManager2 = null;
    String str1 = null;
    readSessionLock.lock();
    Object localObject3;
    for (;;)
    {
      try
      {
        tryOpenReader();
        if (reader != null) {
          str1 = reader.readLine();
        }
      }
      catch (IOException localIOException1)
      {
        logger.e("Failed to read the session", localIOException1);
        tryCloseReader();
        FileManager localFileManager1 = context.getSystem().getFileManager();
        try
        {
          if (!localFileManager1.deleteFile(sessionFile))
          {
            localObject3 = localFileManager2;
            if (sessionFile.exists()) {
              continue;
            }
          }
          sessionFile = localFileManager1.createFile(sessionFile);
          localObject3 = localFileManager2;
        }
        catch (IOException localIOException2)
        {
          logger.e("Unable to clear session file", localIOException2);
          localObject3 = localFileManager2;
        }
        continue;
      }
      finally
      {
        tryCloseReader();
        localObject3 = context.getSystem().getFileManager();
      }
      try
      {
        tryCloseReader();
        localFileManager2 = context.getSystem().getFileManager();
        try
        {
          if (!localFileManager2.deleteFile(sessionFile))
          {
            str2 = str1;
            if (sessionFile.exists()) {}
          }
          else
          {
            sessionFile = localFileManager2.createFile(sessionFile);
            str2 = str1;
          }
        }
        catch (IOException localIOException3)
        {
          String str2;
          logger.e("Unable to clear session file", localIOException3);
          localObject3 = str1;
          continue;
        }
        return Session.getSessionFromSerializedSession(str2);
      }
      finally
      {
        readSessionLock.unlock();
      }
    }
    try
    {
      if ((((FileManager)localObject3).deleteFile(sessionFile)) || (!sessionFile.exists())) {
        sessionFile = ((FileManager)localObject3).createFile(sessionFile);
      }
    }
    catch (IOException localIOException4)
    {
      for (;;)
      {
        logger.e("Unable to clear session file", localIOException4);
      }
    }
    throw ((Throwable)localObject2);
  }
  
  public void storeSession(Session paramSession)
    throws SessionStoreException
  {
    String str = paramSession.toString();
    localObject = null;
    paramSession = null;
    writeSessionLock.lock();
    for (;;)
    {
      try
      {
        localWriter = tryInitializeWriter();
        if (localWriter != null)
        {
          paramSession = localWriter;
          localObject = localWriter;
          l = context.getConfiguration().optLong("maxStorageSize", Long.valueOf(22560L)).longValue();
          paramSession = localWriter;
          localObject = localWriter;
          if (sessionFile.length() + str.length() > l) {
            continue;
          }
          paramSession = localWriter;
          localObject = localWriter;
          localWriter.write(str);
          paramSession = localWriter;
          localObject = localWriter;
          localWriter.flush();
        }
      }
      catch (IOException localIOException)
      {
        Writer localWriter;
        long l;
        localObject = paramSession;
        logger.e("Failed to persist the session", localIOException);
        tryCloseWriter(paramSession);
        continue;
      }
      finally
      {
        tryCloseWriter((Writer)localObject);
      }
      try
      {
        tryCloseWriter(localWriter);
        return;
      }
      finally
      {
        writeSessionLock.unlock();
      }
      paramSession = localWriter;
      localObject = localWriter;
      logger.e("The session file exceeded its allowed size of " + l + " bytes");
    }
  }
}

/* Location:
 * Qualified Name:     com.amazon.insights.session.FileSessionStore
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */