package com.google.android.gms.common.api;

import android.app.PendingIntent;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.app.Fragment;
import android.support.v4.app.ag;
import android.support.v4.app.q;
import android.support.v4.app.w;
import android.util.Log;
import android.util.SparseArray;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.e;
import com.google.android.gms.common.internal.aq;
import java.io.FileDescriptor;
import java.io.PrintWriter;

public class zzm
  extends Fragment
  implements DialogInterface.OnCancelListener
{
  private boolean a;
  private boolean b;
  private int c = -1;
  private ConnectionResult d;
  private final Handler e = new Handler(Looper.getMainLooper());
  private final SparseArray<as> f = new SparseArray();
  
  public static zzm a(q paramq)
  {
    aq.b("Must be called from main thread of process");
    w localw = paramq.getSupportFragmentManager();
    try
    {
      zzm localzzm = (zzm)localw.a("GmsSupportLifecycleFragment");
      if (localzzm != null)
      {
        paramq = localzzm;
        if (!localzzm.isRemoving()) {}
      }
      else
      {
        paramq = new zzm();
        localw.a().a(paramq, "GmsSupportLifecycleFragment").a();
        localw.b();
      }
      return paramq;
    }
    catch (ClassCastException paramq)
    {
      throw new IllegalStateException("Fragment with tag GmsSupportLifecycleFragment is not a SupportLifecycleFragment", paramq);
    }
  }
  
  private void a()
  {
    b = false;
    c = -1;
    d = null;
    int i = 0;
    while (i < f.size())
    {
      f.valueAt(i)).b.connect();
      i += 1;
    }
  }
  
  private void a(int paramInt, ConnectionResult paramConnectionResult)
  {
    Log.w("GmsSupportLifecycleFragment", "Unresolved error while connecting client. Stopping auto-manage.");
    Object localObject = (as)f.get(paramInt);
    if (localObject != null)
    {
      a(paramInt);
      localObject = c;
      if (localObject != null) {
        ((GoogleApiClient.OnConnectionFailedListener)localObject).onConnectionFailed(paramConnectionResult);
      }
    }
    a();
  }
  
  public void a(int paramInt)
  {
    as localas = (as)f.get(paramInt);
    f.remove(paramInt);
    if (localas != null) {
      localas.a();
    }
  }
  
  public void a(int paramInt, GoogleApiClient paramGoogleApiClient, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    aq.a(paramGoogleApiClient, "GoogleApiClient instance cannot be null");
    if (f.indexOfKey(paramInt) < 0) {}
    for (boolean bool = true;; bool = false)
    {
      aq.a(bool, "Already managing a GoogleApiClient with id " + paramInt);
      paramOnConnectionFailedListener = new as(this, paramInt, paramGoogleApiClient, paramOnConnectionFailedListener);
      f.put(paramInt, paramOnConnectionFailedListener);
      if ((a) && (!b)) {
        paramGoogleApiClient.connect();
      }
      return;
    }
  }
  
  public void dump(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    super.dump(paramString, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
    int i = 0;
    while (i < f.size())
    {
      ((as)f.valueAt(i)).a(paramString, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
      i += 1;
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
    a(c, d);
  }
  
  public void onCancel(DialogInterface paramDialogInterface)
  {
    a(c, new ConnectionResult(13, null));
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (paramBundle != null)
    {
      b = paramBundle.getBoolean("resolving_error", false);
      c = paramBundle.getInt("failed_client_id", -1);
      if (c >= 0) {
        d = new ConnectionResult(paramBundle.getInt("failed_status"), (PendingIntent)paramBundle.getParcelable("failed_resolution"));
      }
    }
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putBoolean("resolving_error", b);
    if (c >= 0)
    {
      paramBundle.putInt("failed_client_id", c);
      paramBundle.putInt("failed_status", d.c());
      paramBundle.putParcelable("failed_resolution", d.d());
    }
  }
  
  public void onStart()
  {
    super.onStart();
    a = true;
    if (!b)
    {
      int i = 0;
      while (i < f.size())
      {
        f.valueAt(i)).b.connect();
        i += 1;
      }
    }
  }
  
  public void onStop()
  {
    super.onStop();
    a = false;
    int i = 0;
    while (i < f.size())
    {
      f.valueAt(i)).b.disconnect();
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.zzm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */