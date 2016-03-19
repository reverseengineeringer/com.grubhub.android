package com.taplytics;

import android.os.Handler;
import android.os.Looper;
import org.json.JSONObject;

class ja
  implements jm
{
  ja(im paramim, String paramString) {}
  
  public void a(Boolean paramBoolean)
  {
    if (paramBoolean.booleanValue()) {}
    try
    {
      if (im.a(b) == null) {
        im.a(b, new JSONObject());
      }
      im.a(b).put("wasConnected", false);
      new Handler(Looper.getMainLooper()).postDelayed(new jb(this), 10L);
      return;
    }
    catch (Exception paramBoolean)
    {
      ck.b("Sending pairing device socket", paramBoolean);
    }
  }
}

/* Location:
 * Qualified Name:     com.taplytics.ja
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */