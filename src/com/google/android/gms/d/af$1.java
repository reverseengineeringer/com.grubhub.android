package com.google.android.gms.d;

import android.os.RemoteException;
import com.google.android.gms.appdatasearch.UsageInfo;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;

class af$1
  extends ah<Status>
{
  af$1(af paramaf, GoogleApiClient paramGoogleApiClient, String paramString, UsageInfo[] paramArrayOfUsageInfo)
  {
    super(paramGoogleApiClient);
  }
  
  protected void a(w paramw)
    throws RemoteException
  {
    paramw.a(new ai(this), b, c);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.d.af.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */