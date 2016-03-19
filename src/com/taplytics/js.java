package com.taplytics;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Rect;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RectShape;
import android.graphics.drawable.shapes.Shape;

public class js
  extends ShapeDrawable
{
  private final Paint a;
  private final Paint b;
  private final int c;
  
  public js(int paramInt, float paramFloat)
  {
    super(new RectShape());
    c = jk.a(paramFloat);
    a = new Paint(getPaint());
    a.setColor(0);
    b = new Paint(a);
    Paint localPaint = new Paint(a);
    localPaint.setStyle(Paint.Style.FILL);
    localPaint.setColor(paramInt);
    b.setStyle(Paint.Style.FILL);
    b.setStrokeWidth(paramFloat);
    b.setColor(paramInt);
  }
  
  public static int a()
  {
    return 399293494;
  }
  
  public static String a(b paramb)
  {
    switch (jt.a[paramb.ordinal()])
    {
    default: 
      return "";
    case 1: 
      return "View Selection Mode";
    case 2: 
      return "Navigate to desired activity or screen";
    case 3: 
      return "Choose a button to track clicks.";
    }
    return "Connection lost. Attempting to reconnect.";
  }
  
  public static int b()
  {
    return 399293493;
  }
  
  public static String b(b paramb)
  {
    switch (jt.a[paramb.ordinal()])
    {
    case 3: 
    default: 
      return "";
    case 1: 
      return "Tap any view.";
    case 2: 
      return "Press the button on Taplytics when you've arrived";
    }
    return "Check your network connection.";
  }
  
  public static int c()
  {
    return 399293492;
  }
  
  public static int d()
  {
    return 399293491;
  }
  
  protected void onDraw(Shape paramShape, Canvas paramCanvas, Paint paramPaint)
  {
    int i = jk.a(35.0F);
    int j = paramCanvas.getWidth();
    int k = paramCanvas.getHeight();
    paramPaint = new Rect(0, 0, j, i);
    Rect localRect1 = new Rect(0, i, c, k - c);
    Rect localRect2 = new Rect(j - c, i, j, k - c);
    Rect localRect3 = new Rect(0, k - c, j, k);
    paramShape.draw(paramCanvas, a);
    paramCanvas.drawRect(paramPaint, b);
    paramCanvas.drawRect(localRect1, b);
    paramCanvas.drawRect(localRect2, b);
    paramCanvas.drawRect(localRect3, b);
  }
}

/* Location:
 * Qualified Name:     com.taplytics.js
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */