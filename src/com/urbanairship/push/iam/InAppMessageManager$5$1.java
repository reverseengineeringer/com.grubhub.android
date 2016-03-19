package com.urbanairship.push.iam;

import com.urbanairship.UAirship;
import com.urbanairship.UAirship.OnReadyCallback;

class InAppMessageManager$5$1
  implements UAirship.OnReadyCallback
{
  InAppMessageManager$5$1(InAppMessageManager.5 param5) {}
  
  public void onAirshipReady(UAirship paramUAirship)
  {
    UAirship.shared().getInAppMessageManager().onForeground();
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.push.iam.InAppMessageManager.5.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */