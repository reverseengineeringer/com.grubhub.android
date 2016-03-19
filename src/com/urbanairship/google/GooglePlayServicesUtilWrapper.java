package com.urbanairship.google;

import android.content.Context;
import com.google.android.gms.common.e;

class GooglePlayServicesUtilWrapper
{
  public static int isGooglePlayServicesAvailable(Context paramContext)
  {
    return e.a(paramContext);
  }
  
  public static boolean isUserRecoverableError(int paramInt)
  {
    return e.b(paramInt);
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.google.GooglePlayServicesUtilWrapper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */