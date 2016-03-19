package com.google.android.gms.common.api;

class zzg$7
  implements w<Status>
{
  zzg$7(zzg paramzzg, ar paramar, boolean paramBoolean, GoogleApiClient paramGoogleApiClient) {}
  
  public void a(Status paramStatus)
  {
    if ((paramStatus.e()) && (d.isConnected())) {
      d.reconnect();
    }
    a.a(paramStatus);
    if (b) {
      c.disconnect();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.zzg.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */