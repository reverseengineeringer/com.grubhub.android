package com.google.android.gms.common.api;

import android.content.Context;
import android.os.Bundle;
import android.support.v4.content.l;
import com.google.android.gms.common.ConnectionResult;
import java.io.FileDescriptor;
import java.io.PrintWriter;

class au
  extends l<ConnectionResult>
  implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener
{
  public final GoogleApiClient j;
  private boolean k;
  private ConnectionResult l;
  
  public au(Context paramContext, GoogleApiClient paramGoogleApiClient)
  {
    super(paramContext);
    j = paramGoogleApiClient;
  }
  
  private void a(ConnectionResult paramConnectionResult)
  {
    l = paramConnectionResult;
    if ((b()) && (!c())) {
      a(paramConnectionResult);
    }
  }
  
  public void a(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    super.a(paramString, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
    j.dump(paramString, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
  }
  
  protected void e()
  {
    super.e();
    j.registerConnectionCallbacks(this);
    j.registerConnectionFailedListener(this);
    if (l != null) {
      a(l);
    }
    if ((!j.isConnected()) && (!j.isConnecting()) && (!k)) {
      j.connect();
    }
  }
  
  protected void i()
  {
    j.disconnect();
  }
  
  protected void m()
  {
    l = null;
    k = false;
    j.unregisterConnectionCallbacks(this);
    j.unregisterConnectionFailedListener(this);
    j.disconnect();
  }
  
  public boolean n()
  {
    return k;
  }
  
  public void onConnected(Bundle paramBundle)
  {
    k = false;
    a(ConnectionResult.a);
  }
  
  public void onConnectionFailed(ConnectionResult paramConnectionResult)
  {
    k = true;
    a(paramConnectionResult);
  }
  
  public void onConnectionSuspended(int paramInt) {}
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.au
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */