package com.urbanairship.location;

import android.location.Criteria;
import android.location.Location;
import android.location.LocationManager;
import com.urbanairship.Logger;
import java.util.Iterator;
import java.util.List;

class StandardLocationAdapter$SingleLocationRequest
  extends PendingLocationResult
{
  private final Criteria criteria;
  private String currentProvider = null;
  private final StandardLocationAdapter.AndroidLocationListener currentProviderListener;
  private final LocationRequestOptions options;
  private final StandardLocationAdapter.AndroidLocationListener providerEnabledListeners;
  
  StandardLocationAdapter$SingleLocationRequest(final StandardLocationAdapter paramStandardLocationAdapter, final LocationRequestOptions paramLocationRequestOptions)
  {
    options = paramLocationRequestOptions;
    criteria = StandardLocationAdapter.access$000(paramStandardLocationAdapter, paramLocationRequestOptions);
    currentProviderListener = new StandardLocationAdapter.AndroidLocationListener(paramStandardLocationAdapter)
    {
      public void onLocationChanged(Location paramAnonymousLocation)
      {
        StandardLocationAdapter.SingleLocationRequest.this.stopUpdates();
        setResult(paramAnonymousLocation);
      }
      
      public void onProviderDisabled(String paramAnonymousString)
      {
        Logger.verbose("StandardLocationAdapter - Provider disabled: " + paramAnonymousString);
        try
        {
          if (!isDone()) {
            StandardLocationAdapter.SingleLocationRequest.this.listenForLocationChanges();
          }
          return;
        }
        finally {}
      }
    };
    providerEnabledListeners = new StandardLocationAdapter.AndroidLocationListener(paramStandardLocationAdapter)
    {
      public void onProviderEnabled(String paramAnonymousString)
      {
        Logger.verbose("StandardLocationAdapter - Provider enabled: " + paramAnonymousString);
        try
        {
          if (!isDone())
          {
            paramAnonymousString = StandardLocationAdapter.access$500(this$0, criteria, paramLocationRequestOptions);
            if ((paramAnonymousString != null) && (!paramAnonymousString.equals(currentProvider))) {
              StandardLocationAdapter.SingleLocationRequest.this.listenForLocationChanges();
            }
          }
          return;
        }
        finally {}
      }
    };
    if (paramLocationRequestOptions.getPriority() != 4) {
      listenForProvidersEnabled();
    }
    listenForLocationChanges();
  }
  
  private void listenForLocationChanges()
  {
    if (currentProvider != null) {
      StandardLocationAdapter.access$700(this$0).removeUpdates(currentProviderListener);
    }
    String str = StandardLocationAdapter.access$500(this$0, criteria, options);
    currentProvider = str;
    if (str != null)
    {
      Logger.verbose("StandardLocationAdapter - Single request using provider: " + str);
      StandardLocationAdapter.access$700(this$0).requestLocationUpdates(str, 0L, 0.0F, currentProviderListener);
    }
  }
  
  private void listenForProvidersEnabled()
  {
    Object localObject = StandardLocationAdapter.access$700(this$0).getProviders(criteria, false);
    if (localObject != null)
    {
      localObject = ((List)localObject).iterator();
      while (((Iterator)localObject).hasNext())
      {
        String str = (String)((Iterator)localObject).next();
        Logger.verbose("StandardLocationAdapter - Single location request listening provider enable/disabled for: " + str);
        StandardLocationAdapter.access$700(this$0).requestLocationUpdates(str, Long.MAX_VALUE, Float.MAX_VALUE, providerEnabledListeners);
      }
    }
  }
  
  private void stopUpdates()
  {
    StandardLocationAdapter.access$700(this$0).removeUpdates(currentProviderListener);
    StandardLocationAdapter.access$700(this$0).removeUpdates(providerEnabledListeners);
  }
  
  protected void onCancel()
  {
    Logger.verbose("StandardLocationAdapter - Canceling single request.");
    stopUpdates();
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.location.StandardLocationAdapter.SingleLocationRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */