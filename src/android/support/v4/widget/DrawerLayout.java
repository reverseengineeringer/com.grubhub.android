package android.support.v4.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Parcelable;
import android.os.SystemClock;
import android.support.v4.view.aw;
import android.support.v4.view.bp;
import android.support.v4.view.cr;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import java.util.ArrayList;

public class DrawerLayout
  extends ViewGroup
  implements u
{
  static final m a;
  private static final int[] b;
  private static final boolean c;
  private static final boolean d;
  private Drawable A;
  private CharSequence B;
  private CharSequence C;
  private Object D;
  private boolean E;
  private Drawable F = null;
  private Drawable G = null;
  private Drawable H = null;
  private Drawable I = null;
  private final ArrayList<View> J;
  private final l e = new l(this);
  private float f;
  private int g;
  private int h = -1728053248;
  private float i;
  private Paint j = new Paint();
  private final au k;
  private final au l;
  private final r m;
  private final r n;
  private int o;
  private boolean p;
  private boolean q = true;
  private int r;
  private int s;
  private boolean t;
  private boolean u;
  private p v;
  private float w;
  private float x;
  private Drawable y;
  private Drawable z;
  
  static
  {
    boolean bool2 = true;
    b = new int[] { 16842931 };
    if (Build.VERSION.SDK_INT >= 19)
    {
      bool1 = true;
      c = bool1;
      if (Build.VERSION.SDK_INT < 21) {
        break label65;
      }
    }
    label65:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      d = bool1;
      if (Build.VERSION.SDK_INT < 21) {
        break label70;
      }
      a = new n();
      return;
      bool1 = false;
      break;
    }
    label70:
    a = new o();
  }
  
  public DrawerLayout(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public DrawerLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public DrawerLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    setDescendantFocusability(262144);
    float f1 = getResourcesgetDisplayMetricsdensity;
    g = ((int)(64.0F * f1 + 0.5F));
    float f2 = 400.0F * f1;
    m = new r(this, 3);
    n = new r(this, 5);
    k = au.a(this, 1.0F, m);
    k.a(1);
    k.a(f2);
    m.a(k);
    l = au.a(this, 1.0F, n);
    l.a(2);
    l.a(f2);
    n.a(l);
    setFocusableInTouchMode(true);
    bp.c(this, 1);
    bp.a(this, new k(this));
    cr.a(this, false);
    if (bp.o(this))
    {
      a.a(this);
      y = a.a(paramContext);
    }
    f = (f1 * 10.0F);
    J = new ArrayList();
  }
  
  private void a(View paramView, boolean paramBoolean)
  {
    int i2 = getChildCount();
    int i1 = 0;
    if (i1 < i2)
    {
      View localView = getChildAt(i1);
      if (((!paramBoolean) && (!g(localView))) || ((paramBoolean) && (localView == paramView))) {
        bp.c(localView, 1);
      }
      for (;;)
      {
        i1 += 1;
        break;
        bp.c(localView, 4);
      }
    }
  }
  
  private boolean b(Drawable paramDrawable, int paramInt)
  {
    if ((paramDrawable == null) || (!android.support.v4.a.a.a.b(paramDrawable))) {
      return false;
    }
    android.support.v4.a.a.a.b(paramDrawable, paramInt);
    return true;
  }
  
  static String c(int paramInt)
  {
    if ((paramInt & 0x3) == 3) {
      return "LEFT";
    }
    if ((paramInt & 0x5) == 5) {
      return "RIGHT";
    }
    return Integer.toHexString(paramInt);
  }
  
  private void f()
  {
    if (d) {
      return;
    }
    z = g();
    A = h();
  }
  
  private Drawable g()
  {
    int i1 = bp.e(this);
    if (i1 == 0)
    {
      if (F != null)
      {
        b(F, i1);
        return F;
      }
    }
    else if (G != null)
    {
      b(G, i1);
      return G;
    }
    return H;
  }
  
  private Drawable h()
  {
    int i1 = bp.e(this);
    if (i1 == 0)
    {
      if (G != null)
      {
        b(G, i1);
        return G;
      }
    }
    else if (F != null)
    {
      b(F, i1);
      return F;
    }
    return I;
  }
  
  private boolean i()
  {
    int i2 = getChildCount();
    int i1 = 0;
    while (i1 < i2)
    {
      if (getChildAtgetLayoutParamsc) {
        return true;
      }
      i1 += 1;
    }
    return false;
  }
  
  private boolean j()
  {
    return k() != null;
  }
  
  private View k()
  {
    int i2 = getChildCount();
    int i1 = 0;
    while (i1 < i2)
    {
      View localView = getChildAt(i1);
      if ((g(localView)) && (k(localView))) {
        return localView;
      }
      i1 += 1;
    }
    return null;
  }
  
  private static boolean m(View paramView)
  {
    boolean bool2 = false;
    paramView = paramView.getBackground();
    boolean bool1 = bool2;
    if (paramView != null)
    {
      bool1 = bool2;
      if (paramView.getOpacity() == -1) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  private static boolean n(View paramView)
  {
    return (bp.c(paramView) != 4) && (bp.c(paramView) != 2);
  }
  
  public int a(View paramView)
  {
    int i1 = e(paramView);
    if (i1 == 3) {
      return r;
    }
    if (i1 == 5) {
      return s;
    }
    return 0;
  }
  
  View a()
  {
    int i2 = getChildCount();
    int i1 = 0;
    while (i1 < i2)
    {
      View localView = getChildAt(i1);
      if (getLayoutParamsd) {
        return localView;
      }
      i1 += 1;
    }
    return null;
  }
  
  public CharSequence a(int paramInt)
  {
    paramInt = android.support.v4.view.m.a(paramInt, bp.e(this));
    if (paramInt == 3) {
      return B;
    }
    if (paramInt == 5) {
      return C;
    }
    return null;
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    a(getResources().getDrawable(paramInt1), paramInt2);
  }
  
  void a(int paramInt1, int paramInt2, View paramView)
  {
    int i1 = 1;
    int i2 = k.a();
    int i3 = l.a();
    paramInt1 = i1;
    q localq;
    if (i2 != 1)
    {
      if (i3 == 1) {
        paramInt1 = i1;
      }
    }
    else if ((paramView != null) && (paramInt2 == 0))
    {
      localq = (q)paramView.getLayoutParams();
      if (b != 0.0F) {
        break label124;
      }
      b(paramView);
    }
    for (;;)
    {
      if (paramInt1 != o)
      {
        o = paramInt1;
        if (v != null) {
          v.a(paramInt1);
        }
      }
      return;
      if ((i2 == 2) || (i3 == 2))
      {
        paramInt1 = 2;
        break;
      }
      paramInt1 = 0;
      break;
      label124:
      if (b == 1.0F) {
        c(paramView);
      }
    }
  }
  
  public void a(Drawable paramDrawable, int paramInt)
  {
    if (d) {
      return;
    }
    if ((paramInt & 0x800003) == 8388611) {
      F = paramDrawable;
    }
    for (;;)
    {
      f();
      invalidate();
      return;
      if ((paramInt & 0x800005) == 8388613)
      {
        G = paramDrawable;
      }
      else if ((paramInt & 0x3) == 3)
      {
        H = paramDrawable;
      }
      else
      {
        if ((paramInt & 0x5) != 5) {
          break;
        }
        I = paramDrawable;
      }
    }
  }
  
  void a(View paramView, float paramFloat)
  {
    if (v != null) {
      v.a(paramView, paramFloat);
    }
  }
  
  public void a(Object paramObject, boolean paramBoolean)
  {
    D = paramObject;
    E = paramBoolean;
    if ((!paramBoolean) && (getBackground() == null)) {}
    for (paramBoolean = true;; paramBoolean = false)
    {
      setWillNotDraw(paramBoolean);
      requestLayout();
      return;
    }
  }
  
  void a(boolean paramBoolean)
  {
    int i5 = getChildCount();
    int i2 = 0;
    int i1 = 0;
    while (i2 < i5)
    {
      View localView = getChildAt(i2);
      q localq = (q)localView.getLayoutParams();
      int i3 = i1;
      if (g(localView))
      {
        if ((paramBoolean) && (!c)) {
          i3 = i1;
        }
      }
      else
      {
        i2 += 1;
        i1 = i3;
        continue;
      }
      int i4 = localView.getWidth();
      if (a(localView, 3)) {
        i1 |= k.a(localView, -i4, localView.getTop());
      }
      for (;;)
      {
        c = false;
        i4 = i1;
        break;
        i1 |= l.a(localView, getWidth(), localView.getTop());
      }
    }
    m.a();
    n.a();
    if (i1 != 0) {
      invalidate();
    }
  }
  
  boolean a(View paramView, int paramInt)
  {
    return (e(paramView) & paramInt) == paramInt;
  }
  
  public void addFocusables(ArrayList<View> paramArrayList, int paramInt1, int paramInt2)
  {
    int i3 = 0;
    if (getDescendantFocusability() == 393216) {
      return;
    }
    int i4 = getChildCount();
    int i1 = 0;
    int i2 = 0;
    View localView;
    if (i1 < i4)
    {
      localView = getChildAt(i1);
      if (g(localView)) {
        if (j(localView))
        {
          i2 = 1;
          localView.addFocusables(paramArrayList, paramInt1, paramInt2);
        }
      }
      for (;;)
      {
        i1 += 1;
        break;
        J.add(localView);
      }
    }
    if (i2 == 0)
    {
      i2 = J.size();
      i1 = i3;
      while (i1 < i2)
      {
        localView = (View)J.get(i1);
        if (localView.getVisibility() == 0) {
          localView.addFocusables(paramArrayList, paramInt1, paramInt2);
        }
        i1 += 1;
      }
    }
    J.clear();
  }
  
  public void addView(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams)
  {
    super.addView(paramView, paramInt, paramLayoutParams);
    if ((a() != null) || (g(paramView))) {
      bp.c(paramView, 4);
    }
    for (;;)
    {
      if (!c) {
        bp.a(paramView, e);
      }
      return;
      bp.c(paramView, 1);
    }
  }
  
  View b(int paramInt)
  {
    int i1 = android.support.v4.view.m.a(paramInt, bp.e(this));
    int i2 = getChildCount();
    paramInt = 0;
    while (paramInt < i2)
    {
      View localView = getChildAt(paramInt);
      if ((e(localView) & 0x7) == (i1 & 0x7)) {
        return localView;
      }
      paramInt += 1;
    }
    return null;
  }
  
  public void b()
  {
    a(false);
  }
  
  public void b(int paramInt1, int paramInt2)
  {
    paramInt2 = android.support.v4.view.m.a(paramInt2, bp.e(this));
    Object localObject;
    if (paramInt2 == 3)
    {
      r = paramInt1;
      if (paramInt1 != 0)
      {
        if (paramInt2 != 3) {
          break label74;
        }
        localObject = k;
        label33:
        ((au)localObject).e();
      }
      switch (paramInt1)
      {
      }
    }
    label74:
    do
    {
      do
      {
        return;
        if (paramInt2 != 5) {
          break;
        }
        s = paramInt1;
        break;
        localObject = l;
        break label33;
        localObject = b(paramInt2);
      } while (localObject == null);
      h((View)localObject);
      return;
      localObject = b(paramInt2);
    } while (localObject == null);
    i((View)localObject);
  }
  
  void b(View paramView)
  {
    q localq = (q)paramView.getLayoutParams();
    if (d)
    {
      d = false;
      if (v != null) {
        v.onDrawerClosed(paramView);
      }
      a(paramView, false);
      if (hasWindowFocus())
      {
        paramView = getRootView();
        if (paramView != null) {
          paramView.sendAccessibilityEvent(32);
        }
      }
    }
  }
  
  void b(View paramView, float paramFloat)
  {
    q localq = (q)paramView.getLayoutParams();
    if (paramFloat == b) {
      return;
    }
    b = paramFloat;
    a(paramView, paramFloat);
  }
  
  void c()
  {
    int i1 = 0;
    if (!u)
    {
      long l1 = SystemClock.uptimeMillis();
      MotionEvent localMotionEvent = MotionEvent.obtain(l1, l1, 3, 0.0F, 0.0F, 0);
      int i2 = getChildCount();
      while (i1 < i2)
      {
        getChildAt(i1).dispatchTouchEvent(localMotionEvent);
        i1 += 1;
      }
      localMotionEvent.recycle();
      u = true;
    }
  }
  
  void c(View paramView)
  {
    q localq = (q)paramView.getLayoutParams();
    if (!d)
    {
      d = true;
      if (v != null) {
        v.onDrawerOpened(paramView);
      }
      a(paramView, true);
      if (hasWindowFocus()) {
        sendAccessibilityEvent(32);
      }
      paramView.requestFocus();
    }
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return ((paramLayoutParams instanceof q)) && (super.checkLayoutParams(paramLayoutParams));
  }
  
  public void computeScroll()
  {
    int i2 = getChildCount();
    float f1 = 0.0F;
    int i1 = 0;
    while (i1 < i2)
    {
      f1 = Math.max(f1, getChildAtgetLayoutParamsb);
      i1 += 1;
    }
    i = f1;
    if ((k.a(true) | l.a(true))) {
      bp.b(this);
    }
  }
  
  float d(View paramView)
  {
    return getLayoutParamsb;
  }
  
  public void d(int paramInt)
  {
    View localView = b(paramInt);
    if (localView == null) {
      throw new IllegalArgumentException("No drawer view found with gravity " + c(paramInt));
    }
    h(localView);
  }
  
  protected boolean drawChild(Canvas paramCanvas, View paramView, long paramLong)
  {
    int i7 = getHeight();
    boolean bool1 = f(paramView);
    int i3 = 0;
    int i5 = 0;
    int i1 = getWidth();
    int i8 = paramCanvas.save();
    int i2 = i1;
    int i4;
    View localView;
    if (bool1)
    {
      int i9 = getChildCount();
      i4 = 0;
      i3 = i5;
      for (;;)
      {
        if (i4 < i9)
        {
          localView = getChildAt(i4);
          if ((localView != paramView) && (localView.getVisibility() == 0) && (m(localView)) && (g(localView)))
          {
            if (localView.getHeight() < i7)
            {
              i5 = i3;
              i2 = i1;
              i4 += 1;
              i1 = i2;
              i3 = i5;
              continue;
            }
            if (a(localView, 3))
            {
              i2 = localView.getRight();
              if (i2 <= i3) {
                break label534;
              }
            }
          }
        }
      }
    }
    for (;;)
    {
      i5 = i2;
      i2 = i1;
      break;
      int i6 = localView.getLeft();
      i2 = i6;
      i5 = i3;
      if (i6 < i1) {
        break;
      }
      i2 = i1;
      i5 = i3;
      break;
      paramCanvas.clipRect(i3, 0, i1, getHeight());
      i2 = i1;
      boolean bool2 = super.drawChild(paramCanvas, paramView, paramLong);
      paramCanvas.restoreToCount(i8);
      if ((i > 0.0F) && (bool1))
      {
        i1 = (int)(((h & 0xFF000000) >>> 24) * i);
        i4 = h;
        j.setColor(i1 << 24 | i4 & 0xFFFFFF);
        paramCanvas.drawRect(i3, 0.0F, i2, getHeight(), j);
      }
      do
      {
        return bool2;
        if ((z != null) && (a(paramView, 3)))
        {
          i1 = z.getIntrinsicWidth();
          i2 = paramView.getRight();
          i3 = k.b();
          f1 = Math.max(0.0F, Math.min(i2 / i3, 1.0F));
          z.setBounds(i2, paramView.getTop(), i1 + i2, paramView.getBottom());
          z.setAlpha((int)(255.0F * f1));
          z.draw(paramCanvas);
          return bool2;
        }
      } while ((A == null) || (!a(paramView, 5)));
      i1 = A.getIntrinsicWidth();
      i2 = paramView.getLeft();
      i3 = getWidth();
      i4 = l.b();
      float f1 = Math.max(0.0F, Math.min((i3 - i2) / i4, 1.0F));
      A.setBounds(i2 - i1, paramView.getTop(), i2, paramView.getBottom());
      A.setAlpha((int)(255.0F * f1));
      A.draw(paramCanvas);
      return bool2;
      label534:
      i2 = i3;
    }
  }
  
  int e(View paramView)
  {
    return android.support.v4.view.m.a(getLayoutParamsa, bp.e(this));
  }
  
  public void e(int paramInt)
  {
    View localView = b(paramInt);
    if (localView == null) {
      throw new IllegalArgumentException("No drawer view found with gravity " + c(paramInt));
    }
    i(localView);
  }
  
  public boolean f(int paramInt)
  {
    View localView = b(paramInt);
    if (localView != null) {
      return j(localView);
    }
    return false;
  }
  
  boolean f(View paramView)
  {
    return getLayoutParamsa == 0;
  }
  
  public boolean g(int paramInt)
  {
    View localView = b(paramInt);
    if (localView != null) {
      return k(localView);
    }
    return false;
  }
  
  boolean g(View paramView)
  {
    return (android.support.v4.view.m.a(getLayoutParamsa, bp.e(paramView)) & 0x7) != 0;
  }
  
  protected ViewGroup.LayoutParams generateDefaultLayoutParams()
  {
    return new q(-1, -1);
  }
  
  public ViewGroup.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    return new q(getContext(), paramAttributeSet);
  }
  
  protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    if ((paramLayoutParams instanceof q)) {
      return new q((q)paramLayoutParams);
    }
    if ((paramLayoutParams instanceof ViewGroup.MarginLayoutParams)) {
      return new q((ViewGroup.MarginLayoutParams)paramLayoutParams);
    }
    return new q(paramLayoutParams);
  }
  
  public float getDrawerElevation()
  {
    if (d) {
      return f;
    }
    return 0.0F;
  }
  
  public Drawable getStatusBarBackgroundDrawable()
  {
    return y;
  }
  
  public void h(View paramView)
  {
    if (!g(paramView)) {
      throw new IllegalArgumentException("View " + paramView + " is not a sliding drawer");
    }
    if (q)
    {
      q localq = (q)paramView.getLayoutParams();
      b = 1.0F;
      d = true;
      a(paramView, true);
    }
    for (;;)
    {
      invalidate();
      return;
      if (a(paramView, 3)) {
        k.a(paramView, 0, paramView.getTop());
      } else {
        l.a(paramView, getWidth() - paramView.getWidth(), paramView.getTop());
      }
    }
  }
  
  public void i(View paramView)
  {
    if (!g(paramView)) {
      throw new IllegalArgumentException("View " + paramView + " is not a sliding drawer");
    }
    if (q)
    {
      paramView = (q)paramView.getLayoutParams();
      b = 0.0F;
      d = false;
    }
    for (;;)
    {
      invalidate();
      return;
      if (a(paramView, 3)) {
        k.a(paramView, -paramView.getWidth(), paramView.getTop());
      } else {
        l.a(paramView, getWidth(), paramView.getTop());
      }
    }
  }
  
  public boolean j(View paramView)
  {
    if (!g(paramView)) {
      throw new IllegalArgumentException("View " + paramView + " is not a drawer");
    }
    return getLayoutParamsd;
  }
  
  public boolean k(View paramView)
  {
    if (!g(paramView)) {
      throw new IllegalArgumentException("View " + paramView + " is not a drawer");
    }
    return getLayoutParamsb > 0.0F;
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    q = true;
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    q = true;
  }
  
  public void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    if ((E) && (y != null))
    {
      int i1 = a.a(D);
      if (i1 > 0)
      {
        y.setBounds(0, 0, getWidth(), i1);
        y.draw(paramCanvas);
      }
    }
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    boolean bool1 = false;
    int i1 = aw.a(paramMotionEvent);
    boolean bool2 = k.a(paramMotionEvent);
    boolean bool3 = l.a(paramMotionEvent);
    switch (i1)
    {
    default: 
      i1 = 0;
      if (((bool2 | bool3)) || (i1 != 0) || (i()) || (u)) {
        bool1 = true;
      }
      return bool1;
    case 0: 
      label63:
      float f1 = paramMotionEvent.getX();
      float f2 = paramMotionEvent.getY();
      w = f1;
      x = f2;
      if (i > 0.0F)
      {
        paramMotionEvent = k.d((int)f1, (int)f2);
        if ((paramMotionEvent == null) || (!f(paramMotionEvent))) {
          break;
        }
      }
      break;
    }
    for (i1 = 1;; i1 = 0)
    {
      t = false;
      u = false;
      break label63;
      if (!k.d(3)) {
        break;
      }
      m.a();
      n.a();
      i1 = 0;
      break label63;
      a(true);
      t = false;
      u = false;
      break;
    }
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) && (j()))
    {
      android.support.v4.view.r.b(paramKeyEvent);
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  public boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      paramKeyEvent = k();
      if ((paramKeyEvent != null) && (a(paramKeyEvent) == 0)) {
        b();
      }
      return paramKeyEvent != null;
    }
    return super.onKeyUp(paramInt, paramKeyEvent);
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    p = true;
    int i4 = paramInt3 - paramInt1;
    int i5 = getChildCount();
    paramInt3 = 0;
    if (paramInt3 < i5)
    {
      View localView = getChildAt(paramInt3);
      if (localView.getVisibility() == 8) {}
      q localq;
      for (;;)
      {
        paramInt3 += 1;
        break;
        localq = (q)localView.getLayoutParams();
        if (!f(localView)) {
          break label113;
        }
        localView.layout(leftMargin, topMargin, leftMargin + localView.getMeasuredWidth(), topMargin + localView.getMeasuredHeight());
      }
      label113:
      int i6 = localView.getMeasuredWidth();
      int i7 = localView.getMeasuredHeight();
      int i1;
      float f1;
      label167:
      int i2;
      if (a(localView, 3))
      {
        paramInt1 = -i6;
        i1 = (int)(i6 * b) + paramInt1;
        f1 = (i6 + i1) / i6;
        if (f1 == b) {
          break label314;
        }
        i2 = 1;
        label181:
        switch (a & 0x70)
        {
        default: 
          localView.layout(i1, topMargin, i6 + i1, i7 + topMargin);
          label241:
          if (i2 != 0) {
            b(localView, f1);
          }
          if (b <= 0.0F) {
            break;
          }
        }
      }
      for (paramInt1 = 0; localView.getVisibility() != paramInt1; paramInt1 = 4)
      {
        localView.setVisibility(paramInt1);
        break;
        i1 = i4 - (int)(i6 * b);
        f1 = (i4 - i1) / i6;
        break label167;
        label314:
        i2 = 0;
        break label181;
        paramInt1 = paramInt4 - paramInt2;
        localView.layout(i1, paramInt1 - bottomMargin - localView.getMeasuredHeight(), i6 + i1, paramInt1 - bottomMargin);
        break label241;
        int i8 = paramInt4 - paramInt2;
        int i3 = (i8 - i7) / 2;
        if (i3 < topMargin) {
          paramInt1 = topMargin;
        }
        for (;;)
        {
          localView.layout(i1, paramInt1, i6 + i1, i7 + paramInt1);
          break;
          paramInt1 = i3;
          if (i3 + i7 > i8 - bottomMargin) {
            paramInt1 = i8 - bottomMargin - i7;
          }
        }
      }
    }
    p = false;
    q = false;
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i3 = 300;
    int i6 = View.MeasureSpec.getMode(paramInt1);
    int i5 = View.MeasureSpec.getMode(paramInt2);
    int i2 = View.MeasureSpec.getSize(paramInt1);
    int i4 = View.MeasureSpec.getSize(paramInt2);
    int i1;
    label81:
    label105:
    label120:
    View localView;
    if (i6 == 1073741824)
    {
      i1 = i2;
      if (i5 == 1073741824) {}
    }
    else
    {
      if (!isInEditMode()) {
        break label191;
      }
      if (i6 == Integer.MIN_VALUE)
      {
        i1 = i2;
        if (i5 != Integer.MIN_VALUE) {
          break label169;
        }
        i2 = i4;
        i3 = i1;
        setMeasuredDimension(i3, i2);
        if ((D == null) || (!bp.o(this))) {
          break label202;
        }
        i1 = 1;
        i5 = bp.e(this);
        i6 = getChildCount();
        i4 = 0;
        if (i4 >= i6) {
          return;
        }
        localView = getChildAt(i4);
        if (localView.getVisibility() != 8) {
          break label207;
        }
      }
    }
    for (;;)
    {
      i4 += 1;
      break label120;
      i1 = i2;
      if (i6 != 0) {
        break;
      }
      i1 = 300;
      break;
      label169:
      i2 = i3;
      i3 = i1;
      if (i5 == 0) {
        break label81;
      }
      i2 = i4;
      i3 = i1;
      break label81;
      label191:
      throw new IllegalArgumentException("DrawerLayout must be measured with MeasureSpec.EXACTLY.");
      label202:
      i1 = 0;
      break label105;
      label207:
      q localq = (q)localView.getLayoutParams();
      if (i1 != 0)
      {
        i7 = android.support.v4.view.m.a(a, i5);
        if (!bp.o(localView)) {
          break label314;
        }
        a.a(localView, D, i7);
      }
      for (;;)
      {
        if (!f(localView)) {
          break label333;
        }
        localView.measure(View.MeasureSpec.makeMeasureSpec(i3 - leftMargin - rightMargin, 1073741824), View.MeasureSpec.makeMeasureSpec(i2 - topMargin - bottomMargin, 1073741824));
        break;
        label314:
        a.a(localq, D, i7);
      }
      label333:
      if (!g(localView)) {
        break label497;
      }
      if ((d) && (bp.l(localView) != f)) {
        bp.f(localView, f);
      }
      int i7 = e(localView) & 0x7;
      if ((0x0 & i7) != 0) {
        throw new IllegalStateException("Child drawer has absolute gravity " + c(i7) + " but this " + "DrawerLayout" + " already has a " + "drawer view along that edge");
      }
      localView.measure(getChildMeasureSpec(paramInt1, g + leftMargin + rightMargin, width), getChildMeasureSpec(paramInt2, topMargin + bottomMargin, height));
    }
    label497:
    throw new IllegalStateException("Child " + localView + " at index " + i4 + " does not have a valid layout_gravity - must be Gravity.LEFT, " + "Gravity.RIGHT or Gravity.NO_GRAVITY");
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    paramParcelable = (DrawerLayout.SavedState)paramParcelable;
    super.onRestoreInstanceState(paramParcelable.getSuperState());
    if (a != 0)
    {
      View localView = b(a);
      if (localView != null) {
        h(localView);
      }
    }
    b(b, 3);
    b(c, 5);
  }
  
  public void onRtlPropertiesChanged(int paramInt)
  {
    f();
  }
  
  protected Parcelable onSaveInstanceState()
  {
    DrawerLayout.SavedState localSavedState = new DrawerLayout.SavedState(super.onSaveInstanceState());
    View localView = a();
    if (localView != null) {
      a = getLayoutParamsa;
    }
    b = r;
    c = s;
    return localSavedState;
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    k.b(paramMotionEvent);
    l.b(paramMotionEvent);
    float f1;
    float f2;
    boolean bool;
    switch (paramMotionEvent.getAction() & 0xFF)
    {
    case 2: 
    default: 
      return true;
    case 0: 
      f1 = paramMotionEvent.getX();
      f2 = paramMotionEvent.getY();
      w = f1;
      x = f2;
      t = false;
      u = false;
      return true;
    case 1: 
      f2 = paramMotionEvent.getX();
      f1 = paramMotionEvent.getY();
      paramMotionEvent = k.d((int)f2, (int)f1);
      if ((paramMotionEvent != null) && (f(paramMotionEvent)))
      {
        f2 -= w;
        f1 -= x;
        int i1 = k.d();
        if (f2 * f2 + f1 * f1 < i1 * i1)
        {
          paramMotionEvent = a();
          if (paramMotionEvent != null) {
            if (a(paramMotionEvent) == 2) {
              bool = true;
            }
          }
        }
      }
      break;
    }
    for (;;)
    {
      a(bool);
      t = false;
      return true;
      bool = false;
      continue;
      a(true);
      t = false;
      u = false;
      return true;
      bool = true;
    }
  }
  
  public void requestDisallowInterceptTouchEvent(boolean paramBoolean)
  {
    super.requestDisallowInterceptTouchEvent(paramBoolean);
    t = paramBoolean;
    if (paramBoolean) {
      a(true);
    }
  }
  
  public void requestLayout()
  {
    if (!p) {
      super.requestLayout();
    }
  }
  
  public void setDrawerElevation(float paramFloat)
  {
    f = paramFloat;
    int i1 = 0;
    while (i1 < getChildCount())
    {
      View localView = getChildAt(i1);
      if (g(localView)) {
        bp.f(localView, f);
      }
      i1 += 1;
    }
  }
  
  public void setDrawerListener(p paramp)
  {
    v = paramp;
  }
  
  public void setDrawerLockMode(int paramInt)
  {
    b(paramInt, 3);
    b(paramInt, 5);
  }
  
  public void setScrimColor(int paramInt)
  {
    h = paramInt;
    invalidate();
  }
  
  public void setStatusBarBackground(int paramInt)
  {
    if (paramInt != 0) {}
    for (Drawable localDrawable = android.support.v4.content.a.a(getContext(), paramInt);; localDrawable = null)
    {
      y = localDrawable;
      invalidate();
      return;
    }
  }
  
  public void setStatusBarBackground(Drawable paramDrawable)
  {
    y = paramDrawable;
    invalidate();
  }
  
  public void setStatusBarBackgroundColor(int paramInt)
  {
    y = new ColorDrawable(paramInt);
    invalidate();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.DrawerLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */