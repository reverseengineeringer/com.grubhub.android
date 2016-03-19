package com.urbanairship.widget;

import android.webkit.WebView;
import com.urbanairship.actions.ActionArguments;
import com.urbanairship.actions.ActionCompletionCallback;
import com.urbanairship.actions.ActionResult;

class UAWebViewClient$2
  implements ActionCompletionCallback
{
  UAWebViewClient$2(UAWebViewClient paramUAWebViewClient, String paramString1, WebView paramWebView, String paramString2) {}
  
  public void onFinish(ActionArguments paramActionArguments, ActionResult paramActionResult)
  {
    String str = null;
    switch (UAWebViewClient.3.$SwitchMap$com$urbanairship$actions$ActionResult$Status[paramActionResult.getStatus().ordinal()])
    {
    }
    for (;;)
    {
      UAWebViewClient.access$100(this$0, val$webView, str, paramActionResult.getValue(), val$callbackKey);
      try
      {
        if (UAWebViewClient.access$000(this$0) != null) {
          UAWebViewClient.access$000(this$0).onFinish(paramActionArguments, paramActionResult);
        }
        return;
      }
      finally {}
      str = String.format("Action %s not found", new Object[] { val$name });
      continue;
      str = String.format("Action %s rejected its arguments", new Object[] { val$name });
      continue;
      if (paramActionResult.getException() != null) {
        str = paramActionResult.getException().getMessage();
      } else {
        str = String.format("Action %s failed with unspecified error", new Object[] { val$name });
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.widget.UAWebViewClient.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */