package android.support.v7.app;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.media.AudioManager;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v4.view.bh;
import android.support.v4.view.bp;
import android.support.v4.view.cj;
import android.support.v4.view.eg;
import android.support.v7.a.d;
import android.support.v7.internal.widget.ActionBarContextView;
import android.support.v7.internal.widget.ViewStubCompat;
import android.support.v7.internal.widget.aa;
import android.support.v7.internal.widget.ab;
import android.support.v7.internal.widget.ap;
import android.support.v7.internal.widget.aq;
import android.support.v7.internal.widget.as;
import android.support.v7.internal.widget.au;
import android.support.v7.internal.widget.ax;
import android.support.v7.internal.widget.ay;
import android.support.v7.internal.widget.az;
import android.support.v7.internal.widget.bb;
import android.support.v7.internal.widget.bf;
import android.support.v7.internal.widget.x;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.ViewParent;
import android.view.Window;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.widget.FrameLayout;
import android.widget.PopupWindow;

class g
  extends e
  implements android.support.v7.internal.view.menu.j
{
  private boolean A;
  private Rect B;
  private Rect C;
  android.support.v7.b.a g;
  ActionBarContextView h;
  PopupWindow i;
  Runnable j;
  private x k;
  private h l;
  private l m;
  private boolean n;
  private ViewGroup o;
  private ViewGroup p;
  private View q;
  private CharSequence r;
  private boolean s;
  private boolean t;
  private boolean u;
  private k[] v;
  private k w;
  private boolean x;
  private int y;
  private final Runnable z = new Runnable()
  {
    public void run()
    {
      if ((g.a(g.this) & 0x1) != 0) {
        g.a(g.this, 0);
      }
      if ((g.a(g.this) & 0x100) != 0) {
        g.a(g.this, 8);
      }
      g.a(g.this, false);
      g.b(g.this, 0);
    }
  };
  
  g(ActionBarActivity paramActionBarActivity)
  {
    super(paramActionBarActivity);
  }
  
  private k a(int paramInt, boolean paramBoolean)
  {
    Object localObject2 = v;
    Object localObject1;
    if (localObject2 != null)
    {
      localObject1 = localObject2;
      if (localObject2.length > paramInt) {}
    }
    else
    {
      localObject1 = new k[paramInt + 1];
      if (localObject2 != null) {
        System.arraycopy(localObject2, 0, localObject1, 0, localObject2.length);
      }
      v = ((k[])localObject1);
    }
    localObject2 = localObject1[paramInt];
    if (localObject2 == null)
    {
      localObject2 = new k(paramInt);
      localObject1[paramInt] = localObject2;
      return (k)localObject2;
    }
    return (k)localObject2;
  }
  
  private k a(Menu paramMenu)
  {
    k[] arrayOfk = v;
    int i1;
    int i2;
    if (arrayOfk != null)
    {
      i1 = arrayOfk.length;
      i2 = 0;
    }
    for (;;)
    {
      if (i2 >= i1) {
        break label57;
      }
      k localk = arrayOfk[i2];
      if ((localk != null) && (j == paramMenu))
      {
        return localk;
        i1 = 0;
        break;
      }
      i2 += 1;
    }
    label57:
    return null;
  }
  
  private void a(int paramInt, k paramk, Menu paramMenu)
  {
    Object localObject1 = paramk;
    Object localObject2 = paramMenu;
    if (paramMenu == null)
    {
      k localk = paramk;
      if (paramk == null)
      {
        localk = paramk;
        if (paramInt >= 0)
        {
          localk = paramk;
          if (paramInt < v.length) {
            localk = v[paramInt];
          }
        }
      }
      localObject1 = localk;
      localObject2 = paramMenu;
      if (localk != null)
      {
        localObject2 = j;
        localObject1 = localk;
      }
    }
    if ((localObject1 != null) && (!o)) {
      return;
    }
    m().b(paramInt, (Menu)localObject2);
  }
  
  private void a(k paramk, KeyEvent paramKeyEvent)
  {
    int i3 = -1;
    if ((o) || (o())) {}
    Object localObject;
    int i1;
    label112:
    label117:
    label121:
    label123:
    do
    {
      do
      {
        for (;;)
        {
          return;
          if (a == 0)
          {
            localObject = a;
            if ((getResourcesgetConfigurationscreenLayout & 0xF) != 4) {
              break label112;
            }
            i1 = 1;
            if (getApplicationInfotargetSdkVersion < 11) {
              break label117;
            }
          }
          for (int i2 = 1;; i2 = 0)
          {
            if ((i1 != 0) && (i2 != 0)) {
              break label121;
            }
            localObject = m();
            if ((localObject == null) || (((android.support.v7.internal.a.a)localObject).c(a, j))) {
              break label123;
            }
            a(paramk, true);
            return;
            i1 = 0;
            break;
          }
        }
        localObject = (WindowManager)a.getSystemService("window");
      } while ((localObject == null) || (!b(paramk, paramKeyEvent)));
      if ((g != null) && (!q)) {
        break label398;
      }
      if (g != null) {
        break;
      }
    } while ((!a(paramk)) || (g == null));
    label187:
    if ((c(paramk)) && (paramk.a()))
    {
      paramKeyEvent = h.getLayoutParams();
      if (paramKeyEvent != null) {
        break label434;
      }
      paramKeyEvent = new ViewGroup.LayoutParams(-2, -2);
    }
    label398:
    label434:
    for (;;)
    {
      i1 = b;
      g.setBackgroundResource(i1);
      ViewParent localViewParent = h.getParent();
      if ((localViewParent != null) && ((localViewParent instanceof ViewGroup))) {
        ((ViewGroup)localViewParent).removeView(h);
      }
      g.addView(h, paramKeyEvent);
      if (!h.hasFocus()) {
        h.requestFocus();
      }
      i1 = -2;
      for (;;)
      {
        n = false;
        paramKeyEvent = new WindowManager.LayoutParams(i1, -2, d, e, 1002, 8519680, -3);
        gravity = c;
        windowAnimations = f;
        ((WindowManager)localObject).addView(g, paramKeyEvent);
        o = true;
        return;
        if ((!q) || (g.getChildCount() <= 0)) {
          break label187;
        }
        g.removeAllViews();
        break label187;
        break;
        if (i != null)
        {
          paramKeyEvent = i.getLayoutParams();
          if (paramKeyEvent != null)
          {
            i1 = i3;
            if (width == -1) {
              continue;
            }
          }
        }
        i1 = -2;
      }
    }
  }
  
  private void a(k paramk, boolean paramBoolean)
  {
    if ((paramBoolean) && (a == 0) && (k != null) && (k.e())) {
      b(j);
    }
    do
    {
      return;
      WindowManager localWindowManager = (WindowManager)a.getSystemService("window");
      if ((localWindowManager != null) && (o))
      {
        if (g != null) {
          localWindowManager.removeView(g);
        }
        if (paramBoolean) {
          a(a, paramk, null);
        }
      }
      m = false;
      n = false;
      o = false;
      h = null;
      q = true;
    } while (w != paramk);
    w = null;
  }
  
  private void a(android.support.v7.internal.view.menu.i parami, boolean paramBoolean)
  {
    if ((k != null) && (k.d()) && ((!cj.b(ViewConfiguration.get(a))) || (k.f())))
    {
      parami = m();
      if ((!k.e()) || (!paramBoolean)) {
        if ((parami != null) && (!o()))
        {
          if ((x) && ((y & 0x1) != 0))
          {
            o.removeCallbacks(z);
            z.run();
          }
          k localk = a(0, true);
          if ((j != null) && (!r) && (parami.a(0, i, j)))
          {
            parami.c(8, j);
            k.g();
          }
        }
      }
      do
      {
        return;
        k.h();
      } while (o());
      parami.b(8, a0j);
      return;
    }
    parami = a(0, true);
    q = true;
    a(parami, false);
    a(parami, null);
  }
  
  private boolean a(k paramk)
  {
    paramk.a(l());
    g = new j(this, l);
    c = 81;
    return true;
  }
  
  private void b(int paramInt)
  {
    a(a(paramInt, true), true);
  }
  
  private void b(android.support.v7.internal.view.menu.i parami)
  {
    if (u) {
      return;
    }
    u = true;
    k.j();
    android.support.v7.internal.a.a locala = m();
    if ((locala != null) && (!o())) {
      locala.b(8, parami);
    }
    u = false;
  }
  
  private boolean b(k paramk)
  {
    ActionBarActivity localActionBarActivity = a;
    TypedValue localTypedValue;
    Resources.Theme localTheme;
    Object localObject1;
    if (((a == 0) || (a == 8)) && (k != null))
    {
      localTypedValue = new TypedValue();
      localTheme = localActionBarActivity.getTheme();
      localTheme.resolveAttribute(android.support.v7.a.b.actionBarTheme, localTypedValue, true);
      localObject1 = null;
      if (resourceId != 0)
      {
        localObject1 = localActionBarActivity.getResources().newTheme();
        ((Resources.Theme)localObject1).setTo(localTheme);
        ((Resources.Theme)localObject1).applyStyle(resourceId, true);
        ((Resources.Theme)localObject1).resolveAttribute(android.support.v7.a.b.actionBarWidgetTheme, localTypedValue, true);
        Object localObject2 = localObject1;
        if (resourceId != 0)
        {
          localObject2 = localObject1;
          if (localObject1 == null)
          {
            localObject2 = localActionBarActivity.getResources().newTheme();
            ((Resources.Theme)localObject2).setTo(localTheme);
          }
          ((Resources.Theme)localObject2).applyStyle(resourceId, true);
        }
        if (localObject2 == null) {
          break label203;
        }
        localObject1 = new ContextThemeWrapper(localActionBarActivity, 0);
        ((Context)localObject1).getTheme().setTo((Resources.Theme)localObject2);
      }
    }
    for (;;)
    {
      localObject1 = new android.support.v7.internal.view.menu.i((Context)localObject1);
      ((android.support.v7.internal.view.menu.i)localObject1).a(this);
      paramk.a((android.support.v7.internal.view.menu.i)localObject1);
      return true;
      localTheme.resolveAttribute(android.support.v7.a.b.actionBarWidgetTheme, localTypedValue, true);
      break;
      label203:
      localObject1 = localActionBarActivity;
    }
  }
  
  private boolean b(k paramk, KeyEvent paramKeyEvent)
  {
    if (o()) {
      return false;
    }
    if (m) {
      return true;
    }
    if ((w != null) && (w != paramk)) {
      a(w, false);
    }
    android.support.v7.internal.a.a locala = m();
    if (locala != null) {
      i = locala.a(a);
    }
    if ((a == 0) || (a == 8)) {}
    for (int i1 = 1;; i1 = 0)
    {
      if ((i1 != 0) && (k != null)) {
        k.i();
      }
      if (i != null) {
        break label396;
      }
      if ((j != null) && (!r)) {
        break label266;
      }
      if ((j == null) && ((!b(paramk)) || (j == null))) {
        break;
      }
      if ((i1 != 0) && (k != null))
      {
        if (l == null) {
          l = new h(this, null);
        }
        k.a(j, l);
      }
      j.g();
      if (m().a(a, j)) {
        break label261;
      }
      paramk.a(null);
      if ((i1 == 0) || (k == null)) {
        break;
      }
      k.a(null, l);
      return false;
    }
    label261:
    r = false;
    label266:
    j.g();
    if (s != null)
    {
      j.b(s);
      s = null;
    }
    if (!locala.a(0, i, j))
    {
      if ((i1 != 0) && (k != null)) {
        k.a(null, l);
      }
      j.h();
      return false;
    }
    if (paramKeyEvent != null)
    {
      i1 = paramKeyEvent.getDeviceId();
      if (KeyCharacterMap.load(i1).getKeyboardType() == 1) {
        break label418;
      }
    }
    label396:
    label418:
    for (boolean bool = true;; bool = false)
    {
      p = bool;
      j.setQwertyMode(p);
      j.h();
      m = true;
      n = false;
      w = paramk;
      return true;
      i1 = -1;
      break;
    }
  }
  
  private void c(int paramInt)
  {
    y |= 1 << paramInt;
    if ((!x) && (o != null))
    {
      bp.a(o, z);
      x = true;
    }
  }
  
  private boolean c(k paramk)
  {
    if (i != null)
    {
      h = i;
      return true;
    }
    if (j == null) {
      return false;
    }
    if (m == null) {
      m = new l(this, null);
    }
    h = ((View)paramk.a(m));
    if (h != null) {}
    for (boolean bool = true;; bool = false) {
      return bool;
    }
  }
  
  private void d(int paramInt)
  {
    k localk = a(paramInt, true);
    if (j != null)
    {
      Bundle localBundle = new Bundle();
      j.a(localBundle);
      if (localBundle.size() > 0) {
        s = localBundle;
      }
      j.g();
      j.clear();
    }
    r = true;
    q = true;
    if (((paramInt == 8) || (paramInt == 0)) && (k != null))
    {
      localk = a(0, false);
      if (localk != null)
      {
        m = false;
        b(localk, null);
      }
    }
  }
  
  private boolean d(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramKeyEvent.getRepeatCount() == 0)
    {
      k localk = a(paramInt, true);
      if (!o) {
        return b(localk, paramKeyEvent);
      }
    }
    return false;
  }
  
  private int e(int paramInt)
  {
    int i2 = 1;
    int i3 = 1;
    int i4 = 0;
    Object localObject1;
    Object localObject2;
    int i1;
    if ((h != null) && ((h.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)))
    {
      localObject1 = (ViewGroup.MarginLayoutParams)h.getLayoutParams();
      if (h.isShown())
      {
        if (B == null)
        {
          B = new Rect();
          C = new Rect();
        }
        localObject2 = B;
        Rect localRect = C;
        ((Rect)localObject2).set(0, paramInt, 0, 0);
        bf.a(p, (Rect)localObject2, localRect);
        if (top == 0)
        {
          i1 = paramInt;
          if (topMargin == i1) {
            break label355;
          }
          topMargin = paramInt;
          if (q != null) {
            break label279;
          }
          q = new View(a);
          q.setBackgroundColor(a.getResources().getColor(d.abc_input_method_navigation_guard));
          p.addView(q, -1, new ViewGroup.LayoutParams(-1, paramInt));
          i1 = 1;
          label201:
          if (q == null) {
            break label317;
          }
          label208:
          i2 = paramInt;
          if (!d)
          {
            i2 = paramInt;
            if (i3 != 0) {
              i2 = 0;
            }
          }
          paramInt = i2;
          i2 = i1;
          i1 = i3;
          label233:
          if (i2 != 0) {
            h.setLayoutParams((ViewGroup.LayoutParams)localObject1);
          }
        }
      }
    }
    for (;;)
    {
      if (q != null)
      {
        localObject1 = q;
        if (i1 == 0) {
          break label342;
        }
      }
      label279:
      label317:
      label342:
      for (i1 = i4;; i1 = 8)
      {
        ((View)localObject1).setVisibility(i1);
        return paramInt;
        i1 = 0;
        break;
        localObject2 = q.getLayoutParams();
        if (height != paramInt)
        {
          height = paramInt;
          q.setLayoutParams((ViewGroup.LayoutParams)localObject2);
        }
        i1 = 1;
        break label201;
        i3 = 0;
        break label208;
        if (topMargin == 0) {
          break label348;
        }
        topMargin = 0;
        i1 = 0;
        break label233;
      }
      label348:
      i2 = 0;
      i1 = 0;
      break label233;
      label355:
      i1 = 0;
      break label201;
      i1 = 0;
    }
  }
  
  private void e(int paramInt, KeyEvent paramKeyEvent)
  {
    boolean bool2 = true;
    if (g != null) {
      return;
    }
    k localk = a(paramInt, true);
    if ((paramInt == 0) && (k != null) && (k.d()) && (!cj.b(ViewConfiguration.get(a)))) {
      if (!k.e())
      {
        if ((o()) || (!b(localk, paramKeyEvent))) {
          break label225;
        }
        bool1 = k.g();
      }
    }
    for (;;)
    {
      label94:
      if (bool1)
      {
        paramKeyEvent = (AudioManager)a.getSystemService("audio");
        if (paramKeyEvent != null)
        {
          paramKeyEvent.playSoundEffect(0);
          return;
          bool1 = k.h();
          continue;
          if ((o) || (n))
          {
            bool1 = o;
            a(localk, true);
            continue;
          }
          if (!m) {
            break label225;
          }
          if (!r) {
            break label230;
          }
          m = false;
        }
      }
    }
    label225:
    label230:
    for (boolean bool1 = b(localk, paramKeyEvent);; bool1 = true)
    {
      if (bool1)
      {
        a(localk, paramKeyEvent);
        bool1 = bool2;
        break label94;
        Log.w("ActionBarActivityDelegateBase", "Couldn't get audio manager");
        return;
      }
      bool1 = false;
      break label94;
      break;
    }
  }
  
  private void r()
  {
    Object localObject2 = null;
    DisplayMetrics localDisplayMetrics = null;
    TypedArray localTypedArray = a.obtainStyledAttributes(android.support.v7.a.l.Theme);
    TypedValue localTypedValue1;
    if (localTypedArray.hasValue(android.support.v7.a.l.Theme_windowFixedWidthMajor)) {
      if (0 == 0)
      {
        localTypedValue1 = new TypedValue();
        localTypedArray.getValue(android.support.v7.a.l.Theme_windowFixedWidthMajor, localTypedValue1);
      }
    }
    for (;;)
    {
      TypedValue localTypedValue2;
      if (localTypedArray.hasValue(android.support.v7.a.l.Theme_windowFixedWidthMinor)) {
        if (0 == 0)
        {
          localTypedValue2 = new TypedValue();
          localTypedArray.getValue(android.support.v7.a.l.Theme_windowFixedWidthMinor, localTypedValue2);
        }
      }
      for (;;)
      {
        Object localObject1;
        if (localTypedArray.hasValue(android.support.v7.a.l.Theme_windowFixedHeightMajor)) {
          if (0 == 0)
          {
            localObject1 = new TypedValue();
            localTypedArray.getValue(android.support.v7.a.l.Theme_windowFixedHeightMajor, (TypedValue)localObject1);
          }
        }
        for (;;)
        {
          if (localTypedArray.hasValue(android.support.v7.a.l.Theme_windowFixedHeightMinor))
          {
            localObject2 = localDisplayMetrics;
            if (0 == 0) {
              localObject2 = new TypedValue();
            }
            localTypedArray.getValue(android.support.v7.a.l.Theme_windowFixedHeightMinor, (TypedValue)localObject2);
          }
          localDisplayMetrics = a.getResources().getDisplayMetrics();
          int i2;
          label191:
          int i1;
          if (widthPixels < heightPixels)
          {
            i2 = 1;
            if (i2 == 0) {
              break label290;
            }
            if ((localTypedValue2 == null) || (type == 0)) {
              break label372;
            }
            if (type != 5) {
              break label296;
            }
            i1 = (int)localTypedValue2.getDimension(localDisplayMetrics);
          }
          for (;;)
          {
            label222:
            if (i2 != 0)
            {
              label226:
              if ((localObject1 == null) || (type == 0)) {
                break label367;
              }
              if (type != 5) {
                break label335;
              }
              i2 = (int)((TypedValue)localObject1).getDimension(localDisplayMetrics);
            }
            for (;;)
            {
              if ((i1 != -1) || (i2 != -1)) {
                a.getWindow().setLayout(i1, i2);
              }
              localTypedArray.recycle();
              return;
              i2 = 0;
              break;
              label290:
              localTypedValue2 = localTypedValue1;
              break label191;
              label296:
              if (type != 6) {
                break label372;
              }
              i1 = (int)localTypedValue2.getFraction(widthPixels, widthPixels);
              break label222;
              localObject1 = localObject2;
              break label226;
              label335:
              if (type == 6) {
                i2 = (int)((TypedValue)localObject1).getFraction(heightPixels, heightPixels);
              } else {
                label367:
                i2 = -1;
              }
            }
            label372:
            i1 = -1;
          }
          localObject1 = null;
          break;
          localObject1 = null;
        }
        localTypedValue2 = null;
        break;
        localTypedValue2 = null;
      }
      localTypedValue1 = null;
      break;
      localTypedValue1 = null;
    }
  }
  
  public a a()
  {
    p();
    android.support.v7.internal.a.b localb = new android.support.v7.internal.a.b(a, c);
    localb.c(A);
    return localb;
  }
  
  android.support.v7.b.a a(android.support.v7.b.b paramb)
  {
    if (g != null) {
      g.c();
    }
    Object localObject1 = new i(this, paramb);
    Context localContext = l();
    Object localObject2;
    boolean bool;
    if (h == null)
    {
      if (e)
      {
        h = new ActionBarContextView(localContext);
        i = new PopupWindow(localContext, null, android.support.v7.a.b.actionModePopupWindowStyle);
        i.setContentView(h);
        i.setWidth(-1);
        localObject2 = new TypedValue();
        a.getTheme().resolveAttribute(android.support.v7.a.b.actionBarSize, (TypedValue)localObject2, true);
        int i1 = TypedValue.complexToDimensionPixelSize(data, a.getResources().getDisplayMetrics());
        h.setContentHeight(i1);
        i.setHeight(-2);
        j = new Runnable()
        {
          public void run()
          {
            i.showAtLocation(h, 55, 0, 0);
          }
        };
      }
    }
    else if (h != null)
    {
      h.c();
      localObject2 = h;
      if (i != null) {
        break label389;
      }
      bool = true;
      label197:
      localObject1 = new android.support.v7.internal.view.b(localContext, (ActionBarContextView)localObject2, (android.support.v7.b.b)localObject1, bool);
      if (!paramb.a((android.support.v7.b.a)localObject1, ((android.support.v7.b.a)localObject1).b())) {
        break label394;
      }
      ((android.support.v7.b.a)localObject1).d();
      h.a((android.support.v7.b.a)localObject1);
      h.setVisibility(0);
      g = ((android.support.v7.b.a)localObject1);
      if (i != null) {
        a.getWindow().getDecorView().post(j);
      }
      h.sendAccessibilityEvent(32);
      if (h.getParent() != null) {
        bp.n((View)h.getParent());
      }
    }
    for (;;)
    {
      if ((g != null) && (a != null)) {
        a.a(g);
      }
      return g;
      localObject2 = (ViewStubCompat)a.findViewById(android.support.v7.a.g.action_mode_bar_stub);
      if (localObject2 == null) {
        break;
      }
      ((ViewStubCompat)localObject2).setLayoutInflater(LayoutInflater.from(localContext));
      h = ((ActionBarContextView)((ViewStubCompat)localObject2).a());
      break;
      label389:
      bool = false;
      break label197;
      label394:
      g = null;
    }
  }
  
  View a(String paramString, Context paramContext, AttributeSet paramAttributeSet)
  {
    int i1;
    if (Build.VERSION.SDK_INT < 21)
    {
      i1 = -1;
      switch (paramString.hashCode())
      {
      }
    }
    for (;;)
    {
      switch (i1)
      {
      default: 
        return null;
        if (paramString.equals("EditText"))
        {
          i1 = 0;
          continue;
          if (paramString.equals("Spinner"))
          {
            i1 = 1;
            continue;
            if (paramString.equals("CheckBox"))
            {
              i1 = 2;
              continue;
              if (paramString.equals("RadioButton"))
              {
                i1 = 3;
                continue;
                if (paramString.equals("CheckedTextView"))
                {
                  i1 = 4;
                  continue;
                  if (paramString.equals("AutoCompleteTextView"))
                  {
                    i1 = 5;
                    continue;
                    if (paramString.equals("MultiAutoCompleteTextView"))
                    {
                      i1 = 6;
                      continue;
                      if (paramString.equals("RatingBar"))
                      {
                        i1 = 7;
                        continue;
                        if (paramString.equals("Button")) {
                          i1 = 8;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
        break;
      }
    }
    return new au(paramContext, paramAttributeSet);
    return new bb(paramContext, paramAttributeSet);
    return new android.support.v7.internal.widget.ar(paramContext, paramAttributeSet);
    return new ay(paramContext, paramAttributeSet);
    return new as(paramContext, paramAttributeSet);
    return new ap(paramContext, paramAttributeSet);
    return new ax(paramContext, paramAttributeSet);
    return new az(paramContext, paramAttributeSet);
    return new aq(paramContext, paramAttributeSet);
  }
  
  public void a(int paramInt)
  {
    p();
    ViewGroup localViewGroup = (ViewGroup)a.findViewById(16908290);
    localViewGroup.removeAllViews();
    a.getLayoutInflater().inflate(paramInt, localViewGroup);
    a.e();
  }
  
  public void a(int paramInt, Menu paramMenu)
  {
    if (paramInt == 8)
    {
      paramMenu = b();
      if (paramMenu != null) {
        paramMenu.e(false);
      }
    }
    while (o()) {
      return;
    }
    a.b(paramInt, paramMenu);
  }
  
  public void a(Configuration paramConfiguration)
  {
    if ((b) && (n))
    {
      a locala = b();
      if (locala != null) {
        locala.a(paramConfiguration);
      }
    }
  }
  
  void a(Bundle paramBundle)
  {
    super.a(paramBundle);
    o = ((ViewGroup)a.getWindow().getDecorView());
    if (android.support.v4.app.ar.b(a) != null)
    {
      paramBundle = c();
      if (paramBundle == null) {
        A = true;
      }
    }
    else
    {
      return;
    }
    paramBundle.c(true);
  }
  
  public void a(android.support.v7.internal.view.menu.i parami)
  {
    a(parami, true);
  }
  
  public void a(View paramView)
  {
    p();
    ViewGroup localViewGroup = (ViewGroup)a.findViewById(16908290);
    localViewGroup.removeAllViews();
    localViewGroup.addView(paramView);
    a.e();
  }
  
  public void a(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    p();
    ViewGroup localViewGroup = (ViewGroup)a.findViewById(16908290);
    localViewGroup.removeAllViews();
    localViewGroup.addView(paramView, paramLayoutParams);
    a.e();
  }
  
  public void a(CharSequence paramCharSequence)
  {
    if (k != null)
    {
      k.setWindowTitle(paramCharSequence);
      return;
    }
    if (b() != null)
    {
      b().a(paramCharSequence);
      return;
    }
    r = paramCharSequence;
  }
  
  boolean a(int paramInt, KeyEvent paramKeyEvent)
  {
    Object localObject = b();
    if ((localObject != null) && (((a)localObject).a(paramInt, paramKeyEvent))) {}
    boolean bool;
    do
    {
      do
      {
        return true;
        if ((w == null) || (!a(w, paramKeyEvent.getKeyCode(), paramKeyEvent, 1))) {
          break;
        }
      } while (w == null);
      w.n = true;
      return true;
      if (w != null) {
        break;
      }
      localObject = a(0, true);
      b((k)localObject, paramKeyEvent);
      bool = a((k)localObject, paramKeyEvent.getKeyCode(), paramKeyEvent, 1);
      m = false;
    } while (bool);
    return false;
  }
  
  public boolean a(int paramInt, View paramView, Menu paramMenu)
  {
    if (paramInt != 0) {
      return m().a(paramInt, paramView, paramMenu);
    }
    return false;
  }
  
  final boolean a(k paramk, int paramInt1, KeyEvent paramKeyEvent, int paramInt2)
  {
    boolean bool2 = false;
    boolean bool1 = false;
    if (paramKeyEvent.isSystem()) {
      bool2 = bool1;
    }
    do
    {
      do
      {
        do
        {
          return bool2;
          if (!m)
          {
            bool1 = bool2;
            if (!b(paramk, paramKeyEvent)) {}
          }
          else
          {
            bool1 = bool2;
            if (j != null) {
              bool1 = j.performShortcut(paramInt1, paramKeyEvent, paramInt2);
            }
          }
          bool2 = bool1;
        } while (!bool1);
        bool2 = bool1;
      } while ((paramInt2 & 0x1) != 0);
      bool2 = bool1;
    } while (k != null);
    a(paramk, true);
    return bool1;
  }
  
  public boolean a(android.support.v7.internal.view.menu.i parami, MenuItem paramMenuItem)
  {
    android.support.v7.internal.a.a locala = m();
    if ((locala != null) && (!o()))
    {
      parami = a(parami.p());
      if (parami != null) {
        return locala.a(a, paramMenuItem);
      }
    }
    return false;
  }
  
  boolean a(KeyEvent paramKeyEvent)
  {
    int i2 = paramKeyEvent.getKeyCode();
    if (paramKeyEvent.getAction() == 0) {}
    for (int i1 = 1; i1 != 0; i1 = 0) {
      return c(i2, paramKeyEvent);
    }
    return b(i2, paramKeyEvent);
  }
  
  public android.support.v7.b.a b(android.support.v7.b.b paramb)
  {
    if (paramb == null) {
      throw new IllegalArgumentException("ActionMode callback can not be null.");
    }
    if (g != null) {
      g.c();
    }
    paramb = new i(this, paramb);
    a locala = b();
    if (locala != null)
    {
      g = locala.a(paramb);
      if (g != null) {
        a.a(g);
      }
    }
    if (g == null) {
      g = a(paramb);
    }
    return g;
  }
  
  void b(Bundle paramBundle)
  {
    p();
  }
  
  public void b(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    p();
    ((ViewGroup)a.findViewById(16908290)).addView(paramView, paramLayoutParams);
    a.e();
  }
  
  protected boolean b(int paramInt, KeyEvent paramKeyEvent)
  {
    switch (paramInt)
    {
    }
    do
    {
      return false;
      e(0, paramKeyEvent);
      return true;
      paramKeyEvent = a(0, false);
    } while ((paramKeyEvent == null) || (!o));
    a(paramKeyEvent, true);
    return true;
  }
  
  boolean b(int paramInt, Menu paramMenu)
  {
    if (paramInt == 8)
    {
      paramMenu = b();
      if (paramMenu != null) {
        paramMenu.e(true);
      }
      return true;
    }
    return a.c(paramInt, paramMenu);
  }
  
  protected boolean c(int paramInt, KeyEvent paramKeyEvent)
  {
    boolean bool = false;
    if (paramInt == 82)
    {
      d(0, paramKeyEvent);
      bool = true;
    }
    while (Build.VERSION.SDK_INT >= 11) {
      return bool;
    }
    return a(paramInt, paramKeyEvent);
  }
  
  public boolean c(int paramInt, Menu paramMenu)
  {
    if (paramInt != 0) {
      return m().a(paramInt, paramMenu);
    }
    return false;
  }
  
  public void e()
  {
    a locala = b();
    if (locala != null) {
      locala.d(false);
    }
  }
  
  public void f()
  {
    a locala = b();
    if (locala != null) {
      locala.d(true);
    }
  }
  
  public void g()
  {
    a locala = b();
    if ((locala != null) && (locala.c())) {
      return;
    }
    c(0);
  }
  
  public boolean h()
  {
    if (g != null) {
      g.c();
    }
    a locala;
    do
    {
      return true;
      locala = b();
    } while ((locala != null) && (locala.d()));
    return false;
  }
  
  int j()
  {
    return android.support.v7.a.b.homeAsUpIndicator;
  }
  
  public void k() {}
  
  final void p()
  {
    if (!n)
    {
      if (b)
      {
        localObject = new TypedValue();
        a.getTheme().resolveAttribute(android.support.v7.a.b.actionBarTheme, (TypedValue)localObject, true);
        if (resourceId != 0)
        {
          localObject = new ContextThemeWrapper(a, resourceId);
          p = ((ViewGroup)LayoutInflater.from((Context)localObject).inflate(android.support.v7.a.i.abc_screen_toolbar, null));
          k = ((x)p.findViewById(android.support.v7.a.g.decor_content_parent));
          k.setWindowCallback(m());
          if (c) {
            k.a(9);
          }
          if (s) {
            k.a(2);
          }
          if (t) {
            k.a(5);
          }
        }
      }
      ViewGroup localViewGroup;
      for (;;)
      {
        bf.b(p);
        localObject = (ViewGroup)a.findViewById(16908290);
        localViewGroup = (ViewGroup)p.findViewById(android.support.v7.a.g.action_bar_activity_content);
        while (((ViewGroup)localObject).getChildCount() > 0)
        {
          View localView = ((ViewGroup)localObject).getChildAt(0);
          ((ViewGroup)localObject).removeViewAt(0);
          localViewGroup.addView(localView);
        }
        localObject = a;
        break;
        if (d) {}
        for (p = ((ViewGroup)LayoutInflater.from(a).inflate(android.support.v7.a.i.abc_screen_simple_overlay_action_mode, null));; p = ((ViewGroup)LayoutInflater.from(a).inflate(android.support.v7.a.i.abc_screen_simple, null)))
        {
          if (Build.VERSION.SDK_INT < 21) {
            break label308;
          }
          bp.a(p, new bh()
          {
            public eg a(View paramAnonymousView, eg paramAnonymouseg)
            {
              int i = paramAnonymouseg.b();
              int j = g.c(g.this, i);
              paramAnonymousView = paramAnonymouseg;
              if (i != j) {
                paramAnonymousView = paramAnonymouseg.a(paramAnonymouseg.a(), j, paramAnonymouseg.c(), paramAnonymouseg.d());
              }
              return paramAnonymousView;
            }
          });
          break;
        }
        label308:
        ((aa)p).setOnFitSystemWindowsListener(new ab()
        {
          public void a(Rect paramAnonymousRect)
          {
            top = g.c(g.this, top);
          }
        });
      }
      a.a(p);
      ((ViewGroup)localObject).setId(-1);
      localViewGroup.setId(16908290);
      if ((localObject instanceof FrameLayout)) {
        ((FrameLayout)localObject).setForeground(null);
      }
      if ((r != null) && (k != null))
      {
        k.setWindowTitle(r);
        r = null;
      }
      r();
      q();
      n = true;
      Object localObject = a(0, false);
      if ((!o()) && ((localObject == null) || (j == null))) {
        c(8);
      }
    }
  }
  
  void q() {}
}

/* Location:
 * Qualified Name:     android.support.v7.app.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */