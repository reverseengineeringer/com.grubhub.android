package com.taplytics;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.util.Iterator;
import java.util.List;
import org.apache.http.util.ByteArrayBuffer;

abstract class j
{
  private static final ByteArrayBuffer b = a(w.a, ": ");
  private static final ByteArrayBuffer c = a(w.a, "\r\n");
  private static final ByteArrayBuffer d = a(w.a, "--");
  protected final Charset a;
  private final String e;
  private final String f;
  
  public j(String paramString1, Charset paramCharset, String paramString2)
  {
    ao.a(paramString1, "Multipart subtype");
    ao.a(paramString2, "Multipart boundary");
    e = paramString1;
    if (paramCharset != null) {}
    for (;;)
    {
      a = paramCharset;
      f = paramString2;
      return;
      paramCharset = w.a;
    }
  }
  
  private static ByteArrayBuffer a(Charset paramCharset, String paramString)
  {
    paramCharset = paramCharset.encode(CharBuffer.wrap(paramString));
    paramString = new ByteArrayBuffer(paramCharset.remaining());
    paramString.append(paramCharset.array(), paramCharset.position(), paramCharset.remaining());
    return paramString;
  }
  
  protected static void a(x paramx, OutputStream paramOutputStream)
    throws IOException
  {
    a(paramx.a(), paramOutputStream);
    a(b, paramOutputStream);
    a(paramx.b(), paramOutputStream);
    a(c, paramOutputStream);
  }
  
  protected static void a(x paramx, Charset paramCharset, OutputStream paramOutputStream)
    throws IOException
  {
    a(paramx.a(), paramCharset, paramOutputStream);
    a(b, paramOutputStream);
    a(paramx.b(), paramCharset, paramOutputStream);
    a(c, paramOutputStream);
  }
  
  private static void a(String paramString, OutputStream paramOutputStream)
    throws IOException
  {
    a(a(w.a, paramString), paramOutputStream);
  }
  
  private static void a(String paramString, Charset paramCharset, OutputStream paramOutputStream)
    throws IOException
  {
    a(a(paramCharset, paramString), paramOutputStream);
  }
  
  private static void a(ByteArrayBuffer paramByteArrayBuffer, OutputStream paramOutputStream)
    throws IOException
  {
    paramOutputStream.write(paramByteArrayBuffer.buffer(), 0, paramByteArrayBuffer.length());
  }
  
  public abstract List<k> a();
  
  protected abstract void a(k paramk, OutputStream paramOutputStream)
    throws IOException;
  
  public void a(OutputStream paramOutputStream)
    throws IOException
  {
    a(paramOutputStream, true);
  }
  
  void a(OutputStream paramOutputStream, boolean paramBoolean)
    throws IOException
  {
    ByteArrayBuffer localByteArrayBuffer = a(a, b());
    Iterator localIterator = a().iterator();
    while (localIterator.hasNext())
    {
      k localk = (k)localIterator.next();
      a(d, paramOutputStream);
      a(localByteArrayBuffer, paramOutputStream);
      a(c, paramOutputStream);
      a(localk, paramOutputStream);
      a(c, paramOutputStream);
      if (paramBoolean) {
        localk.b().a(paramOutputStream);
      }
      a(c, paramOutputStream);
    }
    a(d, paramOutputStream);
    a(localByteArrayBuffer, paramOutputStream);
    a(d, paramOutputStream);
    a(c, paramOutputStream);
  }
  
  public String b()
  {
    return f;
  }
  
  public long c()
  {
    Object localObject = a().iterator();
    long l1 = 0L;
    while (((Iterator)localObject).hasNext())
    {
      long l2 = ((k)((Iterator)localObject).next()).b().f();
      if (l2 >= 0L) {
        l1 = l2 + l1;
      } else {
        return -1L;
      }
    }
    localObject = new ByteArrayOutputStream();
    try
    {
      a((OutputStream)localObject, false);
      int i = ((ByteArrayOutputStream)localObject).toByteArray().length;
      return i + l1;
    }
    catch (IOException localIOException) {}
    return -1L;
  }
}

/* Location:
 * Qualified Name:     com.taplytics.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */