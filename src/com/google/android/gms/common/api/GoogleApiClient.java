package com.google.android.gms.common.api;

import android.content.Context;
import android.os.Looper;
import android.support.v4.app.q;
import com.google.android.gms.common.ConnectionResult;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.concurrent.TimeUnit;

public abstract interface GoogleApiClient
{
  public abstract ConnectionResult blockingConnect();
  
  public abstract ConnectionResult blockingConnect(long paramLong, TimeUnit paramTimeUnit);
  
  public abstract s<Status> clearDefaultAccountAndReconnect();
  
  public abstract void connect();
  
  public abstract void disconnect();
  
  public abstract void dump(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString);
  
  public abstract ConnectionResult getConnectionResult(c<?> paramc);
  
  public abstract Context getContext();
  
  public abstract Looper getLooper();
  
  public abstract int getSessionId();
  
  public abstract boolean hasConnectedApi(c<?> paramc);
  
  public abstract boolean isConnected();
  
  public abstract boolean isConnecting();
  
  public abstract boolean isConnectionCallbacksRegistered(GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks);
  
  public abstract boolean isConnectionFailedListenerRegistered(GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener);
  
  public abstract void reconnect();
  
  public abstract void registerConnectionCallbacks(GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks);
  
  public abstract void registerConnectionFailedListener(GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener);
  
  public abstract void stopAutoManage(q paramq);
  
  public abstract void unregisterConnectionCallbacks(GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks);
  
  public abstract void unregisterConnectionFailedListener(GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener);
  
  public abstract <C extends i> C zza(j<C> paramj);
  
  public abstract <A extends i, R extends v, T extends y<R, A>> T zza(T paramT);
  
  public abstract boolean zza(Scope paramScope);
  
  public abstract boolean zza(c<?> paramc);
  
  public abstract <A extends i, T extends y<? extends v, A>> T zzb(T paramT);
  
  public abstract <L> am<L> zzo(L paramL);
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.GoogleApiClient
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */