package com.amazon.insights.delivery;

import com.amazon.insights.core.InsightsContext;
import com.amazon.insights.core.configuration.Configuration;
import com.amazon.insights.core.log.Logger;
import com.amazon.insights.delivery.policy.DeliveryPolicy;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

class DefaultDeliveryClient$3
  implements Runnable
{
  DefaultDeliveryClient$3(DefaultDeliveryClient paramDefaultDeliveryClient, List paramList, CountDownLatch paramCountDownLatch) {}
  
  public void run()
  {
    long l4 = System.currentTimeMillis();
    Object localObject = val$policies.iterator();
    while (((Iterator)localObject).hasNext()) {
      if (!((DeliveryPolicy)((Iterator)localObject).next()).isAllowed()) {
        return;
      }
    }
    try
    {
      val$submitWaitLatch.await(DefaultDeliveryClient.access$400(this$0), TimeUnit.MILLISECONDS);
      long l5 = DefaultDeliveryClient.access$500(this$0).getConfiguration().optLong("maxSubmissionSize", Long.valueOf(102400L)).longValue();
      localObject = new JSONArray();
      EventStore.EventIterator localEventIterator = DefaultDeliveryClient.access$100(this$0).iterator();
      long l1 = 0L;
      int j = DefaultDeliveryClient.access$500(this$0).getConfiguration().optInt("maxSubmissionAllowed", Integer.valueOf(3)).intValue();
      boolean bool1 = true;
      int i = 0;
      boolean bool2;
      for (;;)
      {
        bool2 = bool1;
        if (!localEventIterator.hasNext()) {
          break;
        }
        bool2 = bool1;
        if (i >= j) {
          break;
        }
        l2 = l1;
        try
        {
          if (localEventIterator.peek() == null) {
            break label405;
          }
          l2 = l1;
          long l3 = localEventIterator.peek().length();
          l2 = l3;
          if (l1 + l2 <= l5)
          {
            l1 += l2;
            l2 = l1;
            ((JSONArray)localObject).put(new JSONObject((String)localEventIterator.next()));
            break label402;
          }
          l2 = l1;
          bool2 = DefaultDeliveryClient.access$600(this$0, (JSONArray)localObject, val$policies);
          bool1 = bool2;
          bool2 = bool1;
          if (!bool1) {
            break;
          }
          i += 1;
          JSONArray localJSONArray;
          DefaultDeliveryClient.access$200().e("Could not convert stored event into json", localJSONException1);
        }
        catch (JSONException localJSONException1)
        {
          try
          {
            localEventIterator.removeReadEvents();
            localJSONArray = new JSONArray();
            l1 = 0L;
            localObject = localJSONArray;
          }
          catch (JSONException localJSONException2)
          {
            for (;;) {}
          }
          localJSONException1 = localJSONException1;
          l1 = l2;
        }
      }
      if ((bool2) && (((JSONArray)localObject).length() > 0) && (DefaultDeliveryClient.access$600(this$0, (JSONArray)localObject, val$policies))) {
        localEventIterator.removeReadEvents();
      }
      DefaultDeliveryClient.access$200().v(String.format("Time of attemptDelivery: %d", new Object[] { Long.valueOf(System.currentTimeMillis() - l4) }));
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      for (;;)
      {
        continue;
        label402:
        continue;
        label405:
        long l2 = 0L;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.amazon.insights.delivery.DefaultDeliveryClient.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */