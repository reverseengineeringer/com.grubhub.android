package com.urbanairship.actions;

import android.content.Intent;
import android.webkit.WebView;
import android.widget.ProgressBar;
import com.urbanairship.Logger;
import com.urbanairship.widget.UAWebView;
import com.urbanairship.widget.UAWebViewClient;

class LandingPageActivity$1
  extends UAWebViewClient
{
  LandingPageActivity$1(LandingPageActivity paramLandingPageActivity, ProgressBar paramProgressBar) {}
  
  public void onPageFinished(WebView paramWebView, String paramString)
  {
    super.onPageFinished(paramWebView, paramString);
    if (LandingPageActivity.access$000(this$0) != null)
    {
      switch (LandingPageActivity.access$000(this$0).intValue())
      {
      default: 
        LandingPageActivity.access$002(this$0, null);
        LandingPageActivity.access$100(this$0).loadData("", "text/html", null);
        return;
      }
      this$0.loadLandingPage(20000L);
      return;
    }
    if (LandingPageActivity.access$200(this$0) != -1) {
      LandingPageActivity.access$100(this$0).setBackgroundColor(LandingPageActivity.access$200(this$0));
    }
    LandingPageActivity.access$300(this$0, LandingPageActivity.access$100(this$0), val$progressBar);
  }
  
  public void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
  {
    if ((paramString2 != null) && (paramString2.equals(this$0.getIntent().getDataString())))
    {
      Logger.error("LandingPageActivity - Failed to load page " + paramString2 + " with error " + paramInt + " " + paramString1);
      LandingPageActivity.access$002(this$0, Integer.valueOf(paramInt));
    }
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.actions.LandingPageActivity.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */