package com.amazon.insights.core.http;

import com.amazon.insights.core.util.SDKInfo;

public final class SDKInfoInterceptor
  implements HttpClient.Interceptor
{
  static final String CLIENT_SDK_VERSION_HEADER_NAME = "x-amzn-ClientSDKVersion";
  private final SDKInfo sdkInfo;
  
  public SDKInfoInterceptor(SDKInfo paramSDKInfo)
  {
    sdkInfo = paramSDKInfo;
  }
  
  public void after(HttpClient.Response paramResponse) {}
  
  public void before(HttpClient.Request paramRequest)
  {
    if (paramRequest != null) {
      paramRequest.addHeader("x-amzn-ClientSDKVersion", String.format("%s", new Object[] { sdkInfo.toString() }));
    }
  }
}

/* Location:
 * Qualified Name:     com.amazon.insights.core.http.SDKInfoInterceptor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */