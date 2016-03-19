package com.urbanairship.push.iam;

import android.graphics.Color;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.urbanairship.Logger;
import com.urbanairship.actions.ActionValue;
import com.urbanairship.json.JsonException;
import com.urbanairship.json.JsonMap;
import com.urbanairship.json.JsonSerializable;
import com.urbanairship.json.JsonValue;
import com.urbanairship.util.DateUtils;
import com.urbanairship.util.UAStringUtil;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.TimeUnit;

public class InAppMessage
  implements Parcelable, JsonSerializable
{
  public static final Parcelable.Creator<InAppMessage> CREATOR = new Parcelable.Creator()
  {
    public InAppMessage createFromParcel(Parcel paramAnonymousParcel)
    {
      return new InAppMessage(paramAnonymousParcel, null);
    }
    
    public InAppMessage[] newArray(int paramAnonymousInt)
    {
      return new InAppMessage[paramAnonymousInt];
    }
  };
  private static final long DEFAULT_EXPIRY_MS = 2592000000L;
  public static final int POSITION_BOTTOM = 0;
  public static final int POSITION_TOP = 1;
  private final String alert;
  private final Map<String, Map<String, ActionValue>> buttonActionValues;
  private final String buttonGroupId;
  private final Map<String, ActionValue> clickActionValues;
  private final Long durationMilliseconds;
  private final long expiryMS;
  private final JsonMap extras;
  private final String id;
  private final int position;
  private final Integer primaryColor;
  private final Integer secondaryColor;
  
  private InAppMessage(Parcel paramParcel)
  {
    id = paramParcel.readString();
    alert = paramParcel.readString();
    expiryMS = paramParcel.readLong();
    position = paramParcel.readInt();
    Object localObject1;
    if (paramParcel.readByte() == 1) {
      localObject1 = Long.valueOf(paramParcel.readLong());
    }
    for (;;)
    {
      durationMilliseconds = ((Long)localObject1);
      if (paramParcel.readByte() == 1)
      {
        localObject1 = Integer.valueOf(paramParcel.readInt());
        label73:
        primaryColor = ((Integer)localObject1);
        if (paramParcel.readByte() != 1) {
          break label197;
        }
        localObject1 = Integer.valueOf(paramParcel.readInt());
        secondaryColor = ((Integer)localObject1);
      }
      try
      {
        localObject1 = JsonValue.parseString(paramParcel.readString()).getMap();
        Object localObject3 = localObject1;
        if (localObject1 == null) {
          localObject3 = new JsonMap(null);
        }
        extras = ((JsonMap)localObject3);
        buttonGroupId = paramParcel.readString();
        buttonActionValues = new HashMap();
        paramParcel.readMap(buttonActionValues, ActionValue.class.getClassLoader());
        clickActionValues = new HashMap();
        paramParcel.readMap(clickActionValues, ActionValue.class.getClassLoader());
        return;
        localObject1 = null;
        continue;
        localObject1 = null;
        break label73;
        label197:
        localObject1 = null;
      }
      catch (JsonException localJsonException)
      {
        for (;;)
        {
          Logger.error("InAppMessage - unable to parse extras from parcel.");
          Object localObject2 = null;
        }
      }
    }
  }
  
  private InAppMessage(InAppMessage.Builder paramBuilder)
  {
    long l;
    if (InAppMessage.Builder.access$000(paramBuilder) == null)
    {
      l = System.currentTimeMillis() + 2592000000L;
      expiryMS = l;
      id = InAppMessage.Builder.access$100(paramBuilder);
      if (InAppMessage.Builder.access$200(paramBuilder) != null) {
        break label145;
      }
      localObject = new JsonMap(null);
      label49:
      extras = ((JsonMap)localObject);
      alert = InAppMessage.Builder.access$300(paramBuilder);
      durationMilliseconds = InAppMessage.Builder.access$400(paramBuilder);
      buttonGroupId = InAppMessage.Builder.access$500(paramBuilder);
      buttonActionValues = InAppMessage.Builder.access$600(paramBuilder);
      if (InAppMessage.Builder.access$700(paramBuilder) != null) {
        break label154;
      }
    }
    label145:
    label154:
    for (Object localObject = new HashMap();; localObject = InAppMessage.Builder.access$700(paramBuilder))
    {
      clickActionValues = ((Map)localObject);
      position = InAppMessage.Builder.access$800(paramBuilder);
      primaryColor = InAppMessage.Builder.access$900(paramBuilder);
      secondaryColor = InAppMessage.Builder.access$1000(paramBuilder);
      return;
      l = InAppMessage.Builder.access$000(paramBuilder).longValue();
      break;
      localObject = InAppMessage.Builder.access$200(paramBuilder);
      break label49;
    }
  }
  
  private static Integer parseColor(String paramString)
  {
    if (UAStringUtil.isEmpty(paramString)) {
      return null;
    }
    try
    {
      int i = Color.parseColor(paramString);
      return Integer.valueOf(i);
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      Logger.warn("InAppMessage - Unable to parse color: " + paramString, localIllegalArgumentException);
    }
    return null;
  }
  
  public static InAppMessage parseJson(String paramString)
    throws JsonException
  {
    Object localObject1 = JsonValue.parseString(paramString).getMap();
    if (localObject1 == null) {
      return null;
    }
    Object localObject2 = ((JsonMap)localObject1).opt("display").getMap();
    JsonMap localJsonMap = ((JsonMap)localObject1).opt("actions").getMap();
    if ((localObject2 == null) || (!"banner".equals(((JsonMap)localObject2).opt("type").getString())))
    {
      Logger.error("InAppMessage - Unable to parse json: " + paramString);
      return null;
    }
    paramString = new InAppMessage.Builder();
    paramString.setId(((JsonMap)localObject1).opt("id").getString()).setExtras(((JsonMap)localObject1).opt("extra").getMap()).setAlert(((JsonMap)localObject2).opt("alert").getString()).setPrimaryColor(parseColor(((JsonMap)localObject2).opt("primary_color").getString())).setSecondaryColor(parseColor(((JsonMap)localObject2).opt("secondary_color").getString()));
    long l;
    if (((JsonMap)localObject2).containsKey("duration_ms"))
    {
      l = ((JsonMap)localObject2).get("duration_ms").getLong(0L);
      if (l > 0L) {
        paramString.setDuration(Long.valueOf(l));
      }
      if (!((JsonMap)localObject1).containsKey("expiry_ms")) {
        break label408;
      }
      paramString.setExpiry(Long.valueOf(((JsonMap)localObject1).get("expiry_ms").getLong(System.currentTimeMillis() + 2592000000L)));
      label251:
      if (!"top".equalsIgnoreCase(((JsonMap)localObject2).opt("position").getString())) {
        break label451;
      }
      paramString.setPosition(1);
    }
    for (;;)
    {
      label277:
      if (localJsonMap != null)
      {
        localObject2 = localJsonMap.opt("on_click").getMap();
        Object localObject3;
        if (localObject2 != null)
        {
          localObject1 = new HashMap();
          localObject2 = ((JsonMap)localObject2).iterator();
          for (;;)
          {
            if (((Iterator)localObject2).hasNext())
            {
              localObject3 = (Map.Entry)((Iterator)localObject2).next();
              ((Map)localObject1).put(((Map.Entry)localObject3).getKey(), new ActionValue((JsonValue)((Map.Entry)localObject3).getValue()));
              continue;
              l = ((JsonMap)localObject2).opt("duration").getLong(0L);
              if (l <= 0L) {
                break;
              }
              paramString.setDuration(Long.valueOf(TimeUnit.SECONDS.toMillis(l)));
              break;
              label408:
              if (!((JsonMap)localObject1).containsKey("expiry")) {
                break label251;
              }
              paramString.setExpiry(Long.valueOf(DateUtils.parseIso8601(((JsonMap)localObject1).opt("expiry").getString(), System.currentTimeMillis() + 2592000000L)));
              break label251;
              label451:
              paramString.setPosition(0);
              break label277;
            }
          }
          paramString.setClickActionValues((Map)localObject1);
        }
        paramString.setButtonGroupId(localJsonMap.opt("button_group").getString());
        localJsonMap = localJsonMap.opt("button_actions").getMap();
        if (localJsonMap != null)
        {
          localObject1 = localJsonMap.entrySet().iterator();
          while (((Iterator)localObject1).hasNext())
          {
            localObject2 = (String)((Map.Entry)((Iterator)localObject1).next()).getKey();
            Object localObject4 = localJsonMap.opt((String)localObject2).getMap();
            localObject3 = new HashMap();
            localObject4 = ((JsonMap)localObject4).entrySet().iterator();
            while (((Iterator)localObject4).hasNext())
            {
              Map.Entry localEntry = (Map.Entry)((Iterator)localObject4).next();
              ((Map)localObject3).put(localEntry.getKey(), new ActionValue((JsonValue)localEntry.getValue()));
            }
            paramString.setButtonActionValues((String)localObject2, (Map)localObject3);
          }
        }
      }
    }
    return paramString.create();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    label49:
    label63:
    label123:
    label137:
    label193:
    label210:
    label227:
    label244:
    label261:
    label276:
    for (;;)
    {
      return true;
      if (!(paramObject instanceof InAppMessage)) {
        return false;
      }
      paramObject = (InAppMessage)paramObject;
      if (id == null) {
        if (id == null)
        {
          if (alert != null) {
            break label193;
          }
          if (alert == null)
          {
            if (buttonGroupId != null) {
              break label210;
            }
            if (buttonGroupId == null) {
              if ((extras.equals(extras)) && (clickActionValues.equals(clickActionValues)) && (buttonActionValues.equals(buttonActionValues)))
              {
                if (primaryColor != null) {
                  break label227;
                }
                if (primaryColor == null)
                {
                  if (secondaryColor != null) {
                    break label244;
                  }
                  if (secondaryColor == null)
                  {
                    if (durationMilliseconds != null) {
                      break label261;
                    }
                    if (durationMilliseconds != null) {}
                  }
                }
              }
            }
          }
        }
      }
      for (;;)
      {
        if ((position == position) && (expiryMS == expiryMS)) {
          break label276;
        }
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
                  } while (!id.equals(id));
                  break;
                } while (!alert.equals(alert));
                break label49;
              } while (!buttonGroupId.equals(buttonGroupId));
              break label63;
            } while (!primaryColor.equals(primaryColor));
            break label123;
          } while (!secondaryColor.equals(secondaryColor));
          break label137;
        } while (!durationMilliseconds.equals(durationMilliseconds));
      }
    }
  }
  
  public String getAlert()
  {
    return alert;
  }
  
  public Map<String, ActionValue> getButtonActionValues(String paramString)
  {
    if (buttonActionValues.containsKey(paramString)) {
      return Collections.unmodifiableMap((Map)buttonActionValues.get(paramString));
    }
    return null;
  }
  
  public String getButtonGroupId()
  {
    return buttonGroupId;
  }
  
  public Map<String, ActionValue> getClickActionValues()
  {
    return Collections.unmodifiableMap(clickActionValues);
  }
  
  public Long getDuration()
  {
    return durationMilliseconds;
  }
  
  public long getExpiry()
  {
    return expiryMS;
  }
  
  public JsonMap getExtras()
  {
    return extras;
  }
  
  public String getId()
  {
    return id;
  }
  
  public int getPosition()
  {
    return position;
  }
  
  public Integer getPrimaryColor()
  {
    return primaryColor;
  }
  
  public Integer getSecondaryColor()
  {
    return secondaryColor;
  }
  
  public int hashCode()
  {
    int i1 = 0;
    int i;
    int j;
    label21:
    int k;
    label30:
    int i2;
    int i3;
    int i4;
    int m;
    label71:
    int n;
    if (id == null)
    {
      i = 0;
      if (alert != null) {
        break label173;
      }
      j = 0;
      if (buttonGroupId != null) {
        break label184;
      }
      k = 0;
      i2 = extras.hashCode();
      i3 = clickActionValues.hashCode();
      i4 = buttonActionValues.hashCode();
      if (secondaryColor != null) {
        break label195;
      }
      m = 0;
      if (primaryColor != null) {
        break label207;
      }
      n = 0;
      label81:
      if (durationMilliseconds != null) {
        break label219;
      }
    }
    for (;;)
    {
      return (((n + (m + ((((k + (j + (i + 403) * 31) * 31) * 31 + i2) * 31 + i3) * 31 + i4) * 31) * 31) * 31 + i1) * 31 + position) * 31 + Long.valueOf(expiryMS).hashCode();
      i = id.hashCode();
      break;
      label173:
      j = alert.hashCode();
      break label21;
      label184:
      k = buttonGroupId.hashCode();
      break label30;
      label195:
      m = secondaryColor.intValue();
      break label71;
      label207:
      n = primaryColor.intValue();
      break label81;
      label219:
      i1 = durationMilliseconds.hashCode();
    }
  }
  
  public boolean isExpired()
  {
    return System.currentTimeMillis() > expiryMS;
  }
  
  public JsonValue toJsonValue()
  {
    HashMap localHashMap1 = new HashMap();
    localHashMap1.put("id", id);
    localHashMap1.put("expiry_ms", Long.valueOf(expiryMS));
    localHashMap1.put("extra", extras);
    HashMap localHashMap2 = new HashMap();
    localHashMap1.put("display", localHashMap2);
    localHashMap2.put("type", "banner");
    localHashMap2.put("alert", alert);
    if (position == 1) {}
    for (Object localObject = "top";; localObject = "bottom")
    {
      localHashMap2.put("position", localObject);
      if (durationMilliseconds != null) {
        localHashMap2.put("duration_ms", durationMilliseconds);
      }
      if (primaryColor != null) {
        localHashMap2.put("primary_color", String.format(Locale.US, "#%06X", new Object[] { Integer.valueOf(primaryColor.intValue() & 0xFFFFFF) }));
      }
      if (secondaryColor != null) {
        localHashMap2.put("secondary_color", String.format(Locale.US, "#%06X", new Object[] { Integer.valueOf(secondaryColor.intValue() & 0xFFFFFF) }));
      }
      localObject = new HashMap();
      localHashMap1.put("actions", localObject);
      ((Map)localObject).put("on_click", clickActionValues);
      ((Map)localObject).put("button_group", buttonGroupId);
      ((Map)localObject).put("button_actions", buttonActionValues);
      return JsonValue.wrap(localHashMap1, JsonValue.NULL);
    }
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(id);
    paramParcel.writeString(alert);
    paramParcel.writeLong(expiryMS);
    paramParcel.writeInt(position);
    if (durationMilliseconds == null)
    {
      paramParcel.writeByte((byte)0);
      if (primaryColor != null) {
        break label123;
      }
      paramParcel.writeByte((byte)0);
      label56:
      if (secondaryColor != null) {
        break label142;
      }
      paramParcel.writeByte((byte)0);
    }
    for (;;)
    {
      paramParcel.writeString(extras.toString());
      paramParcel.writeString(buttonGroupId);
      paramParcel.writeMap(buttonActionValues);
      paramParcel.writeMap(clickActionValues);
      return;
      paramParcel.writeByte((byte)1);
      paramParcel.writeLong(durationMilliseconds.longValue());
      break;
      label123:
      paramParcel.writeByte((byte)1);
      paramParcel.writeInt(primaryColor.intValue());
      break label56;
      label142:
      paramParcel.writeByte((byte)1);
      paramParcel.writeInt(secondaryColor.intValue());
    }
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.push.iam.InAppMessage
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */