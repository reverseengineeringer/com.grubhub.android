package com.google.android.gms.common.api;

import android.content.IntentSender.SendIntentException;
import android.support.v4.app.q;
import android.support.v4.app.w;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.e;
import java.util.List;

class aw
  implements Runnable
{
  private final int b;
  private final ConnectionResult c;
  
  public aw(zzn paramzzn, int paramInt, ConnectionResult paramConnectionResult)
  {
    b = paramInt;
    c = paramConnectionResult;
  }
  
  public void run()
  {
    if (c.a()) {
      try
      {
        int i = a.getActivity().getSupportFragmentManager().f().indexOf(a);
        c.a(a.getActivity(), (i + 1 << 16) + 1);
        return;
      }
      catch (IntentSender.SendIntentException localSendIntentException)
      {
        zzn.a(a);
        return;
      }
    }
    if (e.b(c.c()))
    {
      e.a(c.c(), a.getActivity(), a, 2, a);
      return;
    }
    zzn.a(a, b, c);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.aw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */