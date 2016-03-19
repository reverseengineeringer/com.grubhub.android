package com.a.a;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.net.http.SslError;
import android.webkit.ConsoleMessage;
import android.webkit.CookieSyncManager;
import android.webkit.SslErrorHandler;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebSettings.PluginState;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.a.d;
import java.net.MalformedURLException;
import java.net.URL;
import org.apache.http.HttpException;

public final class h
  extends a
{
  private boolean h;
  private WebView i;
  
  public h(Activity paramActivity, c paramc, d paramd, long paramLong)
  {
    super(paramActivity, paramc, paramd, b.WEB, paramLong);
  }
  
  private void a(WebView paramWebView, int paramInt, String paramString1, String paramString2)
  {
    a("onReceivedError(code:%d, desc:%s, url:%s)", new Object[] { Integer.valueOf(paramInt), paramString1, paramString2 });
    a(g.SERVICE_UNAVAILABLE, null);
  }
  
  private void a(WebView paramWebView, SslErrorHandler paramSslErrorHandler, SslError paramSslError)
  {
    a("onReceivedSslError(%s)", new Object[] { paramSslError });
    int j = paramSslError.getPrimaryError();
    if ((3 == j) || (2 == j))
    {
      a("Ignoring trust chain validation error.", new Object[0]);
      paramSslErrorHandler.proceed();
      return;
    }
    a("Halting due to SSL error.", new Object[0]);
    a(g.SERVICE_UNAVAILABLE, new HttpException("SSL ERROR:" + paramSslError.getPrimaryError()));
    paramSslErrorHandler.cancel();
  }
  
  private void a(WebView paramWebView, String paramString)
  {
    a("onLoadResource(%s)", new Object[] { paramString });
    try
    {
      paramWebView = new URL(paramString);
      if ((paramWebView.getPath().endsWith("logo.htm")) || (paramWebView.getPath().endsWith("logo.php")))
      {
        h = true;
        b.a("https://" + paramWebView.getHost());
      }
      return;
    }
    catch (MalformedURLException paramWebView)
    {
      a("Unexpected URL problem [%s]", new Object[] { paramWebView.getMessage() });
    }
  }
  
  private boolean a(ConsoleMessage paramConsoleMessage)
  {
    a("onConsoleMessage(%s)", new Object[] { paramConsoleMessage.message() });
    if (paramConsoleMessage.message().startsWith("●～*"))
    {
      if (paramConsoleMessage.message().substring("●～*".length()).equals("<head></head><body></body>")) {
        a(g.SERVICE_UNAVAILABLE, new IllegalStateException("Error response received from Device Collector."));
      }
    }
    else {
      return true;
    }
    if (!h)
    {
      a(g.SERVICE_UNAVAILABLE, new IllegalStateException("Never loaded logo.htm."));
      return true;
    }
    a(null, null);
    return true;
  }
  
  private void b(WebView paramWebView, String paramString)
  {
    a("onPageFinished(%s)", new Object[] { paramString });
    CookieSyncManager.getInstance().sync();
    paramWebView.loadUrl("javascript:console.log(" + "'" + "●～*" + "'" + "+" + "document.getElementsByTagName('html')[0].innerHTML" + ");");
  }
  
  private boolean c(WebView paramWebView, String paramString)
  {
    a("shouldOverrideUrlLoading(%s)", new Object[] { paramString });
    return false;
  }
  
  @SuppressLint({"SetJavaScriptEnabled"})
  protected void a()
  {
    final String str = b.d() + "?m=" + b.a() + "&s=" + b.b();
    a("Calling URL: %s", new Object[] { str });
    a.runOnUiThread(new Runnable()
    {
      public void run()
      {
        h localh = h.this;
        h.a(localh, new WebView(a.getApplicationContext()));
        WebSettings localWebSettings = h.a(localh).getSettings();
        localWebSettings.setJavaScriptEnabled(true);
        localWebSettings.setDomStorageEnabled(true);
        localWebSettings.setPluginState(WebSettings.PluginState.ON);
        h.a(localh).setWebViewClient(new WebViewClient()
        {
          h a = h.this;
          
          public void onLoadResource(WebView paramAnonymous2WebView, String paramAnonymous2String)
          {
            h.a(a, paramAnonymous2WebView, paramAnonymous2String);
          }
          
          public void onPageFinished(WebView paramAnonymous2WebView, String paramAnonymous2String)
          {
            h.b(a, paramAnonymous2WebView, paramAnonymous2String);
          }
          
          public void onReceivedError(WebView paramAnonymous2WebView, int paramAnonymous2Int, String paramAnonymous2String1, String paramAnonymous2String2)
          {
            h.a(a, paramAnonymous2WebView, paramAnonymous2Int, paramAnonymous2String1, paramAnonymous2String2);
          }
          
          public void onReceivedSslError(WebView paramAnonymous2WebView, SslErrorHandler paramAnonymous2SslErrorHandler, SslError paramAnonymous2SslError)
          {
            h.a(a, paramAnonymous2WebView, paramAnonymous2SslErrorHandler, paramAnonymous2SslError);
          }
          
          public boolean shouldOverrideUrlLoading(WebView paramAnonymous2WebView, String paramAnonymous2String)
          {
            return h.c(a, paramAnonymous2WebView, paramAnonymous2String);
          }
        });
        h.a(localh).setWebChromeClient(new WebChromeClient()
        {
          public boolean onConsoleMessage(ConsoleMessage paramAnonymous2ConsoleMessage)
          {
            return h.a(h.this, paramAnonymous2ConsoleMessage);
          }
        });
        h.a(localh).loadUrl(str);
      }
    });
    try
    {
      a("Waiting on Collector for %d ms", new Object[] { Long.valueOf(f()) });
      wait(f());
      a("Wait finished", new Object[0]);
      if (!c()) {
        e();
      }
      for (;;)
      {
        return;
        a("Current Host: %s", new Object[] { b.c() });
        a(null, null);
      }
    }
    catch (InterruptedException localInterruptedException)
    {
      for (;;)
      {
        a(g.SERVICE_UNAVAILABLE, localInterruptedException);
      }
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     com.a.a.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */