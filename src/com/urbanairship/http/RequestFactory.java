package com.urbanairship.http;

import java.net.URL;

public class RequestFactory
{
  public Request createRequest(String paramString, URL paramURL)
  {
    return new Request(paramString, paramURL);
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.http.RequestFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */