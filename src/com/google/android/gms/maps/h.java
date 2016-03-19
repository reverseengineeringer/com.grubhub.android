package com.google.android.gms.maps;

import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.common.internal.aq;
import com.google.android.gms.maps.internal.ae;
import com.google.android.gms.maps.internal.bp;
import com.google.android.gms.maps.internal.cv;
import com.google.android.gms.maps.internal.d;
import com.google.android.gms.maps.model.f;

class h
  implements ae
{
  private final Fragment a;
  private final com.google.android.gms.maps.internal.j b;
  
  public h(Fragment paramFragment, com.google.android.gms.maps.internal.j paramj)
  {
    b = ((com.google.android.gms.maps.internal.j)aq.a(paramj));
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
      throw new f(paramLayoutInflater);
    }
  }
  
  public void a() {}
  
  public void a(Activity paramActivity, Bundle paramBundle1, Bundle paramBundle2)
  {
    paramBundle1 = (GoogleMapOptions)paramBundle1.getParcelable("MapOptions");
    try
    {
      b.a(com.google.android.gms.c.j.a(paramActivity), paramBundle1, paramBundle2);
      return;
    }
    catch (RemoteException paramActivity)
    {
      throw new f(paramActivity);
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
      if ((paramBundle != null) && (paramBundle.containsKey("MapOptions"))) {
        cv.a(localBundle, "MapOptions", paramBundle.getParcelable("MapOptions"));
      }
      b.a(localBundle);
      return;
    }
    catch (RemoteException paramBundle)
    {
      throw new f(paramBundle);
    }
  }
  
  public void a(final e parame)
  {
    try
    {
      b.a(new bp()
      {
        public void a(d paramAnonymousd)
          throws RemoteException
        {
          parame.a(new c(paramAnonymousd));
        }
      });
      return;
    }
    catch (RemoteException parame)
    {
      throw new f(parame);
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
      throw new f(localRemoteException);
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
      throw new f(paramBundle);
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
      throw new f(localRemoteException);
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
      throw new f(localRemoteException);
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
      throw new f(localRemoteException);
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
      throw new f(localRemoteException);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */