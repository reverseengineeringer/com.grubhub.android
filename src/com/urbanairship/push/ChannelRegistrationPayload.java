package com.urbanairship.push;

import com.urbanairship.Logger;
import com.urbanairship.json.JsonException;
import com.urbanairship.json.JsonList;
import com.urbanairship.json.JsonMap;
import com.urbanairship.json.JsonSerializable;
import com.urbanairship.json.JsonValue;
import com.urbanairship.util.UAStringUtil;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;

class ChannelRegistrationPayload
  implements JsonSerializable
{
  static final String ALIAS_KEY = "alias";
  static final String APID_KEY = "apid";
  static final String BACKGROUND_ENABLED_KEY = "background";
  static final String CHANNEL_KEY = "channel";
  static final String DEVICE_TYPE_KEY = "device_type";
  static final String IDENTITY_HINTS_KEY = "identity_hints";
  static final String OPT_IN_KEY = "opt_in";
  static final String PUSH_ADDRESS_KEY = "push_address";
  static final String SET_TAGS_KEY = "set_tags";
  static final String TAGS_KEY = "tags";
  static final String USER_ID_KEY = "user_id";
  private final String alias;
  private final String apid;
  private final boolean backgroundEnabled;
  private final String deviceType;
  private final boolean optIn;
  private final String pushAddress;
  private final boolean setTags;
  private final Set<String> tags;
  private final String userId;
  
  private ChannelRegistrationPayload(ChannelRegistrationPayload.Builder paramBuilder)
  {
    optIn = ChannelRegistrationPayload.Builder.access$100(paramBuilder);
    backgroundEnabled = ChannelRegistrationPayload.Builder.access$200(paramBuilder);
    alias = ChannelRegistrationPayload.Builder.access$300(paramBuilder);
    deviceType = ChannelRegistrationPayload.Builder.access$400(paramBuilder);
    pushAddress = ChannelRegistrationPayload.Builder.access$500(paramBuilder);
    setTags = ChannelRegistrationPayload.Builder.access$600(paramBuilder);
    if (ChannelRegistrationPayload.Builder.access$600(paramBuilder)) {}
    for (Set localSet = ChannelRegistrationPayload.Builder.access$700(paramBuilder);; localSet = null)
    {
      tags = localSet;
      userId = ChannelRegistrationPayload.Builder.access$800(paramBuilder);
      apid = ChannelRegistrationPayload.Builder.access$900(paramBuilder);
      return;
    }
  }
  
  static ChannelRegistrationPayload parseJson(String paramString)
    throws JsonException
  {
    Iterator localIterator = null;
    JsonMap localJsonMap1 = JsonValue.parseString(paramString).getMap();
    if ((localJsonMap1 == null) || (localJsonMap1.isEmpty())) {
      return null;
    }
    ChannelRegistrationPayload.Builder localBuilder = new ChannelRegistrationPayload.Builder();
    JsonMap localJsonMap2 = localJsonMap1.opt("channel").getMap();
    if (localJsonMap2 != null)
    {
      localBuilder.setOptIn(localJsonMap2.opt("opt_in").getBoolean(false)).setBackgroundEnabled(localJsonMap2.opt("background").getBoolean(false)).setDeviceType(localJsonMap2.opt("device_type").getString()).setPushAddress(localJsonMap2.opt("push_address").getString()).setAlias(localJsonMap2.opt("alias").getString()).setUserId(localJsonMap2.opt("user_id").getString()).setApid(localJsonMap2.opt("apid").getString());
      paramString = localIterator;
      if (localJsonMap2.opt("tags").isJsonList())
      {
        paramString = new HashSet();
        localIterator = localJsonMap2.get("tags").getList().iterator();
        while (localIterator.hasNext())
        {
          JsonValue localJsonValue = (JsonValue)localIterator.next();
          if (localJsonValue.isString()) {
            paramString.add(localJsonValue.getString());
          }
        }
      }
      localBuilder.setTags(localJsonMap2.opt("set_tags").getBoolean(false), paramString);
    }
    paramString = localJsonMap1.opt("identity_hints").getMap();
    if (paramString != null) {
      localBuilder.setUserId(paramString.opt("user_id").getString()).setApid(paramString.opt("apid").getString());
    }
    return localBuilder.build();
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject == null) || (!(paramObject instanceof ChannelRegistrationPayload))) {}
    label54:
    label68:
    label82:
    label107:
    label121:
    do
    {
      do
      {
        do
        {
          do
          {
            do
            {
              do
              {
                do
                {
                  return false;
                  paramObject = (ChannelRegistrationPayload)paramObject;
                } while ((optIn != optIn) || (backgroundEnabled != backgroundEnabled));
                if (alias != null) {
                  break;
                }
              } while (alias != null);
              if (deviceType != null) {
                break label154;
              }
            } while (deviceType != null);
            if (pushAddress != null) {
              break label171;
            }
          } while (pushAddress != null);
          if (setTags != setTags) {
            break label186;
          }
          if (tags != null) {
            break label188;
          }
        } while (tags != null);
        if (userId != null) {
          break label207;
        }
      } while (userId != null);
      if (apid != null) {
        break label224;
      }
    } while (apid != null);
    for (;;)
    {
      return true;
      if (!alias.equals(alias)) {
        break;
      }
      break label54;
      label154:
      if (!deviceType.equals(deviceType)) {
        break;
      }
      break label68;
      label171:
      if (!pushAddress.equals(pushAddress)) {
        break;
      }
      break label82;
      label186:
      break;
      label188:
      if (!tags.equals(tags)) {
        break;
      }
      break label107;
      label207:
      if (!userId.equals(userId)) {
        break;
      }
      break label121;
      label224:
      if (!apid.equals(apid)) {
        break;
      }
    }
  }
  
  public int hashCode()
  {
    int i1 = 1;
    int i4 = 0;
    int i;
    int j;
    label24:
    int k;
    label33:
    int m;
    label43:
    int n;
    label53:
    label60:
    int i2;
    label70:
    int i3;
    if (optIn)
    {
      i = 1;
      if (!backgroundEnabled) {
        break label144;
      }
      j = 1;
      if (alias != null) {
        break label149;
      }
      k = 0;
      if (deviceType != null) {
        break label160;
      }
      m = 0;
      if (pushAddress != null) {
        break label172;
      }
      n = 0;
      if (!setTags) {
        break label184;
      }
      if (tags != null) {
        break label190;
      }
      i2 = 0;
      if (userId != null) {
        break label204;
      }
      i3 = 0;
      label80:
      if (apid != null) {
        break label216;
      }
    }
    for (;;)
    {
      return (i3 + (i2 + ((n + (m + (k + (j + (i + 527) * 31) * 31) * 31) * 31) * 31 + i1) * 31) * 31) * 31 + i4;
      i = 0;
      break;
      label144:
      j = 0;
      break label24;
      label149:
      k = alias.hashCode();
      break label33;
      label160:
      m = deviceType.hashCode();
      break label43;
      label172:
      n = pushAddress.hashCode();
      break label53;
      label184:
      i1 = 0;
      break label60;
      label190:
      i2 = tags.hashCode();
      break label70;
      label204:
      i3 = userId.hashCode();
      break label80;
      label216:
      i4 = apid.hashCode();
    }
  }
  
  public JsonValue toJsonValue()
  {
    Object localObject = new HashMap();
    HashMap localHashMap1 = new HashMap();
    HashMap localHashMap2 = new HashMap();
    localHashMap2.put("device_type", deviceType);
    localHashMap2.put("opt_in", Boolean.valueOf(optIn));
    localHashMap2.put("background", Boolean.valueOf(backgroundEnabled));
    localHashMap2.put("push_address", pushAddress);
    if (!UAStringUtil.isEmpty(alias)) {
      localHashMap2.put("alias", alias);
    }
    localHashMap2.put("set_tags", Boolean.valueOf(setTags));
    if ((setTags) && (tags != null)) {
      localHashMap2.put("tags", new JSONArray(tags));
    }
    ((Map)localObject).put("channel", localHashMap2);
    if (!UAStringUtil.isEmpty(userId)) {
      localHashMap1.put("user_id", userId);
    }
    if (!UAStringUtil.isEmpty(apid)) {
      localHashMap1.put("apid", apid);
    }
    if (!localHashMap1.isEmpty()) {
      ((Map)localObject).put("identity_hints", localHashMap1);
    }
    try
    {
      localObject = JsonValue.wrap(localObject);
      return (JsonValue)localObject;
    }
    catch (JsonException localJsonException)
    {
      Logger.error("ChannelRegistrationPayload - Failed to create channel registration payload as json", localJsonException);
    }
    return JsonValue.NULL;
  }
  
  public String toString()
  {
    return toJsonValue().toString();
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.push.ChannelRegistrationPayload
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */