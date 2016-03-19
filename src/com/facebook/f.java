package com.facebook;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.graphics.Canvas;
import android.support.v4.app.Fragment;
import android.text.TextPaint;
import android.view.View.OnClickListener;
import android.widget.Button;
import com.facebook.a.a;

public abstract class f
  extends Button
{
  private String a;
  private View.OnClickListener b;
  private View.OnClickListener c;
  private boolean d;
  private int e;
  private int f;
  private Fragment g;
  
  private void a(Context paramContext)
  {
    a.a(paramContext).a(a, null, null);
  }
  
  protected int a(String paramString)
  {
    return (int)Math.ceil(getPaint().measureText(paramString));
  }
  
  protected Activity getActivity()
  {
    for (Context localContext = getContext(); (!(localContext instanceof Activity)) && ((localContext instanceof ContextWrapper)); localContext = ((ContextWrapper)localContext).getBaseContext()) {}
    if ((localContext instanceof Activity)) {
      return (Activity)localContext;
    }
    throw new h("Unable to get Activity.");
  }
  
  public int getCompoundPaddingLeft()
  {
    if (d) {
      return e;
    }
    return super.getCompoundPaddingLeft();
  }
  
  public int getCompoundPaddingRight()
  {
    if (d) {
      return f;
    }
    return super.getCompoundPaddingRight();
  }
  
  protected abstract int getDefaultRequestCode();
  
  protected int getDefaultStyleResource()
  {
    return 0;
  }
  
  public Fragment getFragment()
  {
    return g;
  }
  
  public int getRequestCode()
  {
    return getDefaultRequestCode();
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    if (!isInEditMode()) {
      a(getContext());
    }
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    if ((getGravity() & 0x1) != 0) {}
    for (int i = 1;; i = 0)
    {
      if (i != 0)
      {
        i = getCompoundPaddingLeft();
        int j = getCompoundPaddingRight();
        int k = getCompoundDrawablePadding();
        k = Math.min((getWidth() - (k + i) - j - a(getText().toString())) / 2, (i - getPaddingLeft()) / 2);
        e = (i - k);
        f = (j + k);
        d = true;
      }
      super.onDraw(paramCanvas);
      d = false;
      return;
    }
  }
  
  public void setFragment(Fragment paramFragment)
  {
    g = paramFragment;
  }
  
  protected void setInternalOnClickListener(View.OnClickListener paramOnClickListener)
  {
    c = paramOnClickListener;
  }
  
  public void setOnClickListener(View.OnClickListener paramOnClickListener)
  {
    b = paramOnClickListener;
  }
}

/* Location:
 * Qualified Name:     com.facebook.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */