package com.urbanairship.widget;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.net.Uri;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.util.Base64;
import android.view.MotionEvent;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.urbanairship.AirshipConfigOptions;
import com.urbanairship.Logger;
import com.urbanairship.R.styleable;
import com.urbanairship.UAirship;
import com.urbanairship.richpush.RichPushManager;
import com.urbanairship.richpush.RichPushMessage;
import com.urbanairship.richpush.RichPushUser;
import java.io.File;
import java.util.HashMap;
import java.util.Map;

public class UAWebView
  extends WebView
{
  private static final String CACHE_DIRECTORY = "urbanairship";
  private String currentClientAuthRequestUrl;
  private RichPushMessage currentMessage;
  private WebViewClient webViewClient;
  
  public UAWebView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public UAWebView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 16842885);
  }
  
  public UAWebView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    if (!isInEditMode()) {
      init(paramContext, paramAttributeSet, paramInt, 0);
    }
  }
  
  @TargetApi(21)
  public UAWebView(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    super(paramContext, paramAttributeSet, paramInt1, paramInt2);
    if (!isInEditMode()) {
      init(paramContext, paramAttributeSet, paramInt1, paramInt2);
    }
  }
  
  private String createBasicAuth(String paramString1, String paramString2)
  {
    paramString1 = paramString1 + ":" + paramString2;
    return "Basic " + Base64.encodeToString(paramString1.getBytes(), 2);
  }
  
  private String getCachePath()
  {
    File localFile = new File(UAirship.getApplicationContext().getCacheDir(), "urbanairship");
    if (!localFile.exists()) {
      localFile.mkdirs();
    }
    return localFile.getAbsolutePath();
  }
  
  @SuppressLint({"NewApi", "SetJavaScriptEnabled"})
  private void init(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    WebSettings localWebSettings = getSettings();
    if (Build.VERSION.SDK_INT >= 7)
    {
      localWebSettings.setAppCacheEnabled(true);
      localWebSettings.setAppCachePath(getCachePath());
      localWebSettings.setDomStorageEnabled(true);
    }
    if ((Build.VERSION.SDK_INT >= 21) && (paramAttributeSet != null)) {
      paramContext = paramContext.getTheme().obtainStyledAttributes(paramAttributeSet, R.styleable.UAWebView, paramInt1, paramInt2);
    }
    try
    {
      localWebSettings.setMixedContentMode(paramContext.getInteger(R.styleable.UAWebView_mixed_content_mode, 2));
      paramContext.recycle();
      localWebSettings.setAllowFileAccess(true);
      localWebSettings.setJavaScriptEnabled(true);
      localWebSettings.setCacheMode(-1);
      initializeView();
      return;
    }
    finally
    {
      paramContext.recycle();
    }
  }
  
  @SuppressLint({"NewApi"})
  private void onPreLoad()
  {
    currentMessage = null;
    if (getWebViewClient() == null)
    {
      Logger.info("No web view client set, setting a default UAWebViewClient for landing page view.");
      setWebViewClient(new UAWebViewClient());
    }
    if ((currentClientAuthRequestUrl != null) && (getWebViewClient() != null) && ((getWebViewClient() instanceof UAWebViewClient)))
    {
      ((UAWebViewClient)getWebViewClient()).removeAuthRequestCredentials(currentClientAuthRequestUrl);
      currentClientAuthRequestUrl = null;
    }
  }
  
  private void setClientAuthRequest(String paramString1, String paramString2, String paramString3)
  {
    if (paramString1 == null) {}
    do
    {
      return;
      currentClientAuthRequestUrl = paramString1;
    } while ((getWebViewClient() == null) || (!(getWebViewClient() instanceof UAWebViewClient)));
    ((UAWebViewClient)getWebViewClient()).addAuthRequestCredentials(Uri.parse(paramString1).getHost(), paramString2, paramString3);
  }
  
  public RichPushMessage getCurrentMessage()
  {
    return currentMessage;
  }
  
  WebViewClient getWebViewClient()
  {
    return webViewClient;
  }
  
  protected void initializeView() {}
  
  public void loadData(String paramString1, String paramString2, String paramString3)
  {
    onPreLoad();
    super.loadData(paramString1, paramString2, paramString3);
  }
  
  public void loadDataWithBaseURL(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    onPreLoad();
    super.loadDataWithBaseURL(paramString1, paramString2, paramString3, paramString4, paramString5);
  }
  
  @SuppressLint({"NewApi"})
  public void loadRichPushMessage(RichPushMessage paramRichPushMessage)
  {
    if (paramRichPushMessage == null)
    {
      Logger.warn("Unable to load null message into UAWebView");
      return;
    }
    RichPushUser localRichPushUser = UAirship.shared().getRichPushManager().getRichPushUser();
    if (Build.VERSION.SDK_INT >= 8)
    {
      HashMap localHashMap = new HashMap();
      localHashMap.put("Authorization", createBasicAuth(localRichPushUser.getId(), localRichPushUser.getPassword()));
      loadUrl(paramRichPushMessage.getMessageBodyUrl(), localHashMap);
    }
    for (;;)
    {
      currentMessage = paramRichPushMessage;
      setClientAuthRequest(paramRichPushMessage.getMessageBodyUrl(), localRichPushUser.getId(), localRichPushUser.getPassword());
      return;
      loadUrl(paramRichPushMessage.getMessageBodyUrl());
    }
  }
  
  public void loadUrl(String paramString)
  {
    onPreLoad();
    if ((paramString != null) && (paramString.startsWith(sharedgetAirshipConfigOptionslandingPageContentURL)))
    {
      AirshipConfigOptions localAirshipConfigOptions;
      if (Build.VERSION.SDK_INT >= 8)
      {
        localAirshipConfigOptions = UAirship.shared().getAirshipConfigOptions();
        HashMap localHashMap = new HashMap();
        localHashMap.put("Authorization", createBasicAuth(localAirshipConfigOptions.getAppKey(), localAirshipConfigOptions.getAppSecret()));
        super.loadUrl(paramString, localHashMap);
      }
      for (;;)
      {
        localAirshipConfigOptions = UAirship.shared().getAirshipConfigOptions();
        setClientAuthRequest(paramString, localAirshipConfigOptions.getAppKey(), localAirshipConfigOptions.getAppSecret());
        return;
        super.loadUrl(paramString);
      }
    }
    super.loadUrl(paramString);
  }
  
  public void loadUrl(String paramString, Map<String, String> paramMap)
  {
    onPreLoad();
    super.loadUrl(paramString, paramMap);
    if ((paramString != null) && (paramString.startsWith(sharedgetAirshipConfigOptionslandingPageContentURL)))
    {
      paramMap = UAirship.shared().getAirshipConfigOptions();
      setClientAuthRequest(paramString, paramMap.getAppKey(), paramMap.getAppSecret());
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if (paramMotionEvent.getAction() == 0)
    {
      int i = getScrollY();
      int j = getScrollX();
      onScrollChanged(j, i, j, i);
    }
    return super.onTouchEvent(paramMotionEvent);
  }
  
  protected void populateCustomJavascriptInterfaces() {}
  
  public void setWebViewClient(WebViewClient paramWebViewClient)
  {
    if (!(paramWebViewClient instanceof UAWebViewClient)) {
      Logger.warn("The web view client should extend UAWebViewClient to support urban airship url overrides and triggering actions from.");
    }
    webViewClient = paramWebViewClient;
    super.setWebViewClient(paramWebViewClient);
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.widget.UAWebView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */