package com.google.android.gms.common.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.app.Fragment;
import android.support.v4.app.ag;
import android.support.v4.app.an;
import android.support.v4.app.ao;
import android.support.v4.app.q;
import android.support.v4.app.w;
import android.support.v4.content.l;
import android.util.Log;
import android.util.SparseArray;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.e;
import com.google.android.gms.common.internal.aq;

public class zzn
  extends Fragment
  implements DialogInterface.OnCancelListener, ao<ConnectionResult>
{
  private boolean a;
  private int b = -1;
  private ConnectionResult c;
  private final Handler d = new Handler(Looper.getMainLooper());
  private final SparseArray<av> e = new SparseArray();
  
  public static zzn a(q paramq)
  {
    aq.b("Must be called from main thread of process");
    w localw = paramq.getSupportFragmentManager();
    try
    {
      zzn localzzn = (zzn)localw.a("GmsSupportLoaderLifecycleFragment");
      if (localzzn != null)
      {
        paramq = localzzn;
        if (!localzzn.isRemoving()) {}
      }
      else
      {
        paramq = new zzn();
        localw.a().a(paramq, "GmsSupportLoaderLifecycleFragment").a();
        localw.b();
      }
      return paramq;
    }
    catch (ClassCastException paramq)
    {
      throw new IllegalStateException("Fragment with tag GmsSupportLoaderLifecycleFragment is not a SupportLoaderLifecycleFragment", paramq);
    }
  }
  
  private void a()
  {
    int i = 0;
    a = false;
    b = -1;
    c = null;
    an localan = getLoaderManager();
    while (i < e.size())
    {
      int j = e.keyAt(i);
      au localau = c(j);
      if ((localau != null) && (localau.n()))
      {
        localan.a(j);
        localan.a(j, null, this);
      }
      i += 1;
    }
  }
  
  private void a(int paramInt, ConnectionResult paramConnectionResult)
  {
    if (!a)
    {
      a = true;
      b = paramInt;
      c = paramConnectionResult;
      d.post(new aw(this, paramInt, paramConnectionResult));
    }
  }
  
  private void b(int paramInt, ConnectionResult paramConnectionResult)
  {
    Log.w("GmsSupportLoaderLifecycleFragment", "Unresolved error while connecting client. Stopping auto-manage.");
    Object localObject = (av)e.get(paramInt);
    if (localObject != null)
    {
      b(paramInt);
      localObject = b;
      if (localObject != null) {
        ((GoogleApiClient.OnConnectionFailedListener)localObject).onConnectionFailed(paramConnectionResult);
      }
    }
    a();
  }
  
  public l<ConnectionResult> a(int paramInt, Bundle paramBundle)
  {
    return new au(getActivity(), e.get(paramInt)).a);
  }
  
  public GoogleApiClient a(int paramInt)
  {
    if (getActivity() != null)
    {
      au localau = c(paramInt);
      if (localau != null) {
        return j;
      }
    }
    return null;
  }
  
  public void a(int paramInt, GoogleApiClient paramGoogleApiClient, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    aq.a(paramGoogleApiClient, "GoogleApiClient instance cannot be null");
    if (e.indexOfKey(paramInt) < 0) {}
    for (boolean bool = true;; bool = false)
    {
      aq.a(bool, "Already managing a GoogleApiClient with id " + paramInt);
      paramGoogleApiClient = new av(paramGoogleApiClient, paramOnConnectionFailedListener, null);
      e.put(paramInt, paramGoogleApiClient);
      if (getActivity() != null)
      {
        an.a(false);
        getLoaderManager().a(paramInt, null, this);
      }
      return;
    }
  }
  
  public void a(l<ConnectionResult> paraml) {}
  
  public void a(l<ConnectionResult> paraml, ConnectionResult paramConnectionResult)
  {
    if (!paramConnectionResult.b()) {
      a(paraml.a(), paramConnectionResult);
    }
  }
  
  public void b(int paramInt)
  {
    e.remove(paramInt);
    getLoaderManager().a(paramInt);
  }
  
  au c(int paramInt)
  {
    try
    {
      au localau = (au)getLoaderManager().b(paramInt);
      return localau;
    }
    catch (ClassCastException localClassCastException)
    {
      throw new IllegalStateException("Unknown loader in SupportLoaderLifecycleFragment", localClassCastException);
    }
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    int i = 1;
    switch (paramInt1)
    {
    default: 
      paramInt1 = 0;
    }
    for (;;)
    {
      if (paramInt1 == 0) {
        break label66;
      }
      a();
      return;
      if (e.a(getActivity()) != 0) {
        break;
      }
      paramInt1 = i;
      continue;
      if (paramInt2 != -1) {
        break;
      }
      paramInt1 = i;
    }
    label66:
    b(b, c);
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    int i = 0;
    if (i < e.size())
    {
      int j = e.keyAt(i);
      paramActivity = c(j);
      if ((paramActivity != null) && (e.valueAt(i)).a != j)) {
        getLoaderManager().b(j, null, this);
      }
      for (;;)
      {
        i += 1;
        break;
        getLoaderManager().a(j, null, this);
      }
    }
  }
  
  public void onCancel(DialogInterface paramDialogInterface)
  {
    b(b, new ConnectionResult(13, null));
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (paramBundle != null)
    {
      a = paramBundle.getBoolean("resolving_error", false);
      b = paramBundle.getInt("failed_client_id", -1);
      if (b >= 0) {
        c = new ConnectionResult(paramBundle.getInt("failed_status"), (PendingIntent)paramBundle.getParcelable("failed_resolution"));
      }
    }
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putBoolean("resolving_error", a);
    if (b >= 0)
    {
      paramBundle.putInt("failed_client_id", b);
      paramBundle.putInt("failed_status", c.c());
      paramBundle.putParcelable("failed_resolution", c.d());
    }
  }
  
  public void onStart()
  {
    super.onStart();
    if (!a)
    {
      int i = 0;
      while (i < e.size())
      {
        getLoaderManager().a(e.keyAt(i), null, this);
        i += 1;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.zzn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */