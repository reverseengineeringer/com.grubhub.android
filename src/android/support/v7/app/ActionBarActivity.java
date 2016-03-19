package android.support.v7.app;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.support.v4.app.ar;
import android.support.v4.app.di;
import android.support.v4.app.dj;
import android.support.v4.app.q;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup.LayoutParams;

public class ActionBarActivity
  extends q
  implements dj, v
{
  private e a;
  
  private e f()
  {
    if (a == null) {
      a = e.a(this);
    }
    return a;
  }
  
  public Intent a()
  {
    return ar.a(this);
  }
  
  public void a(di paramdi)
  {
    paramdi.a(this);
  }
  
  public void a(android.support.v7.b.a parama) {}
  
  void a(View paramView)
  {
    super.setContentView(paramView);
  }
  
  boolean a(int paramInt, Menu paramMenu)
  {
    return super.onCreatePanelMenu(paramInt, paramMenu);
  }
  
  boolean a(int paramInt, View paramView, Menu paramMenu)
  {
    return super.onPreparePanel(paramInt, paramView, paramMenu);
  }
  
  public boolean a(Intent paramIntent)
  {
    return ar.a(this, paramIntent);
  }
  
  boolean a(View paramView, Menu paramMenu)
  {
    return super.onPrepareOptionsPanel(paramView, paramMenu);
  }
  
  public void addContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    f().b(paramView, paramLayoutParams);
  }
  
  public a b()
  {
    return f().b();
  }
  
  void b(int paramInt, Menu paramMenu)
  {
    super.onPanelClosed(paramInt, paramMenu);
  }
  
  public void b(Intent paramIntent)
  {
    ar.b(this, paramIntent);
  }
  
  public void b(di paramdi) {}
  
  public void b(android.support.v7.b.a parama) {}
  
  public boolean c()
  {
    Object localObject = a();
    if (localObject != null)
    {
      if (a((Intent)localObject))
      {
        localObject = di.a(this);
        a((di)localObject);
        b((di)localObject);
        ((di)localObject).a();
      }
      for (;;)
      {
        try
        {
          android.support.v4.app.a.a(this);
          return true;
        }
        catch (IllegalStateException localIllegalStateException)
        {
          finish();
          continue;
        }
        b(localIllegalStateException);
      }
    }
    return false;
  }
  
  boolean c(int paramInt, Menu paramMenu)
  {
    return super.onMenuOpened(paramInt, paramMenu);
  }
  
  public o d()
  {
    return f().i();
  }
  
  public boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
  {
    if (f().a(paramKeyEvent)) {
      return true;
    }
    return super.dispatchKeyEvent(paramKeyEvent);
  }
  
  public void e() {}
  
  public MenuInflater getMenuInflater()
  {
    return f().d();
  }
  
  public void invalidateOptionsMenu()
  {
    f().g();
  }
  
  public void onBackPressed()
  {
    if (!f().h()) {
      super.onBackPressed();
    }
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    f().a(paramConfiguration);
  }
  
  public final void onContentChanged()
  {
    f().k();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    f().a(paramBundle);
  }
  
  public boolean onCreatePanelMenu(int paramInt, Menu paramMenu)
  {
    return f().c(paramInt, paramMenu);
  }
  
  public View onCreateView(String paramString, Context paramContext, AttributeSet paramAttributeSet)
  {
    View localView = super.onCreateView(paramString, paramContext, paramAttributeSet);
    if (localView != null) {
      return localView;
    }
    return f().a(paramString, paramContext, paramAttributeSet);
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    f().n();
  }
  
  public boolean onKeyShortcut(int paramInt, KeyEvent paramKeyEvent)
  {
    return f().a(paramInt, paramKeyEvent);
  }
  
  public final boolean onMenuItemSelected(int paramInt, MenuItem paramMenuItem)
  {
    if (super.onMenuItemSelected(paramInt, paramMenuItem)) {
      return true;
    }
    a locala = b();
    if ((paramMenuItem.getItemId() == 16908332) && (locala != null) && ((locala.a() & 0x4) != 0)) {
      return c();
    }
    return false;
  }
  
  public boolean onMenuOpened(int paramInt, Menu paramMenu)
  {
    return f().b(paramInt, paramMenu);
  }
  
  public void onPanelClosed(int paramInt, Menu paramMenu)
  {
    f().a(paramInt, paramMenu);
  }
  
  protected void onPostCreate(Bundle paramBundle)
  {
    super.onPostCreate(paramBundle);
    f().b(paramBundle);
  }
  
  protected void onPostResume()
  {
    super.onPostResume();
    f().f();
  }
  
  protected boolean onPrepareOptionsPanel(View paramView, Menu paramMenu)
  {
    return f().a(paramView, paramMenu);
  }
  
  public boolean onPreparePanel(int paramInt, View paramView, Menu paramMenu)
  {
    return f().a(paramInt, paramView, paramMenu);
  }
  
  protected void onStop()
  {
    super.onStop();
    f().e();
  }
  
  protected void onTitleChanged(CharSequence paramCharSequence, int paramInt)
  {
    super.onTitleChanged(paramCharSequence, paramInt);
    f().a(paramCharSequence);
  }
  
  public void setContentView(int paramInt)
  {
    f().a(paramInt);
  }
  
  public void setContentView(View paramView)
  {
    f().a(paramView);
  }
  
  public void setContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    f().a(paramView, paramLayoutParams);
  }
  
  public void supportInvalidateOptionsMenu()
  {
    f().g();
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.ActionBarActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */