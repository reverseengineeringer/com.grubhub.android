package org.keyczar.experimental;

import java.net.URI;
import java.net.URISyntaxException;
import java.util.Iterator;
import java.util.TreeSet;
import org.keyczar.Signer;
import org.keyczar.annotations.Experimental;
import org.keyczar.exceptions.KeyczarException;
import org.keyczar.interfaces.KeyczarReader;

@Experimental
public class UriSigner
{
  private static final String DEFAULT_SIG_PARAM = "sig";
  private Signer signer;
  
  public UriSigner(String paramString)
    throws KeyczarException
  {
    signer = new Signer(paramString);
  }
  
  public UriSigner(KeyczarReader paramKeyczarReader)
    throws KeyczarException
  {
    signer = new Signer(paramKeyczarReader);
  }
  
  private String canonicalQuery(String paramString)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    TreeSet localTreeSet = new TreeSet();
    if (paramString != null)
    {
      paramString = paramString.split("&");
      int j = paramString.length;
      int i = 0;
      while (i < j)
      {
        localTreeSet.add(paramString[i]);
        i += 1;
      }
      paramString = localTreeSet.iterator();
      while (paramString.hasNext()) {
        localStringBuffer.append((String)paramString.next()).append('&');
      }
      localStringBuffer.deleteCharAt(localStringBuffer.length() - 1);
    }
    return localStringBuffer.toString();
  }
  
  private URI canonicalUri(URI paramURI)
    throws URISyntaxException
  {
    if (paramURI == null) {
      return null;
    }
    return new URI(paramURI.getScheme(), paramURI.getAuthority(), paramURI.getPath(), canonicalQuery(paramURI.getQuery()), paramURI.getFragment());
  }
  
  public URI sign(URI paramURI)
    throws KeyczarException
  {
    return sign(paramURI, "sig");
  }
  
  /* Error */
  public URI sign(URI paramURI, String paramString)
    throws KeyczarException
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: invokespecial 114	org/keyczar/experimental/UriSigner:canonicalUri	(Ljava/net/URI;)Ljava/net/URI;
    //   5: astore_3
    //   6: aload_3
    //   7: invokevirtual 117	java/net/URI:toASCIIString	()Ljava/lang/String;
    //   10: astore_1
    //   11: aload_0
    //   12: getfield 24	org/keyczar/experimental/UriSigner:signer	Lorg/keyczar/Signer;
    //   15: aload_1
    //   16: invokevirtual 119	org/keyczar/Signer:sign	(Ljava/lang/String;)Ljava/lang/String;
    //   19: astore_1
    //   20: new 121	java/lang/StringBuilder
    //   23: dup
    //   24: invokespecial 122	java/lang/StringBuilder:<init>	()V
    //   27: aload_2
    //   28: invokevirtual 125	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   31: ldc 127
    //   33: invokevirtual 125	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   36: aload_1
    //   37: invokevirtual 125	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   40: invokevirtual 128	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   43: astore_2
    //   44: aload_3
    //   45: invokevirtual 100	java/net/URI:getQuery	()Ljava/lang/String;
    //   48: astore 4
    //   50: aload_2
    //   51: astore_1
    //   52: aload 4
    //   54: ifnull +28 -> 82
    //   57: new 121	java/lang/StringBuilder
    //   60: dup
    //   61: invokespecial 122	java/lang/StringBuilder:<init>	()V
    //   64: aload 4
    //   66: invokevirtual 125	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   69: ldc 39
    //   71: invokevirtual 125	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   74: aload_2
    //   75: invokevirtual 125	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   78: invokevirtual 128	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   81: astore_1
    //   82: new 88	java/net/URI
    //   85: dup
    //   86: aload_3
    //   87: invokevirtual 91	java/net/URI:getScheme	()Ljava/lang/String;
    //   90: aload_3
    //   91: invokevirtual 94	java/net/URI:getAuthority	()Ljava/lang/String;
    //   94: aload_3
    //   95: invokevirtual 97	java/net/URI:getPath	()Ljava/lang/String;
    //   98: aload_1
    //   99: aload_3
    //   100: invokevirtual 105	java/net/URI:getFragment	()Ljava/lang/String;
    //   103: invokespecial 108	java/net/URI:<init>	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   106: astore_1
    //   107: aload_1
    //   108: areturn
    //   109: astore_1
    //   110: new 15	org/keyczar/exceptions/KeyczarException
    //   113: dup
    //   114: aload_1
    //   115: invokespecial 131	org/keyczar/exceptions/KeyczarException:<init>	(Ljava/lang/Throwable;)V
    //   118: athrow
    //   119: astore_1
    //   120: new 15	org/keyczar/exceptions/KeyczarException
    //   123: dup
    //   124: aload_1
    //   125: invokespecial 131	org/keyczar/exceptions/KeyczarException:<init>	(Ljava/lang/Throwable;)V
    //   128: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	129	0	this	UriSigner
    //   0	129	1	paramURI	URI
    //   0	129	2	paramString	String
    //   5	95	3	localURI	URI
    //   48	17	4	str	String
    // Exception table:
    //   from	to	target	type
    //   0	6	109	java/net/URISyntaxException
    //   82	107	119	java/net/URISyntaxException
  }
  
  public boolean verify(URI paramURI)
    throws KeyczarException
  {
    return verify(paramURI, "sig");
  }
  
  public boolean verify(URI paramURI, String paramString)
    throws KeyczarException
  {
    String str = null;
    if (paramURI == null) {
      return false;
    }
    Object localObject = paramURI.getQuery();
    if (localObject == null) {
      return false;
    }
    StringBuffer localStringBuffer = new StringBuffer();
    localObject = ((String)localObject).split("&");
    int j = localObject.length;
    int i = 0;
    if (i < j)
    {
      String[] arrayOfString = localObject[i];
      if (arrayOfString.startsWith(paramString))
      {
        arrayOfString = arrayOfString.split("=");
        if (arrayOfString.length != 2) {
          break label110;
        }
        str = arrayOfString[1];
      }
      label110:
      for (;;)
      {
        i += 1;
        break;
        localStringBuffer.append(arrayOfString).append('&');
      }
    }
    if (str == null) {
      return false;
    }
    try
    {
      if (localStringBuffer.length() > 0) {
        localStringBuffer.deleteCharAt(localStringBuffer.length() - 1);
      }
      for (paramURI = new URI(paramURI.getScheme(), paramURI.getAuthority(), paramURI.getPath(), localStringBuffer.toString(), paramURI.getFragment());; paramURI = new URI(paramURI.getScheme(), paramURI.getAuthority(), paramURI.getPath(), null, paramURI.getFragment()))
      {
        paramURI = canonicalUri(paramURI);
        return signer.verify(paramURI.toASCIIString(), str);
      }
      return false;
    }
    catch (URISyntaxException paramURI) {}
  }
}

/* Location:
 * Qualified Name:     org.keyczar.experimental.UriSigner
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */