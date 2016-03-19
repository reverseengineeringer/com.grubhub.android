package com.grubhub.AppBaseLibrary.android;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Parcelable;
import android.support.v4.view.bp;
import android.support.v4.widget.au;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import com.grubhub.AppBaseLibrary.android.utils.e.a;

public class GHSOrderFlowPane
  extends ViewGroup
{
  private static final String a = GHSOrderFlowPane.class.getSimpleName();
  private static final int[] e = { 16842927 };
  private i A;
  private boolean B = true;
  private int b = -1728053248;
  private int c = 400;
  private boolean d = false;
  private final Paint f = new Paint();
  private final Drawable g;
  private final int h;
  private final au i;
  private final Rect j = new Rect();
  private int k = -1;
  private int l = -1;
  private int m = -1;
  private boolean n;
  private boolean o;
  private View p;
  private int q = -1;
  private View r;
  private View s;
  private j t = j.EXPANDED;
  private float u;
  private int v;
  private boolean w;
  private boolean x;
  private boolean y;
  private float z = 0.0F;
  
  public GHSOrderFlowPane(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public GHSOrderFlowPane(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public GHSOrderFlowPane(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    if (isInEditMode())
    {
      g = null;
      h = 0;
      i = null;
      return;
    }
    boolean bool;
    float f1;
    if (paramAttributeSet != null)
    {
      TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, e);
      if (localTypedArray != null)
      {
        paramInt = localTypedArray.getInt(0, 0);
        if ((paramInt != 48) && (paramInt != 80)) {
          throw new IllegalArgumentException("gravity must be set to either top or bottom");
        }
        if (paramInt == 80)
        {
          bool = true;
          n = bool;
        }
      }
      else
      {
        localTypedArray.recycle();
        paramAttributeSet = paramContext.obtainStyledAttributes(paramAttributeSet, n.SlidingUpPanelLayout);
        if (paramAttributeSet != null)
        {
          k = paramAttributeSet.getDimensionPixelSize(0, -1);
          l = paramAttributeSet.getDimensionPixelSize(1, -1);
          m = paramAttributeSet.getDimensionPixelSize(2, -1);
          c = paramAttributeSet.getInt(4, 400);
          b = paramAttributeSet.getColor(3, -1728053248);
          q = paramAttributeSet.getResourceId(5, -1);
          d = paramAttributeSet.getBoolean(6, false);
        }
        paramAttributeSet.recycle();
      }
    }
    else
    {
      f1 = getResourcesgetDisplayMetricsdensity;
      if (k == -1) {
        k = ((int)(8.0F * f1 + 0.5F));
      }
      if (l == -1) {
        l = ((int)(5.0F * f1 + 0.5F));
      }
      if (m == -1) {
        m = ((int)(0.0F * f1));
      }
      if (l <= 0) {
        break label448;
      }
      if (!n) {
        break label432;
      }
      g = getResources().getDrawable(2130837559);
    }
    for (;;)
    {
      setWillNotDraw(false);
      i = au.a(this, 0.5F, new g(this, null));
      i.a(f1 * c);
      o = true;
      x = true;
      h = ViewConfiguration.get(paramContext).getScaledTouchSlop();
      return;
      bool = false;
      break;
      label432:
      g = getResources().getDrawable(2130837562);
      continue;
      label448:
      g = null;
    }
  }
  
  private void a(int paramInt)
  {
    int i1 = getSlidingTop();
    if (n) {}
    for (float f1 = (paramInt - i1) / v;; f1 = (i1 - paramInt) / v)
    {
      u = f1;
      a(r);
      if (m > 0)
      {
        paramInt = getCurrentParalaxOffset();
        if (Build.VERSION.SDK_INT >= 11) {
          s.setTranslationY(paramInt);
        }
      }
      return;
    }
  }
  
  private static boolean e(View paramView)
  {
    paramView = paramView.getBackground();
    return (paramView != null) && (paramView.getOpacity() == -1);
  }
  
  private int getSlidingTop()
  {
    if (r != null)
    {
      if (n) {
        return getMeasuredHeight() - getPaddingBottom() - r.getMeasuredHeight();
      }
      return getPaddingTop();
    }
    return getMeasuredHeight() - getPaddingBottom();
  }
  
  void a()
  {
    int i6 = 0;
    if (getChildCount() == 0) {
      return;
    }
    int i11 = getPaddingLeft();
    int i8 = getWidth();
    int i9 = getPaddingRight();
    int i10 = getPaddingTop();
    int i5 = getHeight();
    int i7 = getPaddingBottom();
    int i4;
    int i3;
    int i2;
    int i1;
    if ((r != null) && (e(r)))
    {
      i4 = r.getLeft();
      i3 = r.getRight();
      i2 = r.getTop();
      i1 = r.getBottom();
    }
    for (;;)
    {
      View localView = getChildAt(0);
      i11 = Math.max(i11, localView.getLeft());
      i10 = Math.max(i10, localView.getTop());
      i8 = Math.min(i8 - i9, localView.getRight());
      i7 = Math.min(i5 - i7, localView.getBottom());
      i5 = i6;
      if (i11 >= i4)
      {
        i5 = i6;
        if (i10 >= i2)
        {
          i5 = i6;
          if (i8 <= i3)
          {
            i5 = i6;
            if (i7 <= i1) {
              i5 = 4;
            }
          }
        }
      }
      localView.setVisibility(i5);
      return;
      i1 = 0;
      i2 = 0;
      i3 = 0;
      i4 = 0;
    }
  }
  
  void a(View paramView)
  {
    if (A != null) {
      A.a(paramView, u);
    }
  }
  
  void b()
  {
    int i2 = getChildCount();
    int i1 = 0;
    while (i1 < i2)
    {
      View localView = getChildAt(i1);
      if (localView.getVisibility() == 4) {
        localView.setVisibility(0);
      }
      i1 += 1;
    }
  }
  
  void b(View paramView)
  {
    if (A != null) {
      A.b(paramView);
    }
    sendAccessibilityEvent(32);
  }
  
  void c(View paramView)
  {
    if (A != null) {
      A.a(paramView);
    }
    sendAccessibilityEvent(32);
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return ((paramLayoutParams instanceof h)) && (super.checkLayoutParams(paramLayoutParams));
  }
  
  public void computeScroll()
  {
    if (i.a(true))
    {
      if (!o) {
        i.f();
      }
    }
    else {
      return;
    }
    bp.b(this);
  }
  
  void d(View paramView)
  {
    if (A != null) {
      A.c(paramView);
    }
    sendAccessibilityEvent(32);
  }
  
  public void draw(Canvas paramCanvas)
  {
    super.draw(paramCanvas);
    if (r == null) {
      return;
    }
    int i3 = r.getRight();
    int i2;
    if (n) {
      i2 = r.getTop() - l;
    }
    for (int i1 = r.getTop();; i1 = r.getBottom() + l)
    {
      int i4 = r.getLeft();
      if (g == null) {
        break;
      }
      g.setBounds(i4, i2, i3, i1);
      g.draw(paramCanvas);
      return;
      i2 = r.getBottom();
    }
  }
  
  protected boolean drawChild(Canvas paramCanvas, View paramView, long paramLong)
  {
    h localh = (h)paramView.getLayoutParams();
    int i2 = paramCanvas.save(2);
    if ((o) && (!a) && (r != null)) {
      if (!d)
      {
        paramCanvas.getClipBounds(j);
        if (n)
        {
          j.bottom = Math.min(j.bottom, r.getTop());
          paramCanvas.clipRect(j);
        }
      }
      else
      {
        if (u >= 1.0F) {
          break label215;
        }
      }
    }
    label215:
    for (int i1 = 1;; i1 = 0)
    {
      boolean bool = super.drawChild(paramCanvas, paramView, paramLong);
      paramCanvas.restoreToCount(i2);
      if (i1 != 0)
      {
        i1 = (int)(((b & 0xFF000000) >>> 24) * (1.0F - u));
        i2 = b;
        f.setColor(i1 << 24 | i2 & 0xFFFFFF);
        paramCanvas.drawRect(j, f);
      }
      return bool;
      j.top = Math.max(j.top, r.getBottom());
      break;
    }
  }
  
  protected ViewGroup.LayoutParams generateDefaultLayoutParams()
  {
    return new h();
  }
  
  public ViewGroup.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    return new h(getContext(), paramAttributeSet);
  }
  
  protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    if ((paramLayoutParams instanceof ViewGroup.MarginLayoutParams)) {
      return new h((ViewGroup.MarginLayoutParams)paramLayoutParams);
    }
    return new h(paramLayoutParams);
  }
  
  public int getCoveredFadeColor()
  {
    return b;
  }
  
  public int getCurrentParalaxOffset()
  {
    int i2 = (int)(m * (1.0F - u));
    int i1 = i2;
    if (n) {
      i1 = -i2;
    }
    return i1;
  }
  
  public int getPanelHeight()
  {
    return k;
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    B = true;
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    B = true;
  }
  
  protected void onFinishInflate()
  {
    super.onFinishInflate();
    if (q != -1) {
      p = findViewById(q);
    }
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    return super.onInterceptTouchEvent(paramMotionEvent);
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i1 = getPaddingLeft();
    paramInt3 = getPaddingTop();
    int i2 = getSlidingTop();
    int i3 = getChildCount();
    if (B) {}
    switch (1.a[t.ordinal()])
    {
    default: 
      u = 1.0F;
      paramInt4 = 0;
    }
    while (paramInt4 < i3)
    {
      View localView = getChildAt(paramInt4);
      if (localView.getVisibility() == 8)
      {
        paramInt4 += 1;
        continue;
        if (o) {}
        for (float f1 = 0.0F;; f1 = 1.0F)
        {
          u = f1;
          break;
        }
        if (o) {}
        for (f1 = z;; f1 = 1.0F)
        {
          u = f1;
          break;
        }
      }
      else
      {
        h localh = (h)localView.getLayoutParams();
        int i4 = localView.getMeasuredHeight();
        if (a) {
          v = (i4 - k);
        }
        if (n)
        {
          if (a) {}
          for (paramInt1 = (int)(v * u) + i2;; paramInt1 = paramInt3)
          {
            localView.layout(i1, paramInt1, localView.getMeasuredWidth() + i1, paramInt1 + i4);
            break;
          }
        }
        if (a) {}
        for (paramInt2 = i2 - (int)(v * u);; paramInt2 = paramInt3)
        {
          paramInt1 = paramInt2;
          if (a) {
            break;
          }
          paramInt1 = paramInt2;
          if (d) {
            break;
          }
          paramInt1 = paramInt2 + k;
          break;
        }
      }
    }
    if (B) {
      a();
    }
    B = false;
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i1 = View.MeasureSpec.getMode(paramInt1);
    int i4 = View.MeasureSpec.getSize(paramInt1);
    paramInt1 = View.MeasureSpec.getMode(paramInt2);
    int i5 = View.MeasureSpec.getSize(paramInt2);
    if (i1 != 1073741824) {
      throw new IllegalStateException("Width must have an exact value or MATCH_PARENT");
    }
    if (paramInt1 != 1073741824) {
      throw new IllegalStateException("Height must have an exact value or MATCH_PARENT");
    }
    int i2 = i5 - getPaddingTop() - getPaddingBottom();
    paramInt1 = k;
    int i6 = getChildCount();
    if (i6 > 2) {
      a.b(a, "onMeasure: More than two child views are not supported.");
    }
    label112:
    label231:
    label249:
    label259:
    label282:
    label318:
    label362:
    label368:
    for (;;)
    {
      r = null;
      o = false;
      int i3 = 0;
      View localView;
      h localh;
      if (i3 < i6)
      {
        localView = getChildAt(i3);
        localh = (h)localView.getLayoutParams();
        if (localView.getVisibility() == 8) {
          b = false;
        }
        for (;;)
        {
          i3 += 1;
          break label112;
          if (getChildAt(1).getVisibility() != 8) {
            break label368;
          }
          paramInt1 = 0;
          break;
          if (i3 != 1) {
            break label259;
          }
          a = true;
          b = true;
          r = localView;
          o = true;
          i1 = i2;
          if (width != -2) {
            break label282;
          }
          paramInt2 = View.MeasureSpec.makeMeasureSpec(i4, Integer.MIN_VALUE);
          if (height != -2) {
            break label318;
          }
          i1 = View.MeasureSpec.makeMeasureSpec(i1, Integer.MIN_VALUE);
          localView.measure(paramInt2, i1);
        }
        if (d) {
          break label362;
        }
      }
      for (paramInt2 = i2 - paramInt1;; paramInt2 = i2)
      {
        s = localView;
        i1 = paramInt2;
        break;
        if (width == -1)
        {
          paramInt2 = View.MeasureSpec.makeMeasureSpec(i4, 1073741824);
          break label231;
        }
        paramInt2 = View.MeasureSpec.makeMeasureSpec(width, 1073741824);
        break label231;
        if (height == -1)
        {
          i1 = View.MeasureSpec.makeMeasureSpec(i1, 1073741824);
          break label249;
        }
        i1 = View.MeasureSpec.makeMeasureSpec(height, 1073741824);
        break label249;
        setMeasuredDimension(i4, i5);
        return;
      }
    }
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    paramParcelable = (GHSOrderFlowPane.SavedState)paramParcelable;
    super.onRestoreInstanceState(paramParcelable.getSuperState());
    t = a;
  }
  
  protected Parcelable onSaveInstanceState()
  {
    GHSOrderFlowPane.SavedState localSavedState = new GHSOrderFlowPane.SavedState(super.onSaveInstanceState());
    a = t;
    return localSavedState;
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    if (paramInt2 != paramInt4) {
      B = true;
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    return super.onTouchEvent(paramMotionEvent);
  }
  
  public void setAnchorPoint(float paramFloat)
  {
    if ((paramFloat > 0.0F) && (paramFloat < 1.0F)) {
      z = paramFloat;
    }
  }
  
  public void setCoveredFadeColor(int paramInt)
  {
    b = paramInt;
    invalidate();
  }
  
  public void setDragView(View paramView)
  {
    p = paramView;
  }
  
  public void setEnableDragViewTouchEvents(boolean paramBoolean)
  {
    y = paramBoolean;
  }
  
  public void setOverlayed(boolean paramBoolean)
  {
    d = paramBoolean;
  }
  
  public void setPanelHeight(int paramInt)
  {
    k = paramInt;
    requestLayout();
  }
  
  public void setPanelSlideListener(i parami)
  {
    A = parami;
  }
  
  void setSlideState(j paramj)
  {
    t = paramj;
  }
  
  public void setSlidingEnabled(boolean paramBoolean)
  {
    x = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.GHSOrderFlowPane
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */