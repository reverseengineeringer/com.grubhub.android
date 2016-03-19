package com.grubhub.AppBaseLibrary.android.views;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.util.AttributeSet;
import android.view.View;
import com.grubhub.AppBaseLibrary.android.n;

public class GHSTriangle
  extends View
{
  protected int a;
  protected int b;
  
  public GHSTriangle(Context paramContext)
  {
    super(paramContext);
    a(paramContext, null);
  }
  
  public GHSTriangle(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext, paramAttributeSet);
  }
  
  public GHSTriangle(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext, paramAttributeSet);
  }
  
  private Path getTrianglePath()
  {
    float[] arrayOfFloat = getTriangleVertices();
    Path localPath = new Path();
    localPath.moveTo(arrayOfFloat[0], arrayOfFloat[1]);
    localPath.lineTo(arrayOfFloat[2], arrayOfFloat[3]);
    localPath.lineTo(arrayOfFloat[4], arrayOfFloat[5]);
    return localPath;
  }
  
  private float[] getTriangleVertices()
  {
    float[] arrayOfFloat = new float[6];
    if (b == 1)
    {
      arrayOfFloat[0] = 0.0F;
      arrayOfFloat[1] = 0.0F;
      arrayOfFloat[2] = (getMeasuredWidth() / 2.0F);
      arrayOfFloat[3] = getMeasuredHeight();
      arrayOfFloat[4] = getMeasuredWidth();
      arrayOfFloat[5] = 0.0F;
      return arrayOfFloat;
    }
    arrayOfFloat[0] = 0.0F;
    arrayOfFloat[1] = getMeasuredHeight();
    arrayOfFloat[2] = (getMeasuredWidth() / 2.0F);
    arrayOfFloat[3] = 0.0F;
    arrayOfFloat[4] = getMeasuredWidth();
    arrayOfFloat[5] = getMeasuredHeight();
    return arrayOfFloat;
  }
  
  protected void a(Context paramContext, AttributeSet paramAttributeSet)
  {
    if ((!isInEditMode()) && (paramAttributeSet != null))
    {
      paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, n.com_grubhub_AppBaseLibrary_android_views_GHSTriangle);
      a = paramContext.getColor(0, getResources().getColor(17170445));
      b = paramContext.getInteger(1, 0);
      paramContext.recycle();
    }
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    Paint localPaint = new Paint();
    localPaint.setStyle(Paint.Style.FILL);
    localPaint.setColor(a);
    paramCanvas.drawPath(getTrianglePath(), localPaint);
  }
  
  public void setOrientation(int paramInt)
  {
    b = paramInt;
    invalidate();
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.views.GHSTriangle
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */