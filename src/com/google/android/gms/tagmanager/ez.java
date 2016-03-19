package com.google.android.gms.tagmanager;

import android.content.Context;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

class ez
  implements ai
{
  private static ez a;
  private static final Object b = new Object();
  private String c;
  private String d;
  private cb e;
  private aj f;
  
  private ez(Context paramContext)
  {
    this(ak.a(paramContext), new cv());
  }
  
  ez(aj paramaj, cb paramcb)
  {
    f = paramaj;
    e = paramcb;
  }
  
  public static ai a(Context paramContext)
  {
    synchronized (b)
    {
      if (a == null) {
        a = new ez(paramContext);
      }
      paramContext = a;
      return paramContext;
    }
  }
  
  public boolean a(String paramString)
  {
    if (!e.a())
    {
      ba.b("Too many urls sent too quickly with the TagManagerSender, rate limiting invoked.");
      return false;
    }
    String str = paramString;
    if (c != null)
    {
      str = paramString;
      if (d == null) {}
    }
    try
    {
      str = c + "?" + d + "=" + URLEncoder.encode(paramString, "UTF-8");
      ba.e("Sending wrapped url hit: " + str);
      f.a(str);
      return true;
    }
    catch (UnsupportedEncodingException paramString)
    {
      ba.b("Error wrapping URL for testing.", paramString);
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.ez
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */