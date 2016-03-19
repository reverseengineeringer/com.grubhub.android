package com.amazon.insights.delivery;

import com.amazon.insights.event.InternalEvent;

class DefaultDeliveryClient$1
  implements Runnable
{
  DefaultDeliveryClient$1(DefaultDeliveryClient paramDefaultDeliveryClient, InternalEvent paramInternalEvent, long paramLong1, long paramLong2) {}
  
  /* Error */
  public void run()
  {
    // Byte code:
    //   0: invokestatic 41	java/lang/System:currentTimeMillis	()J
    //   3: lstore_1
    //   4: aload_0
    //   5: getfield 22	com/amazon/insights/delivery/DefaultDeliveryClient$1:this$0	Lcom/amazon/insights/delivery/DefaultDeliveryClient;
    //   8: invokestatic 45	com/amazon/insights/delivery/DefaultDeliveryClient:access$100	(Lcom/amazon/insights/delivery/DefaultDeliveryClient;)Lcom/amazon/insights/delivery/EventStore;
    //   11: aload_0
    //   12: getfield 22	com/amazon/insights/delivery/DefaultDeliveryClient$1:this$0	Lcom/amazon/insights/delivery/DefaultDeliveryClient;
    //   15: invokestatic 49	com/amazon/insights/delivery/DefaultDeliveryClient:access$000	(Lcom/amazon/insights/delivery/DefaultDeliveryClient;)Lcom/amazon/insights/event/adapter/EventAdapter;
    //   18: aload_0
    //   19: getfield 24	com/amazon/insights/delivery/DefaultDeliveryClient$1:val$event	Lcom/amazon/insights/event/InternalEvent;
    //   22: invokeinterface 55 2 0
    //   27: checkcast 57	org/json/JSONObject
    //   30: invokevirtual 61	org/json/JSONObject:toString	()Ljava/lang/String;
    //   33: invokeinterface 67 2 0
    //   38: ifeq +77 -> 115
    //   41: invokestatic 71	com/amazon/insights/delivery/DefaultDeliveryClient:access$200	()Lcom/amazon/insights/core/log/Logger;
    //   44: ldc 73
    //   46: iconst_1
    //   47: anewarray 4	java/lang/Object
    //   50: dup
    //   51: iconst_0
    //   52: aload_0
    //   53: getfield 24	com/amazon/insights/delivery/DefaultDeliveryClient$1:val$event	Lcom/amazon/insights/event/InternalEvent;
    //   56: invokeinterface 78 1 0
    //   61: iconst_5
    //   62: iconst_1
    //   63: invokestatic 84	com/amazon/insights/core/util/StringUtil:clipString	(Ljava/lang/String;IZ)Ljava/lang/String;
    //   66: aastore
    //   67: invokestatic 90	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   70: invokevirtual 96	com/amazon/insights/core/log/Logger:devi	(Ljava/lang/String;)V
    //   73: invokestatic 71	com/amazon/insights/delivery/DefaultDeliveryClient:access$200	()Lcom/amazon/insights/core/log/Logger;
    //   76: ldc 98
    //   78: iconst_1
    //   79: anewarray 4	java/lang/Object
    //   82: dup
    //   83: iconst_0
    //   84: invokestatic 41	java/lang/System:currentTimeMillis	()J
    //   87: lload_1
    //   88: lsub
    //   89: invokestatic 104	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   92: aastore
    //   93: invokestatic 90	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   96: invokevirtual 107	com/amazon/insights/core/log/Logger:v	(Ljava/lang/String;)V
    //   99: aload_0
    //   100: getfield 22	com/amazon/insights/delivery/DefaultDeliveryClient$1:this$0	Lcom/amazon/insights/delivery/DefaultDeliveryClient;
    //   103: aload_0
    //   104: getfield 26	com/amazon/insights/delivery/DefaultDeliveryClient$1:val$origEventsProcessed	J
    //   107: aload_0
    //   108: getfield 28	com/amazon/insights/delivery/DefaultDeliveryClient$1:val$startEnqueueTimeMillis	J
    //   111: invokestatic 111	com/amazon/insights/delivery/DefaultDeliveryClient:access$300	(Lcom/amazon/insights/delivery/DefaultDeliveryClient;JJ)V
    //   114: return
    //   115: invokestatic 71	com/amazon/insights/delivery/DefaultDeliveryClient:access$200	()Lcom/amazon/insights/core/log/Logger;
    //   118: ldc 113
    //   120: iconst_1
    //   121: anewarray 4	java/lang/Object
    //   124: dup
    //   125: iconst_0
    //   126: aload_0
    //   127: getfield 24	com/amazon/insights/delivery/DefaultDeliveryClient$1:val$event	Lcom/amazon/insights/event/InternalEvent;
    //   130: invokeinterface 78 1 0
    //   135: iconst_5
    //   136: iconst_1
    //   137: invokestatic 84	com/amazon/insights/core/util/StringUtil:clipString	(Ljava/lang/String;IZ)Ljava/lang/String;
    //   140: aastore
    //   141: invokestatic 90	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   144: invokevirtual 116	com/amazon/insights/core/log/Logger:devw	(Ljava/lang/String;)V
    //   147: goto -48 -> 99
    //   150: astore_3
    //   151: invokestatic 71	com/amazon/insights/delivery/DefaultDeliveryClient:access$200	()Lcom/amazon/insights/core/log/Logger;
    //   154: ldc 113
    //   156: iconst_1
    //   157: anewarray 4	java/lang/Object
    //   160: dup
    //   161: iconst_0
    //   162: aload_0
    //   163: getfield 24	com/amazon/insights/delivery/DefaultDeliveryClient$1:val$event	Lcom/amazon/insights/event/InternalEvent;
    //   166: invokeinterface 78 1 0
    //   171: iconst_5
    //   172: iconst_1
    //   173: invokestatic 84	com/amazon/insights/core/util/StringUtil:clipString	(Ljava/lang/String;IZ)Ljava/lang/String;
    //   176: aastore
    //   177: invokestatic 90	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   180: invokevirtual 116	com/amazon/insights/core/log/Logger:devw	(Ljava/lang/String;)V
    //   183: aload_0
    //   184: getfield 22	com/amazon/insights/delivery/DefaultDeliveryClient$1:this$0	Lcom/amazon/insights/delivery/DefaultDeliveryClient;
    //   187: aload_0
    //   188: getfield 26	com/amazon/insights/delivery/DefaultDeliveryClient$1:val$origEventsProcessed	J
    //   191: aload_0
    //   192: getfield 28	com/amazon/insights/delivery/DefaultDeliveryClient$1:val$startEnqueueTimeMillis	J
    //   195: invokestatic 111	com/amazon/insights/delivery/DefaultDeliveryClient:access$300	(Lcom/amazon/insights/delivery/DefaultDeliveryClient;JJ)V
    //   198: return
    //   199: astore_3
    //   200: aload_0
    //   201: getfield 22	com/amazon/insights/delivery/DefaultDeliveryClient$1:this$0	Lcom/amazon/insights/delivery/DefaultDeliveryClient;
    //   204: aload_0
    //   205: getfield 26	com/amazon/insights/delivery/DefaultDeliveryClient$1:val$origEventsProcessed	J
    //   208: aload_0
    //   209: getfield 28	com/amazon/insights/delivery/DefaultDeliveryClient$1:val$startEnqueueTimeMillis	J
    //   212: invokestatic 111	com/amazon/insights/delivery/DefaultDeliveryClient:access$300	(Lcom/amazon/insights/delivery/DefaultDeliveryClient;JJ)V
    //   215: aload_3
    //   216: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	217	0	this	1
    //   3	85	1	l	long
    //   150	1	3	localEventStoreException	EventStoreException
    //   199	17	3	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   4	99	150	com/amazon/insights/delivery/EventStoreException
    //   115	147	150	com/amazon/insights/delivery/EventStoreException
    //   4	99	199	finally
    //   115	147	199	finally
    //   151	183	199	finally
  }
}

/* Location:
 * Qualified Name:     com.amazon.insights.delivery.DefaultDeliveryClient.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */