package com.braintreepayments.api.threedsecure;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.os.Build.VERSION;
import android.webkit.WebSettings;
import android.webkit.WebView;

@SuppressLint({"SetJavaScriptEnabled"})
public class b
  extends WebView
{
  public b(Context paramContext)
  {
    super(paramContext);
  }
  
  @TargetApi(11)
  private void a(WebSettings paramWebSettings)
  {
    if (Build.VERSION.SDK_INT >= 11) {
      paramWebSettings.setDisplayZoomControls(false);
    }
  }
  
  protected void a(ThreeDSecureWebViewActivity paramThreeDSecureWebViewActivity)
  {
    setId(16908312);
    WebSettings localWebSettings = getSettings();
    localWebSettings.setUserAgentString(com.braintreepayments.api.b.b.a());
    localWebSettings.setCacheMode(1);
    localWebSettings.setSupportMultipleWindows(true);
    localWebSettings.setJavaScriptEnabled(true);
    localWebSettings.setBuiltInZoomControls(true);
    a(localWebSettings);
    setWebChromeClient(new a(paramThreeDSecureWebViewActivity));
    setWebViewClient(new c(paramThreeDSecureWebViewActivity));
  }
}

/* Location:
 * Qualified Name:     com.braintreepayments.api.threedsecure.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */