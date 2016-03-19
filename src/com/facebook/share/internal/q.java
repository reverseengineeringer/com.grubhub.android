package com.facebook.share.internal;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.widget.FrameLayout;
import android.widget.TextView;

public class q
  extends FrameLayout
{
  private TextView a;
  private r b;
  private float c;
  private float d;
  private float e;
  private Paint f;
  private int g;
  private int h;
  
  private void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    a.setPadding(g + paramInt1, g + paramInt2, g + paramInt3, g + paramInt4);
  }
  
  private void a(Canvas paramCanvas, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    Path localPath = new Path();
    float f1 = e * 2.0F;
    localPath.addArc(new RectF(paramFloat1, paramFloat2, paramFloat1 + f1, paramFloat2 + f1), -180.0F, 90.0F);
    if (b == r.TOP)
    {
      localPath.lineTo((paramFloat3 - paramFloat1 - d) / 2.0F + paramFloat1, paramFloat2);
      localPath.lineTo((paramFloat3 - paramFloat1) / 2.0F + paramFloat1, paramFloat2 - c);
      localPath.lineTo((paramFloat3 - paramFloat1 + d) / 2.0F + paramFloat1, paramFloat2);
    }
    localPath.lineTo(paramFloat3 - e, paramFloat2);
    localPath.addArc(new RectF(paramFloat3 - f1, paramFloat2, paramFloat3, paramFloat2 + f1), -90.0F, 90.0F);
    if (b == r.RIGHT)
    {
      localPath.lineTo(paramFloat3, (paramFloat4 - paramFloat2 - d) / 2.0F + paramFloat2);
      localPath.lineTo(c + paramFloat3, (paramFloat4 - paramFloat2) / 2.0F + paramFloat2);
      localPath.lineTo(paramFloat3, (paramFloat4 - paramFloat2 + d) / 2.0F + paramFloat2);
    }
    localPath.lineTo(paramFloat3, paramFloat4 - e);
    localPath.addArc(new RectF(paramFloat3 - f1, paramFloat4 - f1, paramFloat3, paramFloat4), 0.0F, 90.0F);
    if (b == r.BOTTOM)
    {
      localPath.lineTo((paramFloat3 - paramFloat1 + d) / 2.0F + paramFloat1, paramFloat4);
      localPath.lineTo((paramFloat3 - paramFloat1) / 2.0F + paramFloat1, c + paramFloat4);
      localPath.lineTo((paramFloat3 - paramFloat1 - d) / 2.0F + paramFloat1, paramFloat4);
    }
    localPath.lineTo(e + paramFloat1, paramFloat4);
    localPath.addArc(new RectF(paramFloat1, paramFloat4 - f1, f1 + paramFloat1, paramFloat4), 90.0F, 90.0F);
    if (b == r.LEFT)
    {
      localPath.lineTo(paramFloat1, (paramFloat4 - paramFloat2 + d) / 2.0F + paramFloat2);
      localPath.lineTo(paramFloat1 - c, (paramFloat4 - paramFloat2) / 2.0F + paramFloat2);
      localPath.lineTo(paramFloat1, (paramFloat4 - paramFloat2 - d) / 2.0F + paramFloat2);
    }
    localPath.lineTo(paramFloat1, e + paramFloat2);
    paramCanvas.drawPath(localPath, f);
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    int m = getPaddingTop();
    int k = getPaddingLeft();
    int j = getWidth() - getPaddingRight();
    int i = getHeight() - getPaddingBottom();
    switch (1.a[b.ordinal()])
    {
    }
    for (;;)
    {
      a(paramCanvas, k, m, j, i);
      return;
      i = (int)(i - c);
      continue;
      k = (int)(k + c);
      continue;
      m = (int)(m + c);
      continue;
      j = (int)(j - c);
    }
  }
  
  public void setCaretPosition(r paramr)
  {
    b = paramr;
    switch (1.a[paramr.ordinal()])
    {
    default: 
      return;
    case 1: 
      a(h, 0, 0, 0);
      return;
    case 2: 
      a(0, h, 0, 0);
      return;
    case 3: 
      a(0, 0, h, 0);
      return;
    }
    a(0, 0, 0, h);
  }
  
  public void setText(String paramString)
  {
    a.setText(paramString);
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.internal.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */