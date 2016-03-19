package com.taplytics;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.Shape;

public class ju
  extends ShapeDrawable
{
  private final Paint a;
  private final Paint b;
  private final Paint c;
  private int d;
  private int e;
  private int f;
  private int g;
  private boolean h;
  
  public static int a()
  {
    return 399293499;
  }
  
  protected void onDraw(Shape paramShape, Canvas paramCanvas, Paint paramPaint)
  {
    paramPaint = new Rect(e, d, f, g);
    paramShape.draw(paramCanvas, a);
    if (h) {
      paramCanvas.drawRect(paramPaint, c);
    }
    paramCanvas.drawRect(paramPaint, b);
  }
}

/* Location:
 * Qualified Name:     com.taplytics.ju
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */