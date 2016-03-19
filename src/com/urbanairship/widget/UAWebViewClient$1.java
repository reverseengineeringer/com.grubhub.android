package com.urbanairship.widget;

import com.urbanairship.actions.ActionArguments;
import com.urbanairship.actions.ActionCompletionCallback;
import com.urbanairship.actions.ActionResult;

class UAWebViewClient$1
  implements ActionCompletionCallback
{
  UAWebViewClient$1(UAWebViewClient paramUAWebViewClient) {}
  
  public void onFinish(ActionArguments paramActionArguments, ActionResult paramActionResult)
  {
    try
    {
      if (UAWebViewClient.access$000(this$0) != null) {
        UAWebViewClient.access$000(this$0).onFinish(paramActionArguments, paramActionResult);
      }
      return;
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.widget.UAWebViewClient.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */