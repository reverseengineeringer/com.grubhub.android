package com.google.android.gms.common.api;

import android.os.Handler;
import com.google.android.gms.common.ConnectionResult;
import java.io.FileDescriptor;
import java.io.PrintWriter;

class as
  implements GoogleApiClient.OnConnectionFailedListener
{
  public final int a;
  public final GoogleApiClient b;
  public final GoogleApiClient.OnConnectionFailedListener c;
  
  public as(zzm paramzzm, int paramInt, GoogleApiClient paramGoogleApiClient, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    a = paramInt;
    b = paramGoogleApiClient;
    c = paramOnConnectionFailedListener;
    paramGoogleApiClient.registerConnectionFailedListener(this);
  }
  
  public void a()
  {
    b.unregisterConnectionFailedListener(this);
    b.disconnect();
  }
  
  public void a(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    paramPrintWriter.append(paramString).append("GoogleApiClient #").print(a);
    paramPrintWriter.println(":");
    b.dump(paramString + "  ", paramFileDescriptor, paramPrintWriter, paramArrayOfString);
  }
  
  public void onConnectionFailed(ConnectionResult paramConnectionResult)
  {
    zzm.d(d).post(new at(d, a, paramConnectionResult));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.as
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */