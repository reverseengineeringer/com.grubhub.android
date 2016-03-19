package android.support.v7.app;

import android.app.Activity;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.v4.widget.DrawerLayout;
import android.support.v7.widget.Toolbar;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;

public class n
  implements android.support.v4.widget.p
{
  private final o a;
  private final DrawerLayout b;
  private r c;
  private Drawable d;
  private boolean e = true;
  private boolean f;
  private final int g;
  private final int h;
  private View.OnClickListener i;
  private boolean j = false;
  
  public n(Activity paramActivity, DrawerLayout paramDrawerLayout, int paramInt1, int paramInt2)
  {
    this(paramActivity, null, paramDrawerLayout, null, paramInt1, paramInt2);
  }
  
  <T extends Drawable,  extends r> n(Activity paramActivity, Toolbar paramToolbar, DrawerLayout paramDrawerLayout, T paramT, int paramInt1, int paramInt2)
  {
    if (paramToolbar != null)
    {
      a = new w(paramToolbar);
      paramToolbar.setNavigationOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          if (n.a(n.this)) {
            n.b(n.this);
          }
          while (n.c(n.this) == null) {
            return;
          }
          n.c(n.this).onClick(paramAnonymousView);
        }
      });
      b = paramDrawerLayout;
      g = paramInt1;
      h = paramInt2;
      if (paramT != null) {
        break label203;
      }
    }
    label203:
    for (c = new q(paramActivity, a.b());; c = ((r)paramT))
    {
      d = b();
      return;
      if ((paramActivity instanceof p))
      {
        a = ((p)paramActivity).a();
        break;
      }
      if ((paramActivity instanceof v))
      {
        a = ((v)paramActivity).d();
        break;
      }
      if (Build.VERSION.SDK_INT >= 18)
      {
        a = new u(paramActivity, null);
        break;
      }
      if (Build.VERSION.SDK_INT >= 11)
      {
        a = new t(paramActivity, null);
        break;
      }
      a = new s(paramActivity);
      break;
    }
  }
  
  private void c()
  {
    if (b.g(8388611))
    {
      b.e(8388611);
      return;
    }
    b.d(8388611);
  }
  
  public void a()
  {
    Drawable localDrawable;
    if (b.f(8388611))
    {
      c.a(1.0F);
      if (e)
      {
        localDrawable = (Drawable)c;
        if (!b.f(8388611)) {
          break label74;
        }
      }
    }
    label74:
    for (int k = h;; k = g)
    {
      a(localDrawable, k);
      return;
      c.a(0.0F);
      break;
    }
  }
  
  public void a(int paramInt) {}
  
  public void a(Configuration paramConfiguration)
  {
    if (!f) {
      d = b();
    }
    a();
  }
  
  void a(Drawable paramDrawable, int paramInt)
  {
    if ((!j) && (!a.c()))
    {
      Log.w("ActionBarDrawerToggle", "DrawerToggle may not show up because NavigationIcon is not visible. You may need to call actionbar.setDisplayHomeAsUpEnabled(true);");
      j = true;
    }
    a.a(paramDrawable, paramInt);
  }
  
  public void a(View paramView, float paramFloat)
  {
    c.a(Math.min(1.0F, Math.max(0.0F, paramFloat)));
  }
  
  public void a(boolean paramBoolean)
  {
    int k;
    if (paramBoolean != e)
    {
      if (!paramBoolean) {
        break label57;
      }
      Drawable localDrawable = (Drawable)c;
      if (!b.f(8388611)) {
        break label49;
      }
      k = h;
      a(localDrawable, k);
    }
    for (;;)
    {
      e = paramBoolean;
      return;
      label49:
      k = g;
      break;
      label57:
      a(d, 0);
    }
  }
  
  public boolean a(MenuItem paramMenuItem)
  {
    if ((paramMenuItem != null) && (paramMenuItem.getItemId() == 16908332) && (e))
    {
      c();
      return true;
    }
    return false;
  }
  
  Drawable b()
  {
    return a.a();
  }
  
  void b(int paramInt)
  {
    a.a(paramInt);
  }
  
  public void onDrawerClosed(View paramView)
  {
    c.a(0.0F);
    if (e) {
      b(g);
    }
  }
  
  public void onDrawerOpened(View paramView)
  {
    c.a(1.0F);
    if (e) {
      b(h);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */