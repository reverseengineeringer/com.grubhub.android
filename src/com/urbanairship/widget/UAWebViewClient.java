package com.urbanairship.widget;

import android.annotation.SuppressLint;
import android.net.Uri;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.webkit.HttpAuthHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.urbanairship.Logger;
import com.urbanairship.UAirship;
import com.urbanairship.actions.ActionArguments;
import com.urbanairship.actions.ActionCompletionCallback;
import com.urbanairship.actions.ActionResult;
import com.urbanairship.actions.ActionRunRequest;
import com.urbanairship.actions.ActionRunRequestFactory;
import com.urbanairship.actions.ActionValue;
import com.urbanairship.actions.Situation;
import com.urbanairship.js.NativeBridge;
import com.urbanairship.js.Whitelist;
import com.urbanairship.json.JsonException;
import com.urbanairship.json.JsonValue;
import com.urbanairship.richpush.RichPushManager;
import com.urbanairship.richpush.RichPushMessage;
import com.urbanairship.richpush.RichPushUser;
import com.urbanairship.util.UriUtils;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TimeZone;
import org.json.JSONObject;

public class UAWebViewClient
  extends WebViewClient
{
  public static final String CLOSE_COMMAND = "close";
  public static final String RUN_ACTIONS_COMMAND = "run-actions";
  private static final String RUN_ACTIONS_COMMAND_CALLBACK = "android-run-action-cb";
  public static final String RUN_BASIC_ACTIONS_COMMAND = "run-basic-actions";
  public static final String UA_ACTION_SCHEME = "uairship";
  private static SimpleDateFormat dateFormatter;
  private ActionCompletionCallback actionCompletionCallback;
  private final ActionRunRequestFactory actionRunRequestFactory;
  private final Map<String, UAWebViewClient.Credentials> authRequestCredentials = new HashMap();
  
  public UAWebViewClient()
  {
    this(new ActionRunRequestFactory());
  }
  
  UAWebViewClient(ActionRunRequestFactory paramActionRunRequestFactory)
  {
    actionRunRequestFactory = paramActionRunRequestFactory;
  }
  
  private String createGetter(String paramString, long paramLong)
  {
    return String.format(Locale.US, "_UAirship.%s = function(){return %d;};", new Object[] { paramString, Long.valueOf(paramLong) });
  }
  
  private String createGetter(String paramString1, String paramString2)
  {
    if (paramString2 == null) {}
    for (paramString2 = "null";; paramString2 = JSONObject.quote(paramString2)) {
      return String.format(Locale.US, "_UAirship.%s = function(){return %s;};", new Object[] { paramString1, paramString2 });
    }
  }
  
  private Map<String, List<ActionValue>> decodeActionArguments(Uri paramUri, boolean paramBoolean)
  {
    Map localMap = UriUtils.getQueryParameters(paramUri);
    if (localMap == null) {
      return null;
    }
    HashMap localHashMap = new HashMap();
    Iterator localIterator1 = localMap.keySet().iterator();
    while (localIterator1.hasNext())
    {
      String str1 = (String)localIterator1.next();
      ArrayList localArrayList = new ArrayList();
      if (localMap.get(str1) == null)
      {
        Logger.warn("No arguments to decode for actionName: " + str1);
        return null;
      }
      Iterator localIterator2 = ((List)localMap.get(str1)).iterator();
      if (localIterator2.hasNext())
      {
        String str2 = (String)localIterator2.next();
        if (paramBoolean) {}
        for (;;)
        {
          try
          {
            paramUri = JsonValue.wrap(str2);
            localArrayList.add(new ActionValue(paramUri));
          }
          catch (JsonException paramUri)
          {
            Logger.warn("Invalid json. Unable to create action argument " + str1 + " with args: " + str2, paramUri);
            return null;
          }
          paramUri = JsonValue.parseString(str2);
        }
      }
      localHashMap.put(str1, localArrayList);
    }
    if (localHashMap.isEmpty())
    {
      Logger.warn("Error no action names are present in the actions key set");
      return null;
    }
    return localHashMap;
  }
  
  private RichPushMessage getMessage(WebView paramWebView)
  {
    if ((paramWebView instanceof UAWebView)) {
      return ((UAWebView)paramWebView).getCurrentMessage();
    }
    return null;
  }
  
  @SuppressLint({"NewAPI"})
  private void injectJavascriptInterface(WebView paramWebView)
  {
    RichPushMessage localRichPushMessage = getMessage(paramWebView);
    if (dateFormatter == null)
    {
      dateFormatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSSZ", Locale.US);
      dateFormatter.setTimeZone(TimeZone.getTimeZone("UTC"));
    }
    StringBuilder localStringBuilder1 = new StringBuilder().append("var _UAirship = {};");
    StringBuilder localStringBuilder2 = localStringBuilder1.append(createGetter("getDeviceModel", Build.MODEL));
    Object localObject;
    if (localRichPushMessage != null)
    {
      localObject = localRichPushMessage.getMessageId();
      localStringBuilder2 = localStringBuilder2.append(createGetter("getMessageId", (String)localObject));
      if (localRichPushMessage == null) {
        break label242;
      }
      localObject = localRichPushMessage.getTitle();
      label108:
      localStringBuilder2 = localStringBuilder2.append(createGetter("getMessageTitle", (String)localObject));
      if (localRichPushMessage == null) {
        break label248;
      }
      localObject = dateFormatter.format(localRichPushMessage.getSentDate());
      label141:
      localObject = localStringBuilder2.append(createGetter("getMessageSentDate", (String)localObject));
      if (localRichPushMessage == null) {
        break label254;
      }
    }
    label242:
    label248:
    label254:
    for (long l = localRichPushMessage.getSentDateMS();; l = -1L)
    {
      ((StringBuilder)localObject).append(createGetter("getMessageSentDateMS", l)).append(createGetter("getUserId", UAirship.shared().getRichPushManager().getRichPushUser().getId()));
      localStringBuilder1.append(NativeBridge.getJavaScriptSource());
      localObject = localStringBuilder1.toString();
      if (Build.VERSION.SDK_INT < 19) {
        break label261;
      }
      paramWebView.evaluateJavascript((String)localObject, null);
      return;
      localObject = null;
      break;
      localObject = null;
      break label108;
      localObject = null;
      break label141;
    }
    label261:
    paramWebView.loadUrl("javascript:" + (String)localObject);
  }
  
  private boolean interceptUrl(WebView paramWebView, String paramString)
  {
    if ((paramWebView == null) || (paramString == null)) {
      return false;
    }
    Uri localUri = Uri.parse(paramString);
    if ((localUri.getHost() == null) || (!localUri.getScheme().equals("uairship")) || (!isWhiteListed(paramWebView.getUrl()))) {
      return false;
    }
    Logger.verbose("Intercepting: " + paramString);
    String str = localUri.getHost();
    int i = -1;
    switch (str.hashCode())
    {
    }
    for (;;)
    {
      switch (i)
      {
      default: 
        Logger.warn("Unrecognized command: " + localUri.getHost() + " for URL: " + paramString);
        return false;
        if (str.equals("run-basic-actions"))
        {
          i = 0;
          continue;
          if (str.equals("run-actions"))
          {
            i = 1;
            continue;
            if (str.equals("android-run-action-cb"))
            {
              i = 2;
              continue;
              if (str.equals("close")) {
                i = 3;
              }
            }
          }
        }
        break;
      }
    }
    Logger.info("Running run basic actions command for URL: " + paramString);
    runActions(paramWebView, decodeActionArguments(localUri, true));
    return true;
    Logger.info("Running run actions command for URL: " + paramString);
    runActions(paramWebView, decodeActionArguments(localUri, false));
    return true;
    Logger.info("Running run actions command with callback for URL: " + paramString);
    paramString = localUri.getPathSegments();
    if (paramString.size() == 3)
    {
      Logger.info("Action: " + (String)paramString.get(0) + ", Args: " + (String)paramString.get(1) + ", Callback: " + (String)paramString.get(2));
      runAction(paramWebView, (String)paramString.get(0), (String)paramString.get(1), (String)paramString.get(2));
    }
    for (;;)
    {
      return true;
      Logger.error("Unable to run action, invalid number of arguments.");
    }
    Logger.info("Running close command for URL: " + paramString);
    onClose(paramWebView);
    return true;
  }
  
  private boolean isWhiteListed(String paramString)
  {
    return UAirship.shared().getWhitelist().isWhitelisted(paramString);
  }
  
  private void runAction(final WebView paramWebView, final String paramString1, String paramString2, final String paramString3)
  {
    try
    {
      ActionValue localActionValue = new ActionValue(JsonValue.parseString(paramString2));
      paramString2 = new Bundle();
      RichPushMessage localRichPushMessage = getMessage(paramWebView);
      if (localRichPushMessage != null) {
        paramString2.putString("com.urbanairship.RICH_PUSH_ID_METADATA", localRichPushMessage.getMessageId());
      }
      actionRunRequestFactory.createActionRequest(paramString1).setMetadata(paramString2).setValue(localActionValue).setSituation(Situation.WEB_VIEW_INVOCATION).run(new ActionCompletionCallback()
      {
        public void onFinish(ActionArguments paramAnonymousActionArguments, ActionResult paramAnonymousActionResult)
        {
          String str = null;
          switch (UAWebViewClient.3.$SwitchMap$com$urbanairship$actions$ActionResult$Status[paramAnonymousActionResult.getStatus().ordinal()])
          {
          }
          for (;;)
          {
            UAWebViewClient.this.triggerCallback(paramWebView, str, paramAnonymousActionResult.getValue(), paramString3);
            try
            {
              if (actionCompletionCallback != null) {
                actionCompletionCallback.onFinish(paramAnonymousActionArguments, paramAnonymousActionResult);
              }
              return;
            }
            finally {}
            str = String.format("Action %s not found", new Object[] { paramString1 });
            continue;
            str = String.format("Action %s rejected its arguments", new Object[] { paramString1 });
            continue;
            if (paramAnonymousActionResult.getException() != null) {
              str = paramAnonymousActionResult.getException().getMessage();
            } else {
              str = String.format("Action %s failed with unspecified error", new Object[] { paramString1 });
            }
          }
        }
      });
      return;
    }
    catch (JsonException paramString1)
    {
      Logger.warn("Unable to parse action argument value: " + paramString2, paramString1);
      triggerCallback(paramWebView, "Unable to decode arguments payload", new ActionValue(), paramString3);
    }
  }
  
  private void runActions(WebView paramWebView, Map<String, List<ActionValue>> paramMap)
  {
    if (paramMap == null) {
      return;
    }
    Bundle localBundle = new Bundle();
    paramWebView = getMessage(paramWebView);
    if (paramWebView != null) {
      localBundle.putString("com.urbanairship.RICH_PUSH_ID_METADATA", paramWebView.getMessageId());
    }
    paramWebView = paramMap.keySet().iterator();
    while (paramWebView.hasNext())
    {
      String str = (String)paramWebView.next();
      Iterator localIterator = ((List)paramMap.get(str)).iterator();
      while (localIterator.hasNext())
      {
        ActionValue localActionValue = (ActionValue)localIterator.next();
        actionRunRequestFactory.createActionRequest(str).setValue(localActionValue).setMetadata(localBundle).setSituation(Situation.WEB_VIEW_INVOCATION).run(new ActionCompletionCallback()
        {
          public void onFinish(ActionArguments paramAnonymousActionArguments, ActionResult paramAnonymousActionResult)
          {
            try
            {
              if (actionCompletionCallback != null) {
                actionCompletionCallback.onFinish(paramAnonymousActionArguments, paramAnonymousActionResult);
              }
              return;
            }
            finally {}
          }
        });
      }
    }
  }
  
  @SuppressLint({"NewAPI"})
  private void triggerCallback(WebView paramWebView, String paramString1, ActionValue paramActionValue, String paramString2)
  {
    paramString2 = String.format("'%s'", new Object[] { paramString2 });
    if (paramString1 == null) {}
    for (paramString1 = "null";; paramString1 = String.format(Locale.US, "new Error(%s)", new Object[] { JSONObject.quote(paramString1) }))
    {
      paramActionValue = paramActionValue.toString();
      paramString1 = String.format(Locale.US, "UAirship.finishAction(%s, %s, %s);", new Object[] { paramString1, paramActionValue, paramString2 });
      if (Build.VERSION.SDK_INT < 19) {
        break;
      }
      paramWebView.evaluateJavascript(paramString1, null);
      return;
    }
    paramWebView.loadUrl("javascript:" + paramString1);
  }
  
  void addAuthRequestCredentials(String paramString1, String paramString2, String paramString3)
  {
    authRequestCredentials.put(paramString1, new UAWebViewClient.Credentials(paramString2, paramString3));
  }
  
  public void onClose(WebView paramWebView)
  {
    paramWebView.getRootView().dispatchKeyEvent(new KeyEvent(0, 4));
    paramWebView.getRootView().dispatchKeyEvent(new KeyEvent(1, 4));
  }
  
  public void onLoadResource(WebView paramWebView, String paramString)
  {
    interceptUrl(paramWebView, paramString);
  }
  
  public void onPageFinished(WebView paramWebView, String paramString)
  {
    if (paramWebView == null) {
      return;
    }
    if (!isWhiteListed(paramString))
    {
      Logger.debug("UAWebViewClient - " + paramString + " is not a white listed URL. Urban Airship Javascript interface will not be accessible.");
      return;
    }
    Logger.info("Loading UrbanAirship Javascript interface.");
    injectJavascriptInterface(paramWebView);
  }
  
  public void onReceivedHttpAuthRequest(WebView paramWebView, HttpAuthHandler paramHttpAuthHandler, String paramString1, String paramString2)
  {
    paramWebView = (UAWebViewClient.Credentials)authRequestCredentials.get(paramString1);
    if (paramWebView != null) {
      paramHttpAuthHandler.proceed(username, password);
    }
  }
  
  void removeAuthRequestCredentials(String paramString)
  {
    authRequestCredentials.remove(paramString);
  }
  
  public void setActionCompletionCallback(ActionCompletionCallback paramActionCompletionCallback)
  {
    try
    {
      actionCompletionCallback = paramActionCompletionCallback;
      return;
    }
    finally {}
  }
  
  public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    return interceptUrl(paramWebView, paramString);
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.widget.UAWebViewClient
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */