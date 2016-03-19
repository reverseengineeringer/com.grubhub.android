package com.paypal.android.sdk;

import android.util.Log;
import org.json.JSONException;

public abstract class dk
  implements dw
{
  private static final String a = dk.class.getSimpleName();
  
  protected static void a(dz paramdz)
  {
    try
    {
      new StringBuilder("parsing success response\n:").append(paramdz.h());
      paramdz.c();
      return;
    }
    catch (Exception localException)
    {
      Log.e("paypal.sdk", "Exception parsing server response", localException);
      paramdz.a(new an(am.c, localException));
    }
  }
  
  protected static void a(dz paramdz, int paramInt)
  {
    paramdz.a(Integer.valueOf(paramInt));
    try
    {
      new StringBuilder("parsing error response:\n").append(paramdz.h());
      paramdz.d();
      return;
    }
    catch (JSONException localJSONException)
    {
      Log.e("paypal.sdk", "Exception parsing server response", localJSONException);
      paramdz.a(am.a.toString(), paramInt + " http response received.  Response not parsable: " + localJSONException.getMessage(), null);
    }
  }
}

/* Location:
 * Qualified Name:     com.paypal.android.sdk.dk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */