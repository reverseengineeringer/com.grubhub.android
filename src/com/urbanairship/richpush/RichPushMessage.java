package com.urbanairship.richpush;

import android.database.Cursor;
import android.os.Bundle;
import com.urbanairship.Logger;
import com.urbanairship.UAirship;
import com.urbanairship.util.DateUtils;
import com.urbanairship.util.UAStringUtil;
import java.text.ParseException;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

public class RichPushMessage
  implements Comparable<RichPushMessage>
{
  boolean deleted = false;
  Long expirationMS;
  Bundle extras;
  String messageBodyUrl;
  final String messageId;
  String messageReadUrl;
  String messageUrl;
  JSONObject rawMessageJSON;
  long sentMS;
  String title;
  boolean unreadClient;
  boolean unreadOrigin;
  
  RichPushMessage(String paramString)
  {
    messageId = paramString;
  }
  
  private boolean areObjectsEqual(Object paramObject1, Object paramObject2)
  {
    if ((paramObject1 == null) && (paramObject2 == null)) {
      return true;
    }
    if ((paramObject1 == null) || (paramObject2 == null)) {
      return false;
    }
    return paramObject1.equals(paramObject2);
  }
  
  private RichPushInbox getInbox()
  {
    return UAirship.shared().getRichPushManager().getRichPushInbox();
  }
  
  static Long getMillisecondsFromTimeStamp(String paramString, Long paramLong)
  {
    if (UAStringUtil.isEmpty(paramString)) {
      return paramLong;
    }
    try
    {
      long l = DateUtils.parseIso8601(paramString);
      return Long.valueOf(l);
    }
    catch (ParseException localParseException)
    {
      Logger.error("RichPushMessage - Couldn't parse message date: " + paramString + ", defaulting to: " + paramLong + ".");
    }
    return paramLong;
  }
  
  private static Bundle jsonToBundle(JSONObject paramJSONObject)
    throws JSONException
  {
    Bundle localBundle = new Bundle();
    if (paramJSONObject != null)
    {
      Iterator localIterator = paramJSONObject.keys();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        localBundle.putString(str, paramJSONObject.getString(str));
      }
    }
    return localBundle;
  }
  
  static RichPushMessage messageFromCursor(Cursor paramCursor)
    throws JSONException
  {
    boolean bool2 = true;
    RichPushMessage localRichPushMessage = new RichPushMessage(paramCursor.getString(paramCursor.getColumnIndex("message_id")));
    messageUrl = paramCursor.getString(paramCursor.getColumnIndex("message_url"));
    messageBodyUrl = paramCursor.getString(paramCursor.getColumnIndex("message_body_url"));
    messageReadUrl = paramCursor.getString(paramCursor.getColumnIndex("message_read_url"));
    boolean bool1;
    if (paramCursor.getInt(paramCursor.getColumnIndex("unread")) == 1)
    {
      bool1 = true;
      unreadClient = bool1;
      if (paramCursor.getInt(paramCursor.getColumnIndex("unread_orig")) != 1) {
        break label303;
      }
      bool1 = true;
      label128:
      unreadOrigin = bool1;
      extras = jsonToBundle(new JSONObject(paramCursor.getString(paramCursor.getColumnIndex("extra"))));
      title = paramCursor.getString(paramCursor.getColumnIndex("title"));
      sentMS = getMillisecondsFromTimeStamp(paramCursor.getString(paramCursor.getColumnIndex("timestamp")), Long.valueOf(System.currentTimeMillis())).longValue();
      if (paramCursor.getInt(paramCursor.getColumnIndex("deleted")) != 1) {
        break label308;
      }
      bool1 = bool2;
      label233:
      deleted = bool1;
      localObject = paramCursor.getString(paramCursor.getColumnIndex("raw_message_object"));
      if (localObject != null) {
        break label313;
      }
    }
    label303:
    label308:
    label313:
    for (Object localObject = new JSONObject();; localObject = new JSONObject((String)localObject))
    {
      rawMessageJSON = ((JSONObject)localObject);
      expirationMS = getMillisecondsFromTimeStamp(paramCursor.getString(paramCursor.getColumnIndex("expiration_timestamp")), null);
      return localRichPushMessage;
      bool1 = false;
      break;
      bool1 = false;
      break label128;
      bool1 = false;
      break label233;
    }
  }
  
  public int compareTo(RichPushMessage paramRichPushMessage)
  {
    return getMessageId().compareTo(paramRichPushMessage.getMessageId());
  }
  
  public void delete()
  {
    if (!deleted)
    {
      deleted = true;
      HashSet localHashSet = new HashSet();
      localHashSet.add(messageId);
      getInbox().deleteMessages(localHashSet);
    }
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = true;
    boolean bool1;
    if ((paramObject == null) || (!(paramObject instanceof RichPushMessage))) {
      bool1 = false;
    }
    do
    {
      do
      {
        return bool1;
        paramObject = (RichPushMessage)paramObject;
        bool1 = bool2;
      } while (this == paramObject);
      if ((!areObjectsEqual(messageId, messageId)) || (!areObjectsEqual(messageBodyUrl, messageBodyUrl)) || (!areObjectsEqual(messageReadUrl, messageReadUrl)) || (!areObjectsEqual(messageUrl, messageUrl)) || (!areObjectsEqual(extras, extras)) || (unreadClient != unreadClient)) {
        break;
      }
      bool1 = bool2;
    } while (sentMS == sentMS);
    return false;
  }
  
  public Date getExpirationDate()
  {
    if (expirationMS != null) {
      return new Date(expirationMS.longValue());
    }
    return null;
  }
  
  public Long getExpirationDateMS()
  {
    return expirationMS;
  }
  
  public Bundle getExtras()
  {
    return extras;
  }
  
  public String getMessageBodyUrl()
  {
    return messageBodyUrl;
  }
  
  public String getMessageId()
  {
    return messageId;
  }
  
  public String getMessageReadUrl()
  {
    return messageReadUrl;
  }
  
  public String getMessageUrl()
  {
    return messageUrl;
  }
  
  public JSONObject getRawMessageJSON()
  {
    return rawMessageJSON;
  }
  
  public Date getSentDate()
  {
    return new Date(sentMS);
  }
  
  public long getSentDateMS()
  {
    return sentMS;
  }
  
  public String getTitle()
  {
    return title;
  }
  
  public int hashCode()
  {
    int j = 0;
    int i;
    if (unreadClient)
    {
      i = 0;
      if (!deleted) {
        break label45;
      }
    }
    for (;;)
    {
      return ((i + 629) * 37 + j) * 37 + messageId.hashCode();
      i = 1;
      break;
      label45:
      j = 1;
    }
  }
  
  public boolean isDeleted()
  {
    return deleted;
  }
  
  public boolean isExpired()
  {
    return (expirationMS != null) && (System.currentTimeMillis() >= expirationMS.longValue());
  }
  
  public boolean isRead()
  {
    return !unreadClient;
  }
  
  public void markRead()
  {
    if (unreadClient)
    {
      unreadClient = false;
      HashSet localHashSet = new HashSet();
      localHashSet.add(messageId);
      getInbox().markMessagesRead(localHashSet);
    }
  }
  
  public void markUnread()
  {
    if (!unreadClient)
    {
      unreadClient = true;
      HashSet localHashSet = new HashSet();
      localHashSet.add(messageId);
      getInbox().markMessagesUnread(localHashSet);
    }
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.richpush.RichPushMessage
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */