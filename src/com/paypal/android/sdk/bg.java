package com.paypal.android.sdk;

import java.util.Timer;
import java.util.TimerTask;

final class bg
  extends TimerTask
{
  bg(bf parambf) {}
  
  public final void run()
  {
    bf.a(a);
    ch.a(bf.h(), "****** LogRiskMetadataTask #" + bf.b(a));
    if (bf.c(a))
    {
      ch.a(bf.h(), "No host activity in the last " + bf.d(a) / 1000L + " seconds. Stopping update interval.");
      bf.e(a).cancel();
      return;
    }
    try
    {
      bf.f(a);
      return;
    }
    catch (Exception localException)
    {
      ch.a(bf.h(), "Error in logRiskMetadataTask: ", localException);
    }
  }
}

/* Location:
 * Qualified Name:     com.paypal.android.sdk.bg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */