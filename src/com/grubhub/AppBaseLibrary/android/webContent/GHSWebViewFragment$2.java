package com.grubhub.AppBaseLibrary.android.webContent;

import android.os.Handler;
import android.webkit.WebChromeClient;
import android.webkit.WebView;

class GHSWebViewFragment$2
  extends WebChromeClient
{
  GHSWebViewFragment$2(GHSWebViewFragment paramGHSWebViewFragment, Runnable paramRunnable) {}
  
  public void onProgressChanged(WebView paramWebView, int paramInt)
  {
    if (paramInt >= 100)
    {
      GHSWebViewFragment.a(b).removeCallbacks(a);
      if (!GHSWebViewFragment.c(b)) {
        GHSWebViewFragment.d(b);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.webContent.GHSWebViewFragment.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */