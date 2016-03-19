package com.google.android.gms.c;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.View;

public final class n
  extends e
{
  private Fragment a;
  
  private n(Fragment paramFragment)
  {
    a = paramFragment;
  }
  
  public static n a(Fragment paramFragment)
  {
    if (paramFragment != null) {
      return new n(paramFragment);
    }
    return null;
  }
  
  public g a()
  {
    return j.a(a.getActivity());
  }
  
  public void a(Intent paramIntent)
  {
    a.startActivity(paramIntent);
  }
  
  public void a(Intent paramIntent, int paramInt)
  {
    a.startActivityForResult(paramIntent, paramInt);
  }
  
  public void a(g paramg)
  {
    paramg = (View)j.a(paramg);
    a.registerForContextMenu(paramg);
  }
  
  public void a(boolean paramBoolean)
  {
    a.setHasOptionsMenu(paramBoolean);
  }
  
  public Bundle b()
  {
    return a.getArguments();
  }
  
  public void b(g paramg)
  {
    paramg = (View)j.a(paramg);
    a.unregisterForContextMenu(paramg);
  }
  
  public void b(boolean paramBoolean)
  {
    a.setMenuVisibility(paramBoolean);
  }
  
  public int c()
  {
    return a.getId();
  }
  
  public void c(boolean paramBoolean)
  {
    a.setRetainInstance(paramBoolean);
  }
  
  public d d()
  {
    return a(a.getParentFragment());
  }
  
  public void d(boolean paramBoolean)
  {
    a.setUserVisibleHint(paramBoolean);
  }
  
  public g e()
  {
    return j.a(a.getResources());
  }
  
  public boolean f()
  {
    return a.getRetainInstance();
  }
  
  public String g()
  {
    return a.getTag();
  }
  
  public d h()
  {
    return a(a.getTargetFragment());
  }
  
  public int i()
  {
    return a.getTargetRequestCode();
  }
  
  public boolean j()
  {
    return a.getUserVisibleHint();
  }
  
  public g k()
  {
    return j.a(a.getView());
  }
  
  public boolean l()
  {
    return a.isAdded();
  }
  
  public boolean m()
  {
    return a.isDetached();
  }
  
  public boolean n()
  {
    return a.isHidden();
  }
  
  public boolean o()
  {
    return a.isInLayout();
  }
  
  public boolean p()
  {
    return a.isRemoving();
  }
  
  public boolean q()
  {
    return a.isResumed();
  }
  
  public boolean r()
  {
    return a.isVisible();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.c.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */