package com.taplytics;

import com.taplytics.sdk.TaplyticsCodeExperimentListener;
import java.util.HashMap;

public class fh
{
  private static fh b;
  private HashMap<String, TaplyticsCodeExperimentListener> a = new HashMap();
  
  public static fh a()
  {
    if (b != null) {
      return b;
    }
    b = new fh();
    return b;
  }
  
  public void a(String paramString)
  {
    if (iz.a(kb.camel)) {}
    while (!a.containsKey(paramString)) {
      return;
    }
    ((TaplyticsCodeExperimentListener)a.get(paramString)).experimentUpdated();
  }
  
  public void a(String paramString, TaplyticsCodeExperimentListener paramTaplyticsCodeExperimentListener)
  {
    a.put(paramString, paramTaplyticsCodeExperimentListener);
  }
}

/* Location:
 * Qualified Name:     com.taplytics.fh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */