package com.grubhub.AppBaseLibrary.android.views;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Cap;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.util.AttributeSet;
import android.util.DisplayMetrics;

public class GHSCaret
  extends GHSTriangle
{
  public GHSCaret(Context paramContext)
  {
    super(paramContext);
    a(paramContext, null);
  }
  
  public GHSCaret(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext, paramAttributeSet);
  }
  
  public GHSCaret(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext, paramAttributeSet);
  }
  
  private Path getCaretPath()
  {
    float[] arrayOfFloat = getCaretVertices();
    Path localPath = new Path();
    localPath.moveTo(arrayOfFloat[0], arrayOfFloat[1]);
    localPath.lineTo(arrayOfFloat[2], arrayOfFloat[3]);
    localPath.lineTo(arrayOfFloat[4], arrayOfFloat[5]);
    return localPath;
  }
  
  private float[] getCaretVertices()
  {
    float[] arrayOfFloat = new float[6];
    if (b == 1)
    {
      arrayOfFloat[0] = getMinWidth();
      arrayOfFloat[1] = getMinHeight();
      arrayOfFloat[2] = (getMeasuredWidth() / 2.0F);
      arrayOfFloat[3] = getMaxHeight();
      arrayOfFloat[4] = getMaxWidth();
      arrayOfFloat[5] = getMinHeight();
      return arrayOfFloat;
    }
    arrayOfFloat[0] = getMinWidth();
    arrayOfFloat[1] = getMaxHeight();
    arrayOfFloat[2] = (getMeasuredWidth() / 2.0F);
    arrayOfFloat[3] = getMinHeight();
    arrayOfFloat[4] = getMaxWidth();
    arrayOfFloat[5] = getMaxHeight();
    return arrayOfFloat;
  }
  
  private float getMaxHeight()
  {
    return getMeasuredHeight() - getMeasuredHeight() * 0.1F;
  }
  
  private float getMaxWidth()
  {
    return getMeasuredWidth() - getMeasuredWidth() * 0.1F;
  }
  
  private float getMinHeight()
  {
    return getMeasuredHeight() * 0.1F;
  }
  
  private float getMinWidth()
  {
    return getMeasuredWidth() * 0.1F;
  }
  
  protected void a(Context paramContext, AttributeSet paramAttributeSet)
  {
    super.a(paramContext, paramAttributeSet);
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    Paint localPaint = new Paint();
    localPaint.setStyle(Paint.Style.STROKE);
    localPaint.setStrokeCap(Paint.Cap.ROUND);
    localPaint.setAntiAlias(true);
    localPaint.setColor(a);
    localPaint.setStrokeWidth(getResourcesgetDisplayMetricsdensity * 2.0F);
    paramCanvas.drawPath(getCaretPath(), localPaint);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.views.GHSCaret
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */