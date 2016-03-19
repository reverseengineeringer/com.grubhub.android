package com.paypal.android.sdk;

import android.content.Context;
import android.os.Handler;
import android.os.Message;

public class bs
  extends bu
{
  private static final String a = bs.class.getSimpleName();
  private Context b;
  private String c;
  private Handler d;
  
  public bs(Context paramContext, String paramString, Handler paramHandler)
  {
    b = paramContext;
    c = paramString;
    d = paramHandler;
  }
  
  public void run()
  {
    ch.a(a, "entering LoadConfigurationRequest.");
    if (d == null) {
      return;
    }
    try
    {
      d.sendMessage(Message.obtain(d, 10, c));
      z localz = new z(b, c);
      d.sendMessage(Message.obtain(d, 12, localz));
    }
    catch (Exception localException)
    {
      for (;;)
      {
        ch.a(a, "LoadConfigurationRequest loading remote config failed.", localException);
        d.sendMessage(Message.obtain(d, 11, localException));
        bv.a().b(this);
      }
    }
    finally
    {
      bv.a().b(this);
    }
    ch.a(a, "leaving LoadConfigurationRequest.");
  }
}

/* Location:
 * Qualified Name:     com.paypal.android.sdk.bs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */