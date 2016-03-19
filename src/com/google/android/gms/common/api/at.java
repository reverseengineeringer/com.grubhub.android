package com.google.android.gms.common.api;

import android.content.IntentSender.SendIntentException;
import android.support.v4.app.q;
import android.support.v4.app.w;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.e;
import java.util.List;

class at
  implements Runnable
{
  private final int b;
  private final ConnectionResult c;
  
  public at(zzm paramzzm, int paramInt, ConnectionResult paramConnectionResult)
  {
    b = paramInt;
    c = paramConnectionResult;
  }
  
  public void run()
  {
    if ((!zzm.a(a)) || (zzm.b(a))) {
      return;
    }
    zzm.a(a, true);
    zzm.a(a, b);
    zzm.a(a, c);
    if (c.a()) {
      try
      {
        int i = a.getActivity().getSupportFragmentManager().f().indexOf(a);
        c.a(a.getActivity(), (i + 1 << 16) + 1);
        return;
      }
      catch (IntentSender.SendIntentException localSendIntentException)
      {
        zzm.c(a);
        return;
      }
    }
    if (e.b(c.c()))
    {
      e.a(c.c(), a.getActivity(), a, 2, a);
      return;
    }
    zzm.a(a, b, c);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.at
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */