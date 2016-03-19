package com.urbanairship.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.util.AttributeSet;

@Deprecated
public class RichPushMessageWebView
  extends UAWebView
{
  public RichPushMessageWebView(Context paramContext)
  {
    super(paramContext);
  }
  
  public RichPushMessageWebView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public RichPushMessageWebView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  @TargetApi(21)
  public RichPushMessageWebView(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    super(paramContext, paramAttributeSet, paramInt1, paramInt2);
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.widget.RichPushMessageWebView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */