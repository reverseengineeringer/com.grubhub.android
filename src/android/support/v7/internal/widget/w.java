package android.support.v7.internal.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.v7.a.l;
import android.support.v7.internal.b.a;
import android.util.AttributeSet;
import android.widget.TextView;

public class w
  extends TextView
{
  public w(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public w(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public w(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramAttributeSet = paramContext.obtainStyledAttributes(paramAttributeSet, l.CompatTextView, paramInt, 0);
    boolean bool = paramAttributeSet.getBoolean(l.CompatTextView_textAllCaps, false);
    paramAttributeSet.recycle();
    if (bool) {
      setTransformationMethod(new a(paramContext));
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.widget.w
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */