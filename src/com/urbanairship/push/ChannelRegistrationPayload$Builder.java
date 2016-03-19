package com.urbanairship.push;

import java.util.Set;

class ChannelRegistrationPayload$Builder
{
  private String alias;
  private String apid;
  private boolean backgroundEnabled;
  private String deviceType;
  private boolean optIn;
  private String pushAddress;
  private boolean setTags;
  private Set<String> tags;
  private String userId;
  
  ChannelRegistrationPayload build()
  {
    return new ChannelRegistrationPayload(this, null);
  }
  
  Builder setAlias(String paramString)
  {
    String str = paramString;
    if (paramString != null) {
      str = paramString.trim();
    }
    alias = str;
    return this;
  }
  
  Builder setApid(String paramString)
  {
    apid = paramString;
    return this;
  }
  
  Builder setBackgroundEnabled(boolean paramBoolean)
  {
    backgroundEnabled = paramBoolean;
    return this;
  }
  
  Builder setDeviceType(String paramString)
  {
    deviceType = paramString;
    return this;
  }
  
  Builder setOptIn(boolean paramBoolean)
  {
    optIn = paramBoolean;
    return this;
  }
  
  Builder setPushAddress(String paramString)
  {
    pushAddress = paramString;
    return this;
  }
  
  Builder setTags(boolean paramBoolean, Set<String> paramSet)
  {
    setTags = paramBoolean;
    tags = paramSet;
    return this;
  }
  
  Builder setUserId(String paramString)
  {
    userId = paramString;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.push.ChannelRegistrationPayload.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */