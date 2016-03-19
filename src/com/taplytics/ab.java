package com.taplytics;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.message.BasicHeader;

class ab
  implements HttpEntity
{
  private final j a;
  private final Header b;
  private final long c;
  
  ab(j paramj, String paramString, long paramLong)
  {
    a = paramj;
    b = new BasicHeader("Content-Type", paramString);
    c = paramLong;
  }
  
  public void consumeContent()
    throws IOException, UnsupportedOperationException
  {
    if (isStreaming()) {
      throw new UnsupportedOperationException("Streaming entity does not implement #consumeContent()");
    }
  }
  
  public InputStream getContent()
    throws IOException
  {
    throw new UnsupportedOperationException("Multipart form entity does not implement #getContent()");
  }
  
  public Header getContentEncoding()
  {
    return null;
  }
  
  public long getContentLength()
  {
    return c;
  }
  
  public Header getContentType()
  {
    return b;
  }
  
  public boolean isChunked()
  {
    return !isRepeatable();
  }
  
  public boolean isRepeatable()
  {
    return c != -1L;
  }
  
  public boolean isStreaming()
  {
    return !isRepeatable();
  }
  
  public void writeTo(OutputStream paramOutputStream)
    throws IOException
  {
    a.a(paramOutputStream);
  }
}

/* Location:
 * Qualified Name:     com.taplytics.ab
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */