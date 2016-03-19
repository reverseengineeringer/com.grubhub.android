package android.support.v4.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.ViewGroup.LayoutParams;

public class db
  extends ViewGroup.LayoutParams
{
  int childIndex;
  public int gravity;
  public boolean isDecor;
  boolean needsMeasure;
  int position;
  float widthFactor = 0.0F;
  
  public db()
  {
    super(-1, -1);
  }
  
  public db(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, ViewPager.g());
    gravity = paramContext.getInteger(0, 48);
    paramContext.recycle();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.db
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */