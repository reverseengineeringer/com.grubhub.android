package android.support.v7.app;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v7.a.l;
import android.support.v7.b.b;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup.LayoutParams;

abstract class e
{
  final ActionBarActivity a;
  boolean b;
  boolean c;
  boolean d;
  boolean e;
  final android.support.v7.internal.a.a f = new android.support.v7.internal.a.a()
  {
    public View a(int paramAnonymousInt)
    {
      return a.onCreatePanelView(paramAnonymousInt);
    }
    
    public boolean a(int paramAnonymousInt, Menu paramAnonymousMenu)
    {
      return a.a(paramAnonymousInt, paramAnonymousMenu);
    }
    
    public boolean a(int paramAnonymousInt, MenuItem paramAnonymousMenuItem)
    {
      return a.onMenuItemSelected(paramAnonymousInt, paramAnonymousMenuItem);
    }
    
    public boolean a(int paramAnonymousInt, View paramAnonymousView, Menu paramAnonymousMenu)
    {
      return a.a(paramAnonymousInt, paramAnonymousView, paramAnonymousMenu);
    }
    
    public void b(int paramAnonymousInt, Menu paramAnonymousMenu)
    {
      a.onPanelClosed(paramAnonymousInt, paramAnonymousMenu);
    }
    
    public boolean c(int paramAnonymousInt, Menu paramAnonymousMenu)
    {
      return a.onMenuOpened(paramAnonymousInt, paramAnonymousMenu);
    }
  };
  private a g;
  private MenuInflater h;
  private android.support.v7.internal.a.a i;
  private boolean j;
  
  e(ActionBarActivity paramActionBarActivity)
  {
    a = paramActionBarActivity;
    i = f;
  }
  
  static e a(ActionBarActivity paramActionBarActivity)
  {
    if (Build.VERSION.SDK_INT >= 11) {
      return new m(paramActionBarActivity);
    }
    return new g(paramActionBarActivity);
  }
  
  abstract a a();
  
  abstract android.support.v7.b.a a(b paramb);
  
  abstract View a(String paramString, Context paramContext, AttributeSet paramAttributeSet);
  
  abstract void a(int paramInt);
  
  abstract void a(int paramInt, Menu paramMenu);
  
  abstract void a(Configuration paramConfiguration);
  
  void a(Bundle paramBundle)
  {
    paramBundle = a.obtainStyledAttributes(l.Theme);
    if (!paramBundle.hasValue(l.Theme_windowActionBar))
    {
      paramBundle.recycle();
      throw new IllegalStateException("You need to use a Theme.AppCompat theme (or descendant) with this activity.");
    }
    if (paramBundle.getBoolean(l.Theme_windowActionBar, false)) {
      b = true;
    }
    if (paramBundle.getBoolean(l.Theme_windowActionBarOverlay, false)) {
      c = true;
    }
    if (paramBundle.getBoolean(l.Theme_windowActionModeOverlay, false)) {
      d = true;
    }
    e = paramBundle.getBoolean(l.Theme_android_windowIsFloating, false);
    paramBundle.recycle();
  }
  
  abstract void a(View paramView);
  
  abstract void a(View paramView, ViewGroup.LayoutParams paramLayoutParams);
  
  abstract void a(CharSequence paramCharSequence);
  
  abstract boolean a(int paramInt, KeyEvent paramKeyEvent);
  
  abstract boolean a(int paramInt, View paramView, Menu paramMenu);
  
  abstract boolean a(KeyEvent paramKeyEvent);
  
  boolean a(View paramView, Menu paramMenu)
  {
    if (Build.VERSION.SDK_INT < 16) {
      return a.onPrepareOptionsMenu(paramMenu);
    }
    return a.a(paramView, paramMenu);
  }
  
  final a b()
  {
    if ((b) && (g == null)) {
      g = a();
    }
    return g;
  }
  
  abstract void b(Bundle paramBundle);
  
  abstract void b(View paramView, ViewGroup.LayoutParams paramLayoutParams);
  
  abstract boolean b(int paramInt, Menu paramMenu);
  
  final a c()
  {
    return g;
  }
  
  abstract boolean c(int paramInt, Menu paramMenu);
  
  MenuInflater d()
  {
    if (h == null) {
      h = new android.support.v7.internal.view.e(l());
    }
    return h;
  }
  
  abstract void e();
  
  abstract void f();
  
  abstract void g();
  
  abstract boolean h();
  
  final o i()
  {
    return new f(this, null);
  }
  
  abstract int j();
  
  abstract void k();
  
  protected final Context l()
  {
    Context localContext = null;
    Object localObject = b();
    if (localObject != null) {
      localContext = ((a)localObject).b();
    }
    localObject = localContext;
    if (localContext == null) {
      localObject = a;
    }
    return (Context)localObject;
  }
  
  final android.support.v7.internal.a.a m()
  {
    return i;
  }
  
  final void n()
  {
    j = true;
  }
  
  final boolean o()
  {
    return j;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */