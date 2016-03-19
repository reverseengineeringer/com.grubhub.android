package com.grubhub.AppBaseLibrary.android.utils.d;

import android.os.Handler;
import android.os.Message;
import com.google.android.gms.common.api.GoogleApiClient;
import java.lang.ref.WeakReference;

class c
  extends Handler
{
  private WeakReference<a> b;
  
  public c(a parama1, a parama2)
  {
    b = new WeakReference(parama2);
  }
  
  public void handleMessage(Message paramMessage)
  {
    if (what == 1000)
    {
      paramMessage = (a)b.get();
      if (paramMessage != null) {
        a.connect();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.utils.d.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */