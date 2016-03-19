package com.facebook.internal;

import android.app.ProgressDialog;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Bundle;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.facebook.g;
import com.facebook.j;
import com.facebook.p;

class as
  extends WebViewClient
{
  private as(aq paramaq) {}
  
  public void onPageFinished(WebView paramWebView, String paramString)
  {
    super.onPageFinished(paramWebView, paramString);
    if (!aq.b(a)) {
      aq.c(a).dismiss();
    }
    aq.d(a).setBackgroundColor(0);
    aq.e(a).setVisibility(0);
    aq.f(a).setVisibility(0);
    aq.a(a, true);
  }
  
  public void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
  {
    al.b("FacebookSDK.WebDialog", "Webview loading URL: " + paramString);
    super.onPageStarted(paramWebView, paramString, paramBitmap);
    if (!aq.b(a)) {
      aq.c(a).show();
    }
  }
  
  public void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
  {
    super.onReceivedError(paramWebView, paramInt, paramString1, paramString2);
    a.a(new g(paramString1, paramInt, paramString2));
  }
  
  public void onReceivedSslError(WebView paramWebView, SslErrorHandler paramSslErrorHandler, SslError paramSslError)
  {
    super.onReceivedSslError(paramWebView, paramSslErrorHandler, paramSslError);
    paramSslErrorHandler.cancel();
    a.a(new g(null, -11, null));
  }
  
  public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    boolean bool = false;
    al.b("FacebookSDK.WebDialog", "Redirect URL: " + paramString);
    Bundle localBundle;
    Object localObject;
    if (paramString.startsWith(aq.a(a)))
    {
      localBundle = a.a(paramString);
      paramWebView = localBundle.getString("error");
      paramString = paramWebView;
      if (paramWebView == null) {
        paramString = localBundle.getString("error_type");
      }
      localObject = localBundle.getString("error_msg");
      paramWebView = (WebView)localObject;
      if (localObject == null) {
        paramWebView = localBundle.getString("error_message");
      }
      localObject = paramWebView;
      if (paramWebView == null) {
        localObject = localBundle.getString("error_description");
      }
      paramWebView = localBundle.getString("error_code");
      if (al.a(paramWebView)) {
        break label311;
      }
    }
    for (;;)
    {
      int i;
      try
      {
        i = Integer.parseInt(paramWebView);
        if ((al.a(paramString)) && (al.a((String)localObject)) && (i == -1))
        {
          a.a(localBundle);
          bool = true;
          return bool;
        }
      }
      catch (NumberFormatException paramWebView)
      {
        i = -1;
        continue;
        if ((paramString != null) && ((paramString.equals("access_denied")) || (paramString.equals("OAuthAccessDeniedException"))))
        {
          a.cancel();
          continue;
        }
        if (i == 4201)
        {
          a.cancel();
          continue;
        }
        paramWebView = new j(i, paramString, (String)localObject);
        a.a(new p(paramWebView, (String)localObject));
        continue;
      }
      if (paramString.startsWith("fbconnect://cancel"))
      {
        a.cancel();
        return true;
      }
      if (!paramString.contains("touch"))
      {
        try
        {
          a.getContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(paramString)));
          return true;
        }
        catch (ActivityNotFoundException paramWebView)
        {
          return false;
        }
        label311:
        i = -1;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.as
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */