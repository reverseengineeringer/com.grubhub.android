package com.urbanairship.util;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.urbanairship.Logger;
import com.urbanairship.UAirship;

public class Network
{
  public static boolean isConnected()
  {
    Object localObject = (ConnectivityManager)UAirship.getApplicationContext().getSystemService("connectivity");
    if (localObject != null)
    {
      localObject = ((ConnectivityManager)localObject).getActiveNetworkInfo();
      if ((localObject != null) && (((NetworkInfo)localObject).isConnected())) {
        return true;
      }
    }
    else
    {
      Logger.error("Error fetching network info.");
      return false;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.util.Network
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */