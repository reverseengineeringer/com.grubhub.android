package android.support.v7.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.v7.a.l;
import android.util.AttributeSet;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;

public class n
  extends ViewGroup.MarginLayoutParams
{
  public float g;
  public int h = -1;
  
  public n(int paramInt1, int paramInt2)
  {
    super(paramInt1, paramInt2);
    g = 0.0F;
  }
  
  public n(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, l.LinearLayoutCompat_Layout);
    g = paramContext.getFloat(l.LinearLayoutCompat_Layout_android_layout_weight, 0.0F);
    h = paramContext.getInt(l.LinearLayoutCompat_Layout_android_layout_gravity, -1);
    paramContext.recycle();
  }
  
  public n(ViewGroup.LayoutParams paramLayoutParams)
  {
    super(paramLayoutParams);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */