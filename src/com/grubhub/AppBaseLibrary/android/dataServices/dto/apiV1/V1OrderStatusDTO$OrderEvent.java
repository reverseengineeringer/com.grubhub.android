package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1;

public class V1OrderStatusDTO$OrderEvent
{
  String orderEventDetails;
  String orderEventHeadline;
  Long orderEventTimeInMillis;
  String orderEventType;
  
  public V1OrderStatusDTO$OrderEvent(V1OrderStatusDTO paramV1OrderStatusDTO) {}
  
  public String getOrderEventDetails()
  {
    return orderEventDetails;
  }
  
  public String getOrderEventHeadline()
  {
    return orderEventHeadline;
  }
  
  /* Error */
  public String getOrderEventTime()
  {
    // Byte code:
    //   0: new 32	java/text/SimpleDateFormat
    //   3: dup
    //   4: ldc 34
    //   6: invokespecial 37	java/text/SimpleDateFormat:<init>	(Ljava/lang/String;)V
    //   9: astore_1
    //   10: aload_1
    //   11: invokestatic 43	java/util/TimeZone:getDefault	()Ljava/util/TimeZone;
    //   14: invokevirtual 47	java/text/SimpleDateFormat:setTimeZone	(Ljava/util/TimeZone;)V
    //   17: aload_1
    //   18: new 49	java/util/Date
    //   21: dup
    //   22: aload_0
    //   23: getfield 51	com/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1OrderStatusDTO$OrderEvent:orderEventTimeInMillis	Ljava/lang/Long;
    //   26: invokevirtual 57	java/lang/Long:longValue	()J
    //   29: invokespecial 60	java/util/Date:<init>	(J)V
    //   32: invokevirtual 64	java/text/SimpleDateFormat:format	(Ljava/util/Date;)Ljava/lang/String;
    //   35: astore_1
    //   36: aload_1
    //   37: ldc 66
    //   39: ldc 68
    //   41: invokevirtual 74	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   44: ldc 76
    //   46: ldc 78
    //   48: invokevirtual 74	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   51: astore_2
    //   52: aload_2
    //   53: areturn
    //   54: astore_2
    //   55: aconst_null
    //   56: astore_1
    //   57: invokestatic 83	com/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1OrderStatusDTO:access$000	()Ljava/lang/String;
    //   60: aload_2
    //   61: invokevirtual 86	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   64: invokestatic 92	com/grubhub/AppBaseLibrary/android/utils/e/a:b	(Ljava/lang/String;Ljava/lang/String;)I
    //   67: pop
    //   68: aload_1
    //   69: areturn
    //   70: astore_2
    //   71: goto -14 -> 57
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	74	0	this	OrderEvent
    //   9	60	1	localObject	Object
    //   51	2	2	str	String
    //   54	7	2	localException1	Exception
    //   70	1	2	localException2	Exception
    // Exception table:
    //   from	to	target	type
    //   0	36	54	java/lang/Exception
    //   36	52	70	java/lang/Exception
  }
  
  public long getOrderEventTimeInMillis()
  {
    return orderEventTimeInMillis.longValue();
  }
  
  public String getOrderEventType()
  {
    return orderEventType;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1.V1OrderStatusDTO.OrderEvent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */