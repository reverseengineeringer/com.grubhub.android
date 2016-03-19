package android.support.v7.internal.view;

import android.annotation.TargetApi;
import android.content.Context;
import android.support.v7.internal.view.menu.aa;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.View;

@TargetApi(11)
public class c
  extends ActionMode
{
  final Context a;
  final android.support.v7.b.a b;
  
  public c(Context paramContext, android.support.v7.b.a parama)
  {
    a = paramContext;
    b = parama;
  }
  
  public void finish()
  {
    b.c();
  }
  
  public View getCustomView()
  {
    return b.i();
  }
  
  public Menu getMenu()
  {
    return aa.a(a, (android.support.v4.b.a.a)b.b());
  }
  
  public MenuInflater getMenuInflater()
  {
    return b.a();
  }
  
  public CharSequence getSubtitle()
  {
    return b.g();
  }
  
  public Object getTag()
  {
    return b.j();
  }
  
  public CharSequence getTitle()
  {
    return b.f();
  }
  
  public boolean getTitleOptionalHint()
  {
    return b.k();
  }
  
  public void invalidate()
  {
    b.d();
  }
  
  public boolean isTitleOptional()
  {
    return b.h();
  }
  
  public void setCustomView(View paramView)
  {
    b.a(paramView);
  }
  
  public void setSubtitle(int paramInt)
  {
    b.b(paramInt);
  }
  
  public void setSubtitle(CharSequence paramCharSequence)
  {
    b.a(paramCharSequence);
  }
  
  public void setTag(Object paramObject)
  {
    b.a(paramObject);
  }
  
  public void setTitle(int paramInt)
  {
    b.a(paramInt);
  }
  
  public void setTitle(CharSequence paramCharSequence)
  {
    b.b(paramCharSequence);
  }
  
  public void setTitleOptionalHint(boolean paramBoolean)
  {
    b.a(paramBoolean);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.view.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */