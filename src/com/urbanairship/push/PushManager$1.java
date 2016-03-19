package com.urbanairship.push;

import com.urbanairship.Logger;
import java.util.Set;

class PushManager$1
  extends TagGroupsEditor
{
  PushManager$1(PushManager paramPushManager, String paramString)
  {
    super(paramString);
  }
  
  public TagGroupsEditor addTag(String paramString1, String paramString2)
  {
    if ((PushManager.access$000(this$0)) && ("device".equals(paramString1)))
    {
      Logger.error("Unable to add tag " + paramString2 + " to device tag group when channelTagRegistrationEnabled is true.");
      return this;
    }
    return super.addTag(paramString1, paramString2);
  }
  
  public TagGroupsEditor addTags(String paramString, Set<String> paramSet)
  {
    if ((PushManager.access$000(this$0)) && ("device".equals(paramString)))
    {
      Logger.error("Unable to add tags { " + paramSet + " } to device tag group when channelTagRegistrationEnabled is true.");
      return this;
    }
    return super.addTags(paramString, paramSet);
  }
  
  public TagGroupsEditor removeTag(String paramString1, String paramString2)
  {
    if ((PushManager.access$000(this$0)) && ("device".equals(paramString1)))
    {
      Logger.error("Unable to remove tag " + paramString2 + " from device tag group when channelTagRegistrationEnabled is true.");
      return this;
    }
    return super.removeTag(paramString1, paramString2);
  }
  
  public TagGroupsEditor removeTags(String paramString, Set<String> paramSet)
  {
    if ((PushManager.access$000(this$0)) && ("device".equals(paramString)))
    {
      Logger.error("Unable to remove tags { " + paramSet + " } from device tag group when channelTagRegistrationEnabled is true.");
      return this;
    }
    return super.removeTags(paramString, paramSet);
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.push.PushManager.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */