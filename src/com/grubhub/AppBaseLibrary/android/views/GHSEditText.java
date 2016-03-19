package com.grubhub.AppBaseLibrary.android.views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.KeyEvent.Callback;
import android.widget.EditText;

public class GHSEditText
  extends EditText
{
  private String a;
  private KeyEvent.Callback b;
  
  public GHSEditText(Context paramContext)
  {
    super(paramContext);
  }
  
  public GHSEditText(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a = h.a(paramContext, this, paramAttributeSet);
  }
  
  public GHSEditText(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a = h.a(paramContext, this, paramAttributeSet);
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (b != null) {
      b.onKeyDown(paramInt, paramKeyEvent);
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  public boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    if (b != null) {
      b.onKeyUp(paramInt, paramKeyEvent);
    }
    return super.onKeyUp(paramInt, paramKeyEvent);
  }
  
  public void setFont(String paramString)
  {
    h.a(getContext(), this, paramString);
  }
  
  public void setInputType(int paramInt)
  {
    super.setInputType(paramInt);
    if (a != null) {
      setFont(a);
    }
  }
  
  public void setKeyEventCallback(KeyEvent.Callback paramCallback)
  {
    b = paramCallback;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.views.GHSEditText
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */