package android.support.v7.internal.view.menu;

import android.content.Context;
import android.support.v4.view.l;
import android.view.ActionProvider;
import android.view.ActionProvider.VisibilityListener;
import android.view.MenuItem;
import android.view.View;

class t
  extends o
  implements ActionProvider.VisibilityListener
{
  l c;
  
  public t(s params, Context paramContext, ActionProvider paramActionProvider)
  {
    super(params, paramContext, paramActionProvider);
  }
  
  public View a(MenuItem paramMenuItem)
  {
    return a.onCreateActionView(paramMenuItem);
  }
  
  public void a(l paraml)
  {
    c = paraml;
    ActionProvider localActionProvider = a;
    if (paraml != null) {}
    for (paraml = this;; paraml = null)
    {
      localActionProvider.setVisibilityListener(paraml);
      return;
    }
  }
  
  public boolean b()
  {
    return a.overridesItemVisibility();
  }
  
  public boolean c()
  {
    return a.isVisible();
  }
  
  public void onActionProviderVisibilityChanged(boolean paramBoolean)
  {
    if (c != null) {
      c.a(paramBoolean);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.view.menu.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */