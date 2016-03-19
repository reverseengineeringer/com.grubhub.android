package org.keyczar;

import java.io.File;
import org.keyczar.exceptions.KeyczarException;
import org.keyczar.interfaces.KeyczarReader;

public class KeyczarFileReader
  implements KeyczarReader
{
  static final String META_FILE = "meta";
  private String location;
  
  public KeyczarFileReader(String paramString)
  {
    String str = paramString;
    if (paramString != null)
    {
      str = paramString;
      if (!paramString.endsWith(File.separator)) {
        str = paramString + File.separator;
      }
    }
    location = str;
  }
  
  /* Error */
  private String readFile(String paramString)
    throws KeyczarException
  {
    // Byte code:
    //   0: new 49	java/io/FileInputStream
    //   3: dup
    //   4: new 18	java/io/File
    //   7: dup
    //   8: aload_1
    //   9: invokespecial 51	java/io/File:<init>	(Ljava/lang/String;)V
    //   12: invokespecial 54	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   15: astore_2
    //   16: new 23	java/lang/String
    //   19: dup
    //   20: aload_2
    //   21: invokestatic 60	org/keyczar/util/Util:readStreamFully	(Ljava/io/InputStream;)[B
    //   24: invokespecial 63	java/lang/String:<init>	([B)V
    //   27: astore_3
    //   28: aload_2
    //   29: invokevirtual 66	java/io/FileInputStream:close	()V
    //   32: aload_3
    //   33: areturn
    //   34: astore_3
    //   35: aload_2
    //   36: invokevirtual 66	java/io/FileInputStream:close	()V
    //   39: aload_3
    //   40: athrow
    //   41: astore_2
    //   42: new 45	org/keyczar/exceptions/KeyczarException
    //   45: dup
    //   46: ldc 68
    //   48: iconst_1
    //   49: anewarray 4	java/lang/Object
    //   52: dup
    //   53: iconst_0
    //   54: aload_1
    //   55: aastore
    //   56: invokestatic 74	org/keyczar/i18n/Messages:getString	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   59: aload_2
    //   60: invokespecial 77	org/keyczar/exceptions/KeyczarException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   63: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	64	0	this	KeyczarFileReader
    //   0	64	1	paramString	String
    //   15	21	2	localFileInputStream	java.io.FileInputStream
    //   41	19	2	localIOException	java.io.IOException
    //   27	6	3	str	String
    //   34	6	3	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   16	28	34	finally
    //   0	16	41	java/io/IOException
    //   28	32	41	java/io/IOException
    //   35	41	41	java/io/IOException
  }
  
  public String getKey()
    throws KeyczarException
  {
    return getKey(KeyMetadata.read(getMetadata()).getPrimaryVersion().getVersionNumber());
  }
  
  public String getKey(int paramInt)
    throws KeyczarException
  {
    return readFile(location + paramInt);
  }
  
  public String getMetadata()
    throws KeyczarException
  {
    return readFile(location + "meta");
  }
}

/* Location:
 * Qualified Name:     org.keyczar.KeyczarFileReader
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */