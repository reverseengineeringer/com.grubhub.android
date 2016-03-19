package com.amazon.insights.delivery;

import java.util.concurrent.CountDownLatch;

class DefaultDeliveryClient$4
  implements Runnable
{
  DefaultDeliveryClient$4(DefaultDeliveryClient paramDefaultDeliveryClient, CountDownLatch paramCountDownLatch) {}
  
  public void run()
  {
    val$eventsReadyLatch.countDown();
  }
}

/* Location:
 * Qualified Name:     com.amazon.insights.delivery.DefaultDeliveryClient.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */