package android.support.v7.app;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.v7.a.l;
import android.util.AttributeSet;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;

public class b
  extends ViewGroup.MarginLayoutParams
{
  public int a = 0;
  
  public b(int paramInt1, int paramInt2)
  {
    super(paramInt1, paramInt2);
    a = 8388627;
  }
  
  public b(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, l.ActionBarLayout);
    a = paramContext.getInt(l.ActionBarLayout_android_layout_gravity, 0);
    paramContext.recycle();
  }
  
  public b(b paramb)
  {
    super(paramb);
    a = a;
  }
  
  public b(ViewGroup.LayoutParams paramLayoutParams)
  {
    super(paramLayoutParams);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */