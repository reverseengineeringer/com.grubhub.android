package android.support.v4.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;

public class q
  extends ViewGroup.MarginLayoutParams
{
  public int a = 0;
  float b;
  boolean c;
  boolean d;
  
  public q(int paramInt1, int paramInt2)
  {
    super(paramInt1, paramInt2);
  }
  
  public q(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, DrawerLayout.d());
    a = paramContext.getInt(0, 0);
    paramContext.recycle();
  }
  
  public q(q paramq)
  {
    super(paramq);
    a = a;
  }
  
  public q(ViewGroup.LayoutParams paramLayoutParams)
  {
    super(paramLayoutParams);
  }
  
  public q(ViewGroup.MarginLayoutParams paramMarginLayoutParams)
  {
    super(paramMarginLayoutParams);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */