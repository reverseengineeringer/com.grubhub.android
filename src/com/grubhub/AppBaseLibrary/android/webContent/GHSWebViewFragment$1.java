package com.grubhub.AppBaseLibrary.android.webContent;

import android.os.Handler;
import android.webkit.WebView;
import android.webkit.WebViewClient;

class GHSWebViewFragment$1
  extends WebViewClient
{
  GHSWebViewFragment$1(GHSWebViewFragment paramGHSWebViewFragment, Runnable paramRunnable) {}
  
  public void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
  {
    GHSWebViewFragment.a(b).removeCallbacks(a);
    GHSWebViewFragment.b(b);
  }
  
  public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    paramWebView.loadUrl(paramString);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.webContent.GHSWebViewFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */