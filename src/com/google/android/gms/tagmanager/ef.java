package com.google.android.gms.tagmanager;

import android.os.Handler;
import android.os.Message;

class ef
  extends Handler
{
  private final g b;
  
  public void a(String paramString)
  {
    sendMessage(obtainMessage(1, paramString));
  }
  
  protected void b(String paramString)
  {
    b.a(a, paramString);
  }
  
  public void handleMessage(Message paramMessage)
  {
    switch (what)
    {
    default: 
      ba.a("Don't know how to handle this message.");
      return;
    }
    b((String)obj);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.ef
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */