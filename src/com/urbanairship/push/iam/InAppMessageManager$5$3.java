package com.urbanairship.push.iam;

import android.app.Activity;
import com.urbanairship.UAirship;
import com.urbanairship.UAirship.OnReadyCallback;
import java.lang.ref.WeakReference;

class InAppMessageManager$5$3
  implements UAirship.OnReadyCallback
{
  InAppMessageManager$5$3(InAppMessageManager.5 param5, WeakReference paramWeakReference) {}
  
  public void onAirshipReady(UAirship paramUAirship)
  {
    paramUAirship = (Activity)val$weakReference.get();
    if (paramUAirship != null) {
      UAirship.shared().getInAppMessageManager().onActivityResumed(paramUAirship);
    }
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.push.iam.InAppMessageManager.5.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */