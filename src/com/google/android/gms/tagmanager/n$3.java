package com.google.android.gms.tagmanager;

import android.content.ComponentCallbacks2;
import android.content.res.Configuration;

class n$3
  implements ComponentCallbacks2
{
  n$3(n paramn) {}
  
  public void onConfigurationChanged(Configuration paramConfiguration) {}
  
  public void onLowMemory() {}
  
  public void onTrimMemory(int paramInt)
  {
    if (paramInt == 20) {
      a.b();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.n.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */