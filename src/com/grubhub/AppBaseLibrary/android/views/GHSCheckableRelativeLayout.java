package com.grubhub.AppBaseLibrary.android.views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Checkable;
import android.widget.RelativeLayout;

public class GHSCheckableRelativeLayout
  extends RelativeLayout
  implements Checkable
{
  private static final int[] b = { 16842912, 16843518, 16842913 };
  private boolean a;
  
  public GHSCheckableRelativeLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    setClickable(true);
  }
  
  public boolean isChecked()
  {
    return a;
  }
  
  protected int[] onCreateDrawableState(int paramInt)
  {
    int[] arrayOfInt = super.onCreateDrawableState(b.length + paramInt);
    if (isChecked()) {
      mergeDrawableStates(arrayOfInt, b);
    }
    return arrayOfInt;
  }
  
  public boolean performClick()
  {
    toggle();
    return super.performClick();
  }
  
  public void setChecked(boolean paramBoolean)
  {
    if (a != paramBoolean)
    {
      a = paramBoolean;
      setActivated(a);
      setSelected(a);
      setChecked(a);
      refreshDrawableState();
      int i = 0;
      while (i < getChildCount())
      {
        View localView = getChildAt(i);
        localView.setActivated(a);
        localView.setSelected(a);
        if ((localView instanceof Checkable)) {
          ((Checkable)localView).setChecked(a);
        }
        i += 1;
      }
    }
  }
  
  public void toggle()
  {
    if (!a) {}
    for (boolean bool = true;; bool = false)
    {
      setChecked(bool);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.views.GHSCheckableRelativeLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */