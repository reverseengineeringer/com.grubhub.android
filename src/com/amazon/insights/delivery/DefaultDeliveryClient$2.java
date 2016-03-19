package com.amazon.insights.delivery;

import java.util.concurrent.CountDownLatch;

class DefaultDeliveryClient$2
  implements Runnable
{
  DefaultDeliveryClient$2(DefaultDeliveryClient paramDefaultDeliveryClient, CountDownLatch paramCountDownLatch) {}
  
  public void run()
  {
    val$submitWaitLatch.countDown();
  }
}

/* Location:
 * Qualified Name:     com.amazon.insights.delivery.DefaultDeliveryClient.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */