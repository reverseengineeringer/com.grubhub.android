package com.google.android.gms.maps;

import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.common.internal.aq;
import com.google.android.gms.maps.internal.af;
import com.google.android.gms.maps.internal.cq;
import com.google.android.gms.maps.internal.cv;
import com.google.android.gms.maps.internal.s;
import com.google.android.gms.maps.internal.v;

class j
  implements af
{
  private final Fragment a;
  private final v b;
  
  public j(Fragment paramFragment, v paramv)
  {
    b = ((v)aq.a(paramv));
    a = ((Fragment)aq.a(paramFragment));
  }
  
  public View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    try
    {
      paramLayoutInflater = b.a(com.google.android.gms.c.j.a(paramLayoutInflater), com.google.android.gms.c.j.a(paramViewGroup), paramBundle);
      return (View)com.google.android.gms.c.j.a(paramLayoutInflater);
    }
    catch (RemoteException paramLayoutInflater)
    {
      throw new com.google.android.gms.maps.model.f(paramLayoutInflater);
    }
  }
  
  public void a() {}
  
  public void a(Activity paramActivity, Bundle paramBundle1, Bundle paramBundle2)
  {
    try
    {
      b.a(com.google.android.gms.c.j.a(paramActivity), null, paramBundle2);
      return;
    }
    catch (RemoteException paramActivity)
    {
      throw new com.google.android.gms.maps.model.f(paramActivity);
    }
  }
  
  public void a(Bundle paramBundle)
  {
    Bundle localBundle = paramBundle;
    if (paramBundle == null) {}
    try
    {
      localBundle = new Bundle();
      paramBundle = a.getArguments();
      if ((paramBundle != null) && (paramBundle.containsKey("StreetViewPanoramaOptions"))) {
        cv.a(localBundle, "StreetViewPanoramaOptions", paramBundle.getParcelable("StreetViewPanoramaOptions"));
      }
      b.a(localBundle);
      return;
    }
    catch (RemoteException paramBundle)
    {
      throw new com.google.android.gms.maps.model.f(paramBundle);
    }
  }
  
  public void a(final f paramf)
  {
    try
    {
      b.a(new cq()
      {
        public void a(s paramAnonymouss)
          throws RemoteException
        {
          paramf.a(new g(paramAnonymouss));
        }
      });
      return;
    }
    catch (RemoteException paramf)
    {
      throw new com.google.android.gms.maps.model.f(paramf);
    }
  }
  
  public void b()
  {
    try
    {
      b.b();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new com.google.android.gms.maps.model.f(localRemoteException);
    }
  }
  
  public void b(Bundle paramBundle)
  {
    try
    {
      b.b(paramBundle);
      return;
    }
    catch (RemoteException paramBundle)
    {
      throw new com.google.android.gms.maps.model.f(paramBundle);
    }
  }
  
  public void c()
  {
    try
    {
      b.c();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new com.google.android.gms.maps.model.f(localRemoteException);
    }
  }
  
  public void d() {}
  
  public void e()
  {
    try
    {
      b.d();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new com.google.android.gms.maps.model.f(localRemoteException);
    }
  }
  
  public void f()
  {
    try
    {
      b.e();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new com.google.android.gms.maps.model.f(localRemoteException);
    }
  }
  
  public void g()
  {
    try
    {
      b.f();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new com.google.android.gms.maps.model.f(localRemoteException);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */