package com.taplytics;

import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

class ba
  extends h<Object>
{
  ba(az paramaz, m paramm) {}
  
  public void e()
  {
    Object localObject = fy.e().k().n();
    HashSet localHashSet = new HashSet();
    int i;
    if (localObject != null)
    {
      i = 0;
      while (i < ((JSONArray)localObject).length())
      {
        if (((JSONArray)localObject).optJSONObject(i) != null) {
          localHashSet.add(((JSONArray)localObject).optJSONObject(i).optString("_id"));
        }
        i += 1;
      }
    }
    try
    {
      i = ((Integer)a.a("getGeofenceTransition")).intValue();
      int j = ((Integer)m.a("com.google.android.gms.location.Geofence", "GEOFENCE_TRANSITION_ENTER")).intValue();
      int k = ((Integer)m.a("com.google.android.gms.location.Geofence", "GEOFENCE_TRANSITION_EXIT")).intValue();
      localObject = ((List)a.a("getTriggeringGeofences")).iterator();
      while (((Iterator)localObject).hasNext())
      {
        String str = (String)new m(((Iterator)localObject).next()).a("getRequestId");
        if (localHashSet.contains(str)) {
          if (i == j) {
            fy.e().n().a("tlGeofenceEnter", null, null, str);
          } else if (i == k) {
            fy.e().n().a("tlGeofenceExit", null, null, str);
          }
        }
      }
      fy.e().n().a(new bb(this));
      return;
    }
    catch (Exception localException) {}
  }
}

/* Location:
 * Qualified Name:     com.taplytics.ba
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */