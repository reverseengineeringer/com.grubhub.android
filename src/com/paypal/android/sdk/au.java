package com.paypal.android.sdk;

import org.apache.http.Header;
import org.apache.http.HeaderElement;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.HttpResponseInterceptor;
import org.apache.http.protocol.HttpContext;

final class au
  implements HttpResponseInterceptor
{
  au(as paramas) {}
  
  public final void process(HttpResponse paramHttpResponse, HttpContext paramHttpContext)
  {
    paramHttpContext = paramHttpResponse.getEntity();
    if (paramHttpContext == null) {}
    for (;;)
    {
      return;
      paramHttpContext = paramHttpContext.getContentEncoding();
      if (paramHttpContext != null)
      {
        paramHttpContext = paramHttpContext.getElements();
        int j = paramHttpContext.length;
        int i = 0;
        while (i < j)
        {
          if (paramHttpContext[i].getName().equalsIgnoreCase("gzip"))
          {
            paramHttpResponse.setEntity(new av(paramHttpResponse.getEntity()));
            return;
          }
          i += 1;
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.paypal.android.sdk.au
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */