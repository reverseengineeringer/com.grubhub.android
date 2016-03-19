package com.urbanairship.richpush;

import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import com.urbanairship.AirshipConfigOptions;
import com.urbanairship.BaseIntentService.Delegate;
import com.urbanairship.Logger;
import com.urbanairship.PreferenceDataStore;
import com.urbanairship.UAirship;
import com.urbanairship.http.Request;
import com.urbanairship.http.RequestFactory;
import com.urbanairship.http.Response;
import com.urbanairship.push.PushManager;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

class InboxServiceDelegate
  extends BaseIntentService.Delegate
{
  private static final String CHANNEL_ID_HEADER = "X-UA-Channel-ID";
  private static final String DELETE_MESSAGES_KEY = "delete";
  private static final String DELETE_MESSAGES_PATH = "api/user/%s/messages/delete/";
  private static final String MARK_READ_MESSAGES_KEY = "mark_as_read";
  private static final String MARK_READ_MESSAGES_PATH = "api/user/%s/messages/unread/";
  private static final String MESSAGES_PATH = "api/user/%s/messages/";
  private static final String MESSAGE_URL = "api/user/%s/messages/message/%s/";
  private final UAirship airship;
  private final String hostUrl;
  private final RequestFactory requestFactory;
  private final RichPushResolver resolver;
  private final RichPushUser user;
  
  public InboxServiceDelegate(Context paramContext, PreferenceDataStore paramPreferenceDataStore)
  {
    this(paramContext, paramPreferenceDataStore, new RequestFactory(), new RichPushResolver(paramContext), UAirship.shared());
  }
  
  public InboxServiceDelegate(Context paramContext, PreferenceDataStore paramPreferenceDataStore, RequestFactory paramRequestFactory, RichPushResolver paramRichPushResolver, UAirship paramUAirship)
  {
    super(paramContext, paramPreferenceDataStore);
    requestFactory = paramRequestFactory;
    resolver = paramRichPushResolver;
    airship = paramUAirship;
    user = paramUAirship.getRichPushManager().getRichPushUser();
    hostUrl = getAirshipConfigOptionshostURL;
  }
  
  private JSONObject buildMessagesPayload(String paramString, Set<String> paramSet)
  {
    JSONObject localJSONObject;
    try
    {
      localJSONObject = new JSONObject();
      localJSONObject.put(paramString, new JSONArray());
      String str1 = user.getId();
      paramSet = paramSet.iterator();
      while (paramSet.hasNext())
      {
        String str2 = (String)paramSet.next();
        localJSONObject.accumulate(paramString, hostUrl + String.format("api/user/%s/messages/message/%s/", new Object[] { str1, str2 }));
      }
      Logger.verbose(localJSONObject.toString());
    }
    catch (JSONException paramString)
    {
      Logger.info(paramString.getMessage());
      return null;
    }
    return localJSONObject;
  }
  
  private Set<String> getMessageIdsFromCursor(Cursor paramCursor)
  {
    if (paramCursor == null) {
      return new HashSet();
    }
    HashSet localHashSet = new HashSet(paramCursor.getCount());
    int j;
    for (int i = -1; paramCursor.moveToNext(); i = j)
    {
      j = i;
      if (i == -1) {
        j = paramCursor.getColumnIndex("message_id");
      }
      localHashSet.add(paramCursor.getString(j));
    }
    paramCursor.close();
    return localHashSet;
  }
  
  private ContentValues[] messagesFromResponse(String paramString)
    throws JSONException
  {
    if (paramString == null)
    {
      paramString = null;
      return paramString;
    }
    JSONArray localJSONArray = new JSONObject(paramString).getJSONArray("messages");
    int j = localJSONArray.length();
    ContentValues[] arrayOfContentValues = new ContentValues[j];
    int i = 0;
    for (;;)
    {
      paramString = arrayOfContentValues;
      if (i >= j) {
        break;
      }
      paramString = localJSONArray.getJSONObject(i);
      ContentValues localContentValues = new ContentValues();
      localContentValues.put("timestamp", paramString.getString("message_sent"));
      localContentValues.put("message_id", paramString.getString("message_id"));
      localContentValues.put("message_url", paramString.getString("message_url"));
      localContentValues.put("message_body_url", paramString.getString("message_body_url"));
      localContentValues.put("message_read_url", paramString.getString("message_read_url"));
      localContentValues.put("title", paramString.getString("title"));
      localContentValues.put("unread_orig", Boolean.valueOf(paramString.getBoolean("unread")));
      localContentValues.put("extra", paramString.getJSONObject("extra").toString());
      localContentValues.put("raw_message_object", paramString.toString());
      if (paramString.has("message_expiry")) {
        localContentValues.put("expiration_timestamp", paramString.getString("message_expiry"));
      }
      arrayOfContentValues[i] = localContentValues;
      i += 1;
    }
  }
  
  private void syncDeletedMessageState()
  {
    Set localSet = getMessageIdsFromCursor(resolver.getDeletedMessages());
    if (localSet.size() == 0) {}
    Object localObject;
    do
    {
      JSONObject localJSONObject;
      do
      {
        do
        {
          return;
          localObject = RichPushUpdateService.getUserURL("api/user/%s/messages/delete/", new Object[] { user.getId() });
        } while (localObject == null);
        Logger.verbose("InboxServiceDelegate - Found " + localSet.size() + " messages to delete.");
        localJSONObject = buildMessagesPayload("delete", localSet);
      } while (localJSONObject == null);
      Logger.verbose("InboxServiceDelegate - Deleting inbox messages with payload: " + localJSONObject);
      localObject = requestFactory.createRequest("POST", (URL)localObject).setCredentials(user.getId(), user.getPassword()).setRequestBody(localJSONObject.toString(), "application/json").setHeader("X-UA-Channel-ID", airship.getPushManager().getChannelId()).setHeader("Accept", "application/vnd.urbanairship+json; version=3;").execute();
      Logger.verbose("InboxServiceDelegate - Delete inbox messages response: " + localObject);
    } while ((localObject == null) || (((Response)localObject).getStatus() != 200));
    resolver.deleteMessages(localSet);
  }
  
  private void syncReadMessageState()
  {
    Set localSet = getMessageIdsFromCursor(resolver.getReadUpdatedMessages());
    if (localSet.size() == 0) {}
    do
    {
      JSONObject localJSONObject;
      do
      {
        do
        {
          return;
          localObject = RichPushUpdateService.getUserURL("api/user/%s/messages/unread/", new Object[] { user.getId() });
        } while (localObject == null);
        Logger.verbose("InboxServiceDelegate - Found " + localSet.size() + " messages to mark read.");
        localJSONObject = buildMessagesPayload("mark_as_read", localSet);
      } while (localJSONObject == null);
      Logger.verbose("InboxServiceDelegate - Marking inbox messages read request with payload: " + localJSONObject);
      localObject = requestFactory.createRequest("POST", (URL)localObject).setCredentials(user.getId(), user.getPassword()).setRequestBody(localJSONObject.toString(), "application/json").setHeader("X-UA-Channel-ID", airship.getPushManager().getChannelId()).setHeader("Accept", "application/vnd.urbanairship+json; version=3;").execute();
      Logger.verbose("InboxServiceDelegate - Mark inbox messages read response: " + localObject);
    } while ((localObject == null) || (((Response)localObject).getStatus() != 200));
    Object localObject = new ContentValues();
    ((ContentValues)localObject).put("unread_orig", Integer.valueOf(0));
    resolver.updateMessages(localSet, (ContentValues)localObject);
  }
  
  private void updateInbox(ContentValues[] paramArrayOfContentValues)
  {
    ArrayList localArrayList = new ArrayList();
    HashSet localHashSet = new HashSet();
    int j = paramArrayOfContentValues.length;
    int i = 0;
    while (i < j)
    {
      ContentValues localContentValues = paramArrayOfContentValues[i];
      String str = localContentValues.getAsString("message_id");
      localHashSet.add(str);
      if (resolver.updateMessage(str, localContentValues) != 1) {
        localArrayList.add(localContentValues);
      }
      i += 1;
    }
    if (localArrayList.size() > 0)
    {
      paramArrayOfContentValues = new ContentValues[localArrayList.size()];
      localArrayList.toArray(paramArrayOfContentValues);
      resolver.insertMessages(paramArrayOfContentValues);
    }
    paramArrayOfContentValues = getMessageIdsFromCursor(resolver.getAllMessages());
    paramArrayOfContentValues.removeAll(localHashSet);
    resolver.deleteMessages(paramArrayOfContentValues);
    airship.getRichPushManager().getRichPushInbox().refresh();
  }
  
  private boolean updateMessages()
  {
    Logger.info("Refreshing inbox messages.");
    Object localObject = RichPushUpdateService.getUserURL("api/user/%s/messages/", new Object[] { user.getId() });
    if (localObject == null) {
      return false;
    }
    Logger.verbose("InboxServiceDelegate - Fetching inbox messages.");
    localObject = requestFactory.createRequest("GET", (URL)localObject).setCredentials(user.getId(), user.getPassword()).setHeader("Accept", "application/vnd.urbanairship+json; version=3;").setHeader("X-UA-Channel-ID", airship.getPushManager().getChannelId()).setIfModifiedSince(getDataStore().getLong("com.urbanairship.user.LAST_MESSAGE_REFRESH_TIME", 0L)).execute();
    Logger.verbose("InboxServiceDelegate - Fetch inbox messages response: " + localObject);
    if (localObject == null) {}
    for (int i = -1; i == 304; i = ((Response)localObject).getStatus())
    {
      Logger.info("Inbox messages already up-to-date. ");
      return true;
    }
    if (i == 200) {
      for (;;)
      {
        try
        {
          ContentValues[] arrayOfContentValues = messagesFromResponse(((Response)localObject).getResponseBody());
          if (arrayOfContentValues == null)
          {
            Logger.info("Inbox message list is empty.");
            return true;
          }
        }
        catch (JSONException localJSONException)
        {
          Logger.error("Failed to update inbox. Unable to parse response body: " + ((Response)localObject).getResponseBody());
          return false;
        }
        Logger.info("Received " + localJSONException.length + " inbox messages.");
        updateInbox(localJSONException);
        getDataStore().put("com.urbanairship.user.LAST_MESSAGE_REFRESH_TIME", ((Response)localObject).getLastModifiedTime());
      }
    }
    Logger.info("Unable to update inbox messages.");
    return false;
  }
  
  protected void onHandleIntent(Intent paramIntent)
  {
    if (!"com.urbanairship.richpush.MESSAGES_UPDATE".equals(paramIntent.getAction())) {
      return;
    }
    if (!RichPushUser.isCreated())
    {
      Logger.debug("InboxServiceDelegate - User has not been created, canceling messages update");
      RichPushUpdateService.respond(paramIntent, false);
      return;
    }
    RichPushUpdateService.respond(paramIntent, updateMessages());
    syncReadMessageState();
    syncDeletedMessageState();
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.richpush.InboxServiceDelegate
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */