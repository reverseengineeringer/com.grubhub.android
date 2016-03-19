package com.taplytics;

import android.content.SharedPreferences;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;
import android.os.Handler;

class cz
  implements SharedPreferences.OnSharedPreferenceChangeListener
{
  cz(cy paramcy) {}
  
  public void onSharedPreferenceChanged(SharedPreferences paramSharedPreferences, String paramString)
  {
    if ((paramString != null) && (paramString.equals("com.amplitude.api.lastEventId"))) {}
    try
    {
      cy.e(a).postAtFrontOfQueue(new da(this));
      return;
    }
    catch (Exception paramSharedPreferences)
    {
      ck.c("error while getting amplitude event: " + paramSharedPreferences.getMessage());
    }
  }
}

/* Location:
 * Qualified Name:     com.taplytics.cz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */