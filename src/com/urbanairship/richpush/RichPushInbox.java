package com.urbanairship.richpush;

import android.content.Context;
import android.database.Cursor;
import android.os.Handler;
import android.os.Looper;
import com.urbanairship.Logger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.json.JSONException;

public class RichPushInbox
{
  private static final RichPushInbox.SentAtRichPushMessageComparator MESSAGE_COMPARATOR = new RichPushInbox.SentAtRichPushMessageComparator();
  public static final String MESSAGE_DATA_SCHEME = "message";
  public static final String VIEW_INBOX_INTENT_ACTION = "com.urbanairship.VIEW_RICH_PUSH_INBOX";
  public static final String VIEW_MESSAGE_INTENT_ACTION = "com.urbanairship.VIEW_RICH_PUSH_MESSAGE";
  private static final Object inboxLock = new Object();
  private final Set<String> deletedMessageIds = new HashSet();
  final ExecutorService executor = Executors.newSingleThreadExecutor();
  private final List<RichPushInbox.Listener> listeners = new ArrayList();
  private final Map<String, RichPushMessage> readMessages = new HashMap();
  private final RichPushResolver richPushResolver;
  private final Map<String, RichPushMessage> unreadMessages = new HashMap();
  
  RichPushInbox(Context paramContext)
  {
    this(new RichPushResolver(paramContext));
  }
  
  RichPushInbox(RichPushResolver paramRichPushResolver)
  {
    richPushResolver = paramRichPushResolver;
  }
  
  private RichPushMessage messageFromCursor(Cursor paramCursor)
  {
    try
    {
      paramCursor = RichPushMessage.messageFromCursor(paramCursor);
      return paramCursor;
    }
    catch (JSONException paramCursor)
    {
      Logger.error("Failed to parse message from the database.", paramCursor);
    }
    return null;
  }
  
  private void notifyListeners()
  {
    new Handler(Looper.getMainLooper()).post(new Runnable()
    {
      public void run()
      {
        synchronized (listeners)
        {
          Iterator localIterator = new ArrayList(listeners).iterator();
          if (localIterator.hasNext()) {
            ((RichPushInbox.Listener)localIterator.next()).onUpdateInbox();
          }
        }
      }
    });
  }
  
  public void addListener(RichPushInbox.Listener paramListener)
  {
    synchronized (listeners)
    {
      listeners.add(paramListener);
      return;
    }
  }
  
  public void deleteMessages(final Set<String> paramSet)
  {
    executor.execute(new Runnable()
    {
      public void run()
      {
        richPushResolver.markMessagesDeleted(paramSet);
      }
    });
    synchronized (inboxLock)
    {
      paramSet = paramSet.iterator();
      while (paramSet.hasNext())
      {
        String str = (String)paramSet.next();
        RichPushMessage localRichPushMessage = getMessage(str);
        if (localRichPushMessage != null)
        {
          deleted = true;
          unreadMessages.remove(str);
          readMessages.remove(str);
          deletedMessageIds.add(str);
        }
      }
    }
    notifyListeners();
  }
  
  public int getCount()
  {
    synchronized (inboxLock)
    {
      int i = unreadMessages.size();
      int j = readMessages.size();
      return i + j;
    }
  }
  
  public RichPushMessage getMessage(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    synchronized (inboxLock)
    {
      if (unreadMessages.containsKey(paramString))
      {
        paramString = (RichPushMessage)unreadMessages.get(paramString);
        return paramString;
      }
    }
    paramString = (RichPushMessage)readMessages.get(paramString);
    return paramString;
  }
  
  public Set<String> getMessageIds()
  {
    synchronized (inboxLock)
    {
      HashSet localHashSet = new HashSet(getCount());
      localHashSet.addAll(readMessages.keySet());
      localHashSet.addAll(unreadMessages.keySet());
      return localHashSet;
    }
  }
  
  public List<RichPushMessage> getMessages()
  {
    synchronized (inboxLock)
    {
      ArrayList localArrayList = new ArrayList(getCount());
      localArrayList.addAll(unreadMessages.values());
      localArrayList.addAll(readMessages.values());
      Collections.sort(localArrayList, MESSAGE_COMPARATOR);
      return localArrayList;
    }
  }
  
  public int getReadCount()
  {
    synchronized (inboxLock)
    {
      int i = readMessages.size();
      return i;
    }
  }
  
  public List<RichPushMessage> getReadMessages()
  {
    synchronized (inboxLock)
    {
      ArrayList localArrayList = new ArrayList(readMessages.values());
      Collections.sort(localArrayList, MESSAGE_COMPARATOR);
      return localArrayList;
    }
  }
  
  public int getUnreadCount()
  {
    synchronized (inboxLock)
    {
      int i = unreadMessages.size();
      return i;
    }
  }
  
  public List<RichPushMessage> getUnreadMessages()
  {
    synchronized (inboxLock)
    {
      ArrayList localArrayList = new ArrayList(unreadMessages.values());
      Collections.sort(localArrayList, MESSAGE_COMPARATOR);
      return localArrayList;
    }
  }
  
  public void markMessagesRead(final Set<String> paramSet)
  {
    executor.execute(new Runnable()
    {
      public void run()
      {
        richPushResolver.markMessagesRead(paramSet);
      }
    });
    synchronized (inboxLock)
    {
      paramSet = paramSet.iterator();
      while (paramSet.hasNext())
      {
        String str = (String)paramSet.next();
        RichPushMessage localRichPushMessage = (RichPushMessage)unreadMessages.get(str);
        if (localRichPushMessage != null)
        {
          unreadClient = false;
          unreadMessages.remove(str);
          readMessages.put(str, localRichPushMessage);
        }
      }
    }
    notifyListeners();
  }
  
  public void markMessagesUnread(final Set<String> paramSet)
  {
    executor.execute(new Runnable()
    {
      public void run()
      {
        richPushResolver.markMessagesUnread(paramSet);
      }
    });
    synchronized (inboxLock)
    {
      paramSet = paramSet.iterator();
      while (paramSet.hasNext())
      {
        String str = (String)paramSet.next();
        RichPushMessage localRichPushMessage = (RichPushMessage)readMessages.get(str);
        if (localRichPushMessage != null)
        {
          unreadClient = true;
          readMessages.remove(str);
          unreadMessages.put(str, localRichPushMessage);
        }
      }
    }
    notifyListeners();
  }
  
  void refresh()
  {
    Cursor localCursor = richPushResolver.getAllMessages();
    if (localCursor == null) {
      return;
    }
    Object localObject3 = new ArrayList(localCursor.getCount());
    while (localCursor.moveToNext())
    {
      ??? = messageFromCursor(localCursor);
      if (??? != null) {
        ((List)localObject3).add(???);
      }
    }
    for (;;)
    {
      HashSet localHashSet1;
      RichPushMessage localRichPushMessage;
      synchronized (inboxLock)
      {
        localHashSet1 = new HashSet(unreadMessages.keySet());
        HashSet localHashSet2 = new HashSet(deletedMessageIds);
        unreadMessages.clear();
        readMessages.clear();
        localObject3 = ((List)localObject3).iterator();
        if (!((Iterator)localObject3).hasNext()) {
          break;
        }
        localRichPushMessage = (RichPushMessage)((Iterator)localObject3).next();
        if ((localRichPushMessage.isDeleted()) || (localHashSet2.contains(localRichPushMessage.getMessageId()))) {
          deletedMessageIds.add(localRichPushMessage.getMessageId());
        }
      }
      if ((unreadClient) || (localHashSet1.contains(localRichPushMessage.getMessageId())))
      {
        unreadClient = true;
        unreadMessages.put(localRichPushMessage.getMessageId(), localRichPushMessage);
      }
      else
      {
        readMessages.put(localRichPushMessage.getMessageId(), localRichPushMessage);
      }
    }
    ((Cursor)localObject1).close();
    notifyListeners();
  }
  
  public void removeListener(RichPushInbox.Listener paramListener)
  {
    synchronized (listeners)
    {
      listeners.remove(paramListener);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.richpush.RichPushInbox
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */