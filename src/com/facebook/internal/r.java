package com.facebook.internal;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.webkit.WebView;
import org.json.JSONException;
import org.json.JSONObject;

public class r
  extends aq
{
  private static final String a = r.class.getName();
  private boolean b;
  
  public r(Context paramContext, String paramString1, String paramString2)
  {
    super(paramContext, paramString1);
    b(paramString2);
  }
  
  protected Bundle a(String paramString)
  {
    Bundle localBundle = al.c(Uri.parse(paramString).getQuery());
    paramString = localBundle.getString("bridge_args");
    localBundle.remove("bridge_args");
    if (!al.a(paramString)) {}
    try
    {
      localBundle.putBundle("com.facebook.platform.protocol.BRIDGE_ARGS", g.a(new JSONObject(paramString)));
      String str = localBundle.getString("method_results");
      localBundle.remove("method_results");
      if (!al.a(str))
      {
        paramString = str;
        if (al.a(str)) {
          paramString = "{}";
        }
      }
    }
    catch (JSONException paramString)
    {
      try
      {
        localBundle.putBundle("com.facebook.platform.protocol.RESULT_ARGS", g.a(new JSONObject(paramString)));
        localBundle.remove("version");
        localBundle.putInt("com.facebook.platform.protocol.PROTOCOL_VERSION", ac.a());
        return localBundle;
        paramString = paramString;
        al.a(a, "Unable to parse bridge_args JSON", paramString);
      }
      catch (JSONException paramString)
      {
        for (;;)
        {
          al.a(a, "Unable to parse bridge_args JSON", paramString);
        }
      }
    }
  }
  
  public void cancel()
  {
    WebView localWebView = c();
    if ((!b()) || (a()) || (localWebView == null) || (!localWebView.isShown())) {
      super.cancel();
    }
    while (b) {
      return;
    }
    b = true;
    localWebView.loadUrl("javascript:" + "(function() {  var event = document.createEvent('Event');  event.initEvent('fbPlatformDialogMustClose',true,true);  document.dispatchEvent(event);})();");
    new Handler(Looper.getMainLooper()).postDelayed(new Runnable()
    {
      public void run()
      {
        r.a(r.this);
      }
    }, 1500L);
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */