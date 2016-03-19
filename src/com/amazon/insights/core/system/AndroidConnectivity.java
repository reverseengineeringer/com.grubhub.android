package com.amazon.insights.core.system;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build.VERSION;
import android.provider.Settings.System;
import com.amazon.insights.core.log.Logger;

public class AndroidConnectivity
  implements Connectivity
{
  private static final Logger logger = Logger.getLogger(Connectivity.class);
  private Context context;
  protected boolean hasMobile;
  protected boolean hasWifi;
  protected boolean hasWired;
  protected boolean inAirplaneMode;
  
  public AndroidConnectivity(Context paramContext)
  {
    context = paramContext;
  }
  
  private void determineAvailability()
  {
    Object localObject2 = (ConnectivityManager)context.getSystemService("connectivity");
    boolean bool;
    Object localObject1;
    if (Settings.System.getInt(context.getContentResolver(), "airplane_mode_on", 0) != 0)
    {
      bool = true;
      inAirplaneMode = bool;
      logger.v("Airplane mode: " + inAirplaneMode);
      if (localObject2 == null) {
        break label223;
      }
      localObject1 = ((ConnectivityManager)localObject2).getActiveNetworkInfo();
      label76:
      hasWifi = false;
      hasWired = false;
      if (localObject2 == null) {
        break label228;
      }
      bool = true;
      label93:
      hasMobile = bool;
      if (localObject1 != null)
      {
        if (!((NetworkInfo)localObject1).isConnectedOrConnecting()) {
          break label248;
        }
        int i = ((NetworkInfo)localObject1).getType();
        if (Build.VERSION.SDK_INT >= 13)
        {
          if (i != 9) {
            break label233;
          }
          bool = true;
          label130:
          hasWired = bool;
        }
        if ((i != 1) && (i != 6)) {
          break label238;
        }
        bool = true;
        label148:
        hasWifi = bool;
        if ((i != 0) && (i != 4) && (i != 5) && (i != 2) && (i != 3)) {
          break label243;
        }
        bool = true;
        label179:
        hasMobile = bool;
      }
      label184:
      localObject2 = logger;
      if (!hasWifi) {
        break label256;
      }
      localObject1 = "On Wifi";
    }
    for (;;)
    {
      ((Logger)localObject2).v(String.format("Device Connectivity (%s)", new Object[] { localObject1 }));
      return;
      bool = false;
      break;
      label223:
      localObject1 = null;
      break label76;
      label228:
      bool = false;
      break label93;
      label233:
      bool = false;
      break label130;
      label238:
      bool = false;
      break label148;
      label243:
      bool = false;
      break label179;
      label248:
      hasMobile = false;
      break label184;
      label256:
      if (hasMobile) {
        localObject1 = "On Mobile";
      } else {
        localObject1 = "No network connectivity";
      }
    }
  }
  
  public boolean hasWAN()
  {
    return (hasMobile) && (!inAirplaneMode);
  }
  
  public boolean hasWifi()
  {
    return hasWifi;
  }
  
  public boolean hasWired()
  {
    return hasWired;
  }
  
  public boolean isConnected()
  {
    determineAvailability();
    return (hasWifi()) || (hasWAN()) || (hasWired());
  }
}

/* Location:
 * Qualified Name:     com.amazon.insights.core.system.AndroidConnectivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */