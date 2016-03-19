package com.a.a;

import android.net.http.SslError;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;

class h$1$1
  extends WebViewClient
{
  h a = b.b;
  
  h$1$1(h.1 param1) {}
  
  public void onLoadResource(WebView paramWebView, String paramString)
  {
    h.a(a, paramWebView, paramString);
  }
  
  public void onPageFinished(WebView paramWebView, String paramString)
  {
    h.b(a, paramWebView, paramString);
  }
  
  public void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
  {
    h.a(a, paramWebView, paramInt, paramString1, paramString2);
  }
  
  public void onReceivedSslError(WebView paramWebView, SslErrorHandler paramSslErrorHandler, SslError paramSslError)
  {
    h.a(a, paramWebView, paramSslErrorHandler, paramSslError);
  }
  
  public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    return h.c(a, paramWebView, paramString);
  }
}

/* Location:
 * Qualified Name:     com.a.a.h.1.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */