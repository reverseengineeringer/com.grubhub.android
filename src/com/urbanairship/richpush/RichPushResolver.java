package com.urbanairship.richpush;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import com.urbanairship.UrbanAirshipProvider;
import com.urbanairship.UrbanAirshipResolver;
import com.urbanairship.util.UAStringUtil;
import java.util.Collection;
import java.util.Set;

class RichPushResolver
  extends UrbanAirshipResolver
{
  private static final String FALSE_VALUE = "0";
  private static final String NEWEST_FIRST = "timestamp DESC";
  private static final String TRUE_VALUE = "1";
  private static final String WHERE_CLAUSE_CHANGED = "unread <> unread_orig";
  private static final String WHERE_CLAUSE_MESSAGE_ID = "message_id = ?";
  private static final String WHERE_CLAUSE_READ = "unread = ?";
  
  public RichPushResolver(Context paramContext)
  {
    super(paramContext);
  }
  
  private Uri appendMessageIdToUri(String paramString)
  {
    return Uri.withAppendedPath(UrbanAirshipProvider.getRichPushContentUri(), paramString);
  }
  
  private Uri appendMessageIdsToUri(Collection<String> paramCollection)
  {
    return Uri.withAppendedPath(UrbanAirshipProvider.getRichPushContentUri(), UAStringUtil.join(paramCollection, "|"));
  }
  
  int deleteMessage(String paramString)
  {
    return delete(appendMessageIdToUri(paramString), "message_id = ?", new String[] { paramString });
  }
  
  int deleteMessages(Set<String> paramSet)
  {
    int i = paramSet.size();
    return delete(appendMessageIdsToUri(paramSet), "message_id IN ( " + UAStringUtil.repeat("?", i, ", ") + " )", (String[])paramSet.toArray(new String[i]));
  }
  
  Cursor getAllMessages()
  {
    return query(UrbanAirshipProvider.getRichPushContentUri(), null, null, null, "timestamp DESC");
  }
  
  Cursor getDeletedMessages()
  {
    return query(UrbanAirshipProvider.getRichPushContentUri(), null, "deleted = ?", new String[] { "1" }, null);
  }
  
  Cursor getMessage(String paramString)
  {
    return query(UrbanAirshipProvider.getRichPushContentUri(), null, "message_id = ?", new String[] { paramString }, null);
  }
  
  Cursor getReadMessages()
  {
    return query(UrbanAirshipProvider.getRichPushContentUri(), null, "unread = ?", new String[] { "0" }, "timestamp DESC");
  }
  
  Cursor getReadUpdatedMessages()
  {
    return query(UrbanAirshipProvider.getRichPushContentUri(), null, "unread = ? AND unread <> unread_orig", new String[] { "0" }, null);
  }
  
  Cursor getUnreadMessages()
  {
    return query(UrbanAirshipProvider.getRichPushContentUri(), null, "unread = ?", new String[] { "1" }, "timestamp DESC");
  }
  
  int insertMessages(ContentValues[] paramArrayOfContentValues)
  {
    return bulkInsert(UrbanAirshipProvider.getRichPushContentUri(), paramArrayOfContentValues);
  }
  
  int markMessageRead(String paramString)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("unread", Boolean.valueOf(false));
    return updateMessage(paramString, localContentValues);
  }
  
  int markMessagesDeleted(Set<String> paramSet)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("deleted", Boolean.valueOf(true));
    return updateMessages(paramSet, localContentValues);
  }
  
  int markMessagesRead(Set<String> paramSet)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("unread", Boolean.valueOf(false));
    return updateMessages(paramSet, localContentValues);
  }
  
  int markMessagesUnread(Set<String> paramSet)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("unread", Boolean.valueOf(true));
    return updateMessages(paramSet, localContentValues);
  }
  
  int updateMessage(String paramString, ContentValues paramContentValues)
  {
    return update(appendMessageIdToUri(paramString), paramContentValues, "message_id = ?", new String[] { paramString });
  }
  
  int updateMessages(Set<String> paramSet, ContentValues paramContentValues)
  {
    int i = paramSet.size();
    return update(appendMessageIdsToUri(paramSet), paramContentValues, "message_id IN ( " + UAStringUtil.repeat("?", i, ", ") + " )", (String[])paramSet.toArray(new String[i]));
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.richpush.RichPushResolver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */