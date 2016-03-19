package com.google.android.gms.d;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.wallet.FullWalletRequest;
import com.google.android.gms.wallet.MaskedWalletRequest;
import com.google.android.gms.wallet.f;
import com.google.android.gms.wallet.k;

public class du
  implements f
{
  public void a(GoogleApiClient paramGoogleApiClient, final int paramInt)
  {
    paramGoogleApiClient.zza(new k(paramGoogleApiClient)
    {
      protected void a(dv paramAnonymousdv)
      {
        paramAnonymousdv.d(paramInt);
        a(Status.a);
      }
    });
  }
  
  public void a(GoogleApiClient paramGoogleApiClient, final FullWalletRequest paramFullWalletRequest, final int paramInt)
  {
    paramGoogleApiClient.zza(new k(paramGoogleApiClient)
    {
      protected void a(dv paramAnonymousdv)
      {
        paramAnonymousdv.a(paramFullWalletRequest, paramInt);
        a(Status.a);
      }
    });
  }
  
  public void a(GoogleApiClient paramGoogleApiClient, final MaskedWalletRequest paramMaskedWalletRequest, final int paramInt)
  {
    paramGoogleApiClient.zza(new k(paramGoogleApiClient)
    {
      protected void a(dv paramAnonymousdv)
      {
        paramAnonymousdv.a(paramMaskedWalletRequest, paramInt);
        a(Status.a);
      }
    });
  }
  
  public void a(GoogleApiClient paramGoogleApiClient, final String paramString1, final String paramString2, final int paramInt)
  {
    paramGoogleApiClient.zza(new k(paramGoogleApiClient)
    {
      protected void a(dv paramAnonymousdv)
      {
        paramAnonymousdv.a(paramString1, paramString2, paramInt);
        a(Status.a);
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.d.du
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */