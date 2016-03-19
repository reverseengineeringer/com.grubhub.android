package com.a.a;

import android.app.Activity;
import android.net.http.SslError;
import android.webkit.ConsoleMessage;
import android.webkit.SslErrorHandler;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebSettings.PluginState;
import android.webkit.WebView;
import android.webkit.WebViewClient;

class h$1
  implements Runnable
{
  h$1(h paramh, String paramString) {}
  
  public void run()
  {
    h localh = b;
    h.a(localh, new WebView(b.a.getApplicationContext()));
    WebSettings localWebSettings = h.a(localh).getSettings();
    localWebSettings.setJavaScriptEnabled(true);
    localWebSettings.setDomStorageEnabled(true);
    localWebSettings.setPluginState(WebSettings.PluginState.ON);
    h.a(localh).setWebViewClient(new WebViewClient()
    {
      h a = b;
      
      public void onLoadResource(WebView paramAnonymousWebView, String paramAnonymousString)
      {
        h.a(a, paramAnonymousWebView, paramAnonymousString);
      }
      
      public void onPageFinished(WebView paramAnonymousWebView, String paramAnonymousString)
      {
        h.b(a, paramAnonymousWebView, paramAnonymousString);
      }
      
      public void onReceivedError(WebView paramAnonymousWebView, int paramAnonymousInt, String paramAnonymousString1, String paramAnonymousString2)
      {
        h.a(a, paramAnonymousWebView, paramAnonymousInt, paramAnonymousString1, paramAnonymousString2);
      }
      
      public void onReceivedSslError(WebView paramAnonymousWebView, SslErrorHandler paramAnonymousSslErrorHandler, SslError paramAnonymousSslError)
      {
        h.a(a, paramAnonymousWebView, paramAnonymousSslErrorHandler, paramAnonymousSslError);
      }
      
      public boolean shouldOverrideUrlLoading(WebView paramAnonymousWebView, String paramAnonymousString)
      {
        return h.c(a, paramAnonymousWebView, paramAnonymousString);
      }
    });
    h.a(localh).setWebChromeClient(new WebChromeClient()
    {
      public boolean onConsoleMessage(ConsoleMessage paramAnonymousConsoleMessage)
      {
        return h.a(b, paramAnonymousConsoleMessage);
      }
    });
    h.a(localh).loadUrl(a);
  }
}

/* Location:
 * Qualified Name:     com.a.a.h.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */