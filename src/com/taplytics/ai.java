package com.taplytics;

import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Locale;
import org.apache.http.NameValuePair;
import org.apache.http.message.BasicHeaderValueFormatter;
import org.apache.http.util.CharArrayBuffer;

public final class ai
  implements Serializable
{
  public static final ai a = a("application/atom+xml", ae.c);
  public static final ai b = a("application/x-www-form-urlencoded", ae.c);
  public static final ai c = a("application/json", ae.a);
  public static final ai d = a("application/octet-stream", (Charset)null);
  public static final ai e = a("application/svg+xml", ae.c);
  public static final ai f = a("application/xhtml+xml", ae.c);
  public static final ai g = a("application/xml", ae.c);
  public static final ai h = a("multipart/form-data", ae.c);
  public static final ai i = a("text/html", ae.c);
  public static final ai j = a("text/plain", ae.c);
  public static final ai k = a("text/xml", ae.c);
  public static final ai l = a("*/*", (Charset)null);
  public static final ai m = j;
  public static final ai n = d;
  private static final long serialVersionUID = -7768694718232371896L;
  private final String o;
  private final Charset p;
  private final NameValuePair[] q;
  
  ai(String paramString, Charset paramCharset)
  {
    o = paramString;
    p = paramCharset;
    q = null;
  }
  
  public static ai a(String paramString)
  {
    return new ai(paramString, (Charset)null);
  }
  
  public static ai a(String paramString, Charset paramCharset)
  {
    paramString = ((String)ao.a(paramString, "MIME type")).toLowerCase(Locale.ROOT);
    ao.a(b(paramString), "MIME type may not contain reserved characters");
    return new ai(paramString, paramCharset);
  }
  
  private static boolean b(String paramString)
  {
    int i1 = 0;
    while (i1 < paramString.length())
    {
      int i2 = paramString.charAt(i1);
      if ((i2 == 34) || (i2 == 44) || (i2 == 59)) {
        return false;
      }
      i1 += 1;
    }
    return true;
  }
  
  public String a()
  {
    return o;
  }
  
  public Charset b()
  {
    return p;
  }
  
  public String toString()
  {
    CharArrayBuffer localCharArrayBuffer = new CharArrayBuffer(64);
    localCharArrayBuffer.append(o);
    if (q != null)
    {
      localCharArrayBuffer.append("; ");
      BasicHeaderValueFormatter.DEFAULT.formatParameters(localCharArrayBuffer, q, false);
    }
    for (;;)
    {
      return localCharArrayBuffer.toString();
      if (p != null)
      {
        localCharArrayBuffer.append("; charset=");
        localCharArrayBuffer.append(p.name());
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.taplytics.ai
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */