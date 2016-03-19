package com.urbanairship.analytics;

import com.urbanairship.UAirship;
import com.urbanairship.push.PushMessage;
import com.urbanairship.richpush.RichPushMessage;
import com.urbanairship.util.UAStringUtil;
import java.math.BigDecimal;

public class CustomEvent$Builder
{
  private String eventName;
  private String interactionId;
  private String interactionType;
  private String pushSendId;
  private String transactionId;
  private BigDecimal value;
  
  public CustomEvent$Builder(String paramString)
  {
    if (UAStringUtil.isEmpty(paramString)) {
      throw new IllegalArgumentException("Event name must not be null or empty.");
    }
    if (paramString.length() > 255) {
      throw new IllegalArgumentException("Event name is larger than 255 characters.");
    }
    eventName = paramString;
  }
  
  public CustomEvent addEvent()
  {
    CustomEvent localCustomEvent = create();
    UAirship.shared().getAnalytics().addEvent(localCustomEvent);
    return localCustomEvent;
  }
  
  public CustomEvent create()
  {
    Long localLong = null;
    CustomEvent localCustomEvent = new CustomEvent(null);
    CustomEvent.access$302(localCustomEvent, eventName);
    if (value == null) {}
    for (;;)
    {
      CustomEvent.access$402(localCustomEvent, localLong);
      CustomEvent.access$502(localCustomEvent, transactionId);
      CustomEvent.access$602(localCustomEvent, interactionType);
      CustomEvent.access$702(localCustomEvent, interactionId);
      CustomEvent.access$802(localCustomEvent, pushSendId);
      return localCustomEvent;
      localLong = Long.valueOf(value.movePointRight(6).longValue());
    }
  }
  
  public Builder setAttribution(PushMessage paramPushMessage)
  {
    if (paramPushMessage != null) {
      pushSendId = paramPushMessage.getSendId();
    }
    return this;
  }
  
  public Builder setEventValue(double paramDouble)
  {
    return setEventValue(BigDecimal.valueOf(paramDouble));
  }
  
  public Builder setEventValue(int paramInt)
  {
    return setEventValue(new BigDecimal(paramInt));
  }
  
  public Builder setEventValue(String paramString)
  {
    if (UAStringUtil.isEmpty(paramString))
    {
      value = null;
      return this;
    }
    return setEventValue(new BigDecimal(paramString));
  }
  
  public Builder setEventValue(BigDecimal paramBigDecimal)
  {
    if (paramBigDecimal == null)
    {
      value = null;
      return this;
    }
    if (paramBigDecimal.compareTo(CustomEvent.access$000()) > 0) {
      throw new IllegalArgumentException("The value is bigger than " + CustomEvent.access$000());
    }
    if (paramBigDecimal.compareTo(CustomEvent.access$100()) < 0) {
      throw new IllegalArgumentException("The value is less than " + CustomEvent.access$100());
    }
    value = paramBigDecimal;
    return this;
  }
  
  public Builder setInteraction(RichPushMessage paramRichPushMessage)
  {
    if (paramRichPushMessage != null)
    {
      interactionType = "ua_mcrap";
      interactionId = paramRichPushMessage.getMessageId();
    }
    return this;
  }
  
  public Builder setInteraction(String paramString1, String paramString2)
  {
    if ((paramString2 != null) && (paramString2.length() > 255)) {
      throw new IllegalArgumentException("Interaction ID is larger than 255 characters.");
    }
    if ((paramString1 != null) && (paramString1.length() > 255)) {
      throw new IllegalArgumentException("Interaction type is larger than 255 characters.");
    }
    interactionId = paramString2;
    interactionType = paramString1;
    return this;
  }
  
  public Builder setTransactionId(String paramString)
  {
    if ((paramString != null) && (paramString.length() > 255)) {
      throw new IllegalArgumentException("Transaction ID is larger than 255 characters.");
    }
    transactionId = paramString;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.analytics.CustomEvent.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */