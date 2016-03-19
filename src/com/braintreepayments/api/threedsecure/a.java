package com.braintreepayments.api.threedsecure;

import android.os.Message;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebView.WebViewTransport;

public class a
  extends WebChromeClient
{
  private ThreeDSecureWebViewActivity a;
  
  public a(ThreeDSecureWebViewActivity paramThreeDSecureWebViewActivity)
  {
    a = paramThreeDSecureWebViewActivity;
  }
  
  public void onCloseWindow(WebView paramWebView)
  {
    a.a();
  }
  
  public boolean onCreateWindow(WebView paramWebView, boolean paramBoolean1, boolean paramBoolean2, Message paramMessage)
  {
    paramWebView = new b(a);
    paramWebView.a(a);
    a.a(paramWebView);
    ((WebView.WebViewTransport)obj).setWebView(paramWebView);
    paramMessage.sendToTarget();
    return true;
  }
  
  public void onProgressChanged(WebView paramWebView, int paramInt)
  {
    super.onProgressChanged(paramWebView, paramInt);
    if (paramInt < 100)
    {
      a.setProgress(paramInt);
      a.setProgressBarVisibility(true);
      return;
    }
    a.setProgressBarVisibility(false);
  }
}

/* Location:
 * Qualified Name:     com.braintreepayments.api.threedsecure.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */