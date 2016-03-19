package com.braintreepayments.cardform.view;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.widget.EditText;
import com.braintreepayments.cardform.e;

public class b
  extends EditText
{
  private Paint a;
  private int b;
  private int c;
  private int d;
  private boolean e;
  private int f;
  private int g;
  private int h;
  
  public b(Context paramContext)
  {
    super(paramContext);
    d();
  }
  
  public b(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    d();
  }
  
  public b(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    d();
  }
  
  private void d()
  {
    a = new Paint(1);
    b = a(8.0F);
    c = a(2.0F);
    d = a(1.0F);
    e = false;
    g = getResources().getColor(e.bt_light_gray);
    h = getResources().getColor(e.bt_red);
    localObject1 = new TypedValue();
    if (Build.VERSION.SDK_INT >= 21)
    {
      getContext().getTheme().resolveAttribute(16843829, (TypedValue)localObject1, true);
      f = data;
    }
    for (;;)
    {
      localObject1 = getContext().getTheme().obtainStyledAttributes(new int[] { 16843601 });
      try
      {
        setTextColor(((TypedArray)localObject1).getColor(0, 0));
        return;
      }
      catch (RuntimeException localRuntimeException)
      {
        int i;
        setTextColor(getResources().getColor(e.bt_black));
        return;
      }
      finally
      {
        ((TypedArray)localObject1).recycle();
      }
      i = getResources().getIdentifier("colorAccent", "attr", getContext().getPackageName());
      getContext().getTheme().resolveAttribute(i, (TypedValue)localObject1, true);
      f = data;
      if (f == 0) {
        f = getResources().getColor(e.bt_blue);
      }
    }
  }
  
  protected int a(float paramFloat)
  {
    return Math.round(TypedValue.applyDimension(1, paramFloat, getResources().getDisplayMetrics()));
  }
  
  public boolean a()
  {
    return true;
  }
  
  public void b()
  {
    if (getImeActionId() == 2) {}
    for (;;)
    {
      return;
      try
      {
        View localView1 = focusSearch(2);
        if (localView1 == null) {
          continue;
        }
        localView1.requestFocus();
        return;
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        for (;;)
        {
          View localView2 = focusSearch(130);
        }
      }
    }
  }
  
  public void c()
  {
    if (a())
    {
      setError(false);
      return;
    }
    setError(true);
  }
  
  protected int getErrorColor()
  {
    return h;
  }
  
  protected int getFocusedColor()
  {
    return f;
  }
  
  protected int getInactiveColor()
  {
    return g;
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    int i = getRight();
    int j = getBottom() - b - c;
    if (e)
    {
      a.setColor(h);
      paramCanvas.drawRect(0.0F, j, i, c + j, a);
      return;
    }
    if (!isEnabled())
    {
      a.setColor(g & 0xFFFFFF | 0x44000000);
      paramCanvas.drawRect(0.0F, j, i, d + j, a);
      return;
    }
    if (hasFocus())
    {
      a.setColor(f);
      paramCanvas.drawRect(0.0F, j, i, c + j, a);
      return;
    }
    a.setColor(g & 0xFFFFFF | 0x1E000000);
    paramCanvas.drawRect(0.0F, j, i, d + j, a);
  }
  
  protected void onFocusChanged(boolean paramBoolean, int paramInt, Rect paramRect)
  {
    super.onFocusChanged(paramBoolean, paramInt, paramRect);
    if ((!paramBoolean) && (!a())) {
      setError(true);
    }
  }
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    super.onTextChanged(paramCharSequence, paramInt1, paramInt2, paramInt3);
    setError(false);
  }
  
  public void setError(boolean paramBoolean)
  {
    e = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     com.braintreepayments.cardform.view.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */