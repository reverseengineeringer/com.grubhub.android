package com.paypal.android.sdk;

import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.protocol.HttpContext;

final class at
  implements HttpRequestInterceptor
{
  at(as paramas) {}
  
  public final void process(HttpRequest paramHttpRequest, HttpContext paramHttpContext)
  {
    if (!paramHttpRequest.containsHeader("Accept-Encoding")) {
      paramHttpRequest.addHeader("Accept-Encoding", "gzip");
    }
    paramHttpContext = as.a(a).keySet().iterator();
    while (paramHttpContext.hasNext())
    {
      String str = (String)paramHttpContext.next();
      paramHttpRequest.addHeader(str, (String)as.a(a).get(str));
    }
  }
}

/* Location:
 * Qualified Name:     com.paypal.android.sdk.at
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */