package com.taplytics;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.view.MotionEvent;
import android.widget.FrameLayout;

public class jo
  extends FrameLayout
{
  private Paint a;
  private Paint b;
  private jp c;
  
  public jo(Context paramContext)
  {
    super(paramContext);
    b();
  }
  
  private jp a(int paramInt1, int paramInt2)
  {
    return new jp(paramInt1, paramInt2, 40);
  }
  
  private void b()
  {
    a = new Paint();
    a.setColor(jq.a(gq.h().d()));
    a.setStrokeWidth(20.0F);
    a.setStyle(Paint.Style.FILL);
    b = new Paint();
    b.setColor(jq.a());
    b.setStrokeWidth(2.0F);
    b.setStyle(Paint.Style.FILL);
  }
  
  public void a()
  {
    c = null;
    invalidate();
  }
  
  public void onDraw(Canvas paramCanvas)
  {
    if (c != null)
    {
      paramCanvas.drawCircle(c.b, c.c, c.a, a);
      paramCanvas.drawCircle(c.b, c.c, 3.0F, b);
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    boolean bool = false;
    int i;
    switch (paramMotionEvent.getActionMasked())
    {
    case 4: 
    default: 
      i = 0;
    }
    while ((gq.h().d().equals(b.alpaca)) || (gq.h().d().equals(b.antelope)))
    {
      if ((i != 0) || (super.onTouchEvent(paramMotionEvent))) {
        bool = true;
      }
      return bool;
      if ((gq.h().d().equals(b.alpaca)) || (gq.h().d().equals(b.antelope)))
      {
        i = (int)paramMotionEvent.getX(0);
        int j = (int)paramMotionEvent.getY(0);
        if (c == null) {
          c = a(i, j);
        }
      }
      invalidate();
      i = 1;
      continue;
      invalidate();
      i = 1;
      continue;
      invalidate();
      i = 1;
      continue;
      invalidate();
      i = 1;
      continue;
      invalidate();
      i = 1;
      continue;
      i = 1;
    }
    return super.onTouchEvent(paramMotionEvent);
  }
}

/* Location:
 * Qualified Name:     com.taplytics.jo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */