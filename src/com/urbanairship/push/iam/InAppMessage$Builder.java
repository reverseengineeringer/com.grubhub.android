package com.urbanairship.push.iam;

import com.urbanairship.actions.ActionValue;
import com.urbanairship.json.JsonMap;
import java.util.HashMap;
import java.util.Map;

public class InAppMessage$Builder
{
  private String alert;
  private Map<String, Map<String, ActionValue>> buttonActionValues = new HashMap();
  private String buttonGroupId;
  private Map<String, ActionValue> clickActionValues;
  private Long durationMilliseconds;
  private Long expiryMS;
  private JsonMap extras;
  private String id;
  private int position = 0;
  private Integer primaryColor;
  private Integer secondaryColor;
  
  public InAppMessage$Builder() {}
  
  public InAppMessage$Builder(InAppMessage paramInAppMessage)
  {
    id = InAppMessage.access$1200(paramInAppMessage);
    buttonGroupId = InAppMessage.access$1300(paramInAppMessage);
    alert = InAppMessage.access$1400(paramInAppMessage);
    expiryMS = Long.valueOf(InAppMessage.access$1500(paramInAppMessage));
    durationMilliseconds = InAppMessage.access$1600(paramInAppMessage);
    position = InAppMessage.access$1700(paramInAppMessage);
    clickActionValues = new HashMap(InAppMessage.access$1800(paramInAppMessage));
    buttonActionValues = new HashMap(InAppMessage.access$1900(paramInAppMessage));
    extras = InAppMessage.access$2000(paramInAppMessage);
    primaryColor = InAppMessage.access$2100(paramInAppMessage);
    secondaryColor = InAppMessage.access$2200(paramInAppMessage);
  }
  
  public InAppMessage create()
  {
    return new InAppMessage(this, null);
  }
  
  public Builder setAlert(String paramString)
  {
    alert = paramString;
    return this;
  }
  
  public Builder setButtonActionValues(String paramString, Map<String, ActionValue> paramMap)
  {
    if (paramMap == null)
    {
      buttonActionValues.remove(paramString);
      return this;
    }
    buttonActionValues.put(paramString, new HashMap(paramMap));
    return this;
  }
  
  public Builder setButtonGroupId(String paramString)
  {
    buttonGroupId = paramString;
    return this;
  }
  
  public Builder setClickActionValues(Map<String, ActionValue> paramMap)
  {
    if (paramMap == null)
    {
      clickActionValues = null;
      return this;
    }
    clickActionValues = new HashMap(paramMap);
    return this;
  }
  
  public Builder setDuration(Long paramLong)
  {
    if ((paramLong != null) && (paramLong.longValue() <= 0L)) {
      throw new IllegalArgumentException("Duration must be greater than 0 milliseconds");
    }
    durationMilliseconds = paramLong;
    return this;
  }
  
  public Builder setExpiry(Long paramLong)
  {
    expiryMS = paramLong;
    return this;
  }
  
  public Builder setExtras(JsonMap paramJsonMap)
  {
    extras = paramJsonMap;
    return this;
  }
  
  public Builder setId(String paramString)
  {
    id = paramString;
    return this;
  }
  
  public Builder setPosition(int paramInt)
  {
    if ((paramInt != 1) && (paramInt != 0)) {
      throw new IllegalArgumentException("Position must be either InAppMessage.POSITION_BOTTOM or InAppMessage.POSITION_TOP.");
    }
    position = paramInt;
    return this;
  }
  
  public Builder setPrimaryColor(Integer paramInteger)
  {
    primaryColor = paramInteger;
    return this;
  }
  
  public Builder setSecondaryColor(Integer paramInteger)
  {
    secondaryColor = paramInteger;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.push.iam.InAppMessage.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */