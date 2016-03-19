package com.urbanairship.actions.tags;

import com.urbanairship.UAirship;
import com.urbanairship.actions.Action;
import com.urbanairship.actions.ActionArguments;
import com.urbanairship.actions.ActionValue;
import com.urbanairship.json.JsonList;
import com.urbanairship.json.JsonValue;
import com.urbanairship.push.PushManager;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public abstract class BaseTagsAction
  extends Action
{
  public boolean acceptsArguments(ActionArguments paramActionArguments)
  {
    return getTags(paramActionArguments) != null;
  }
  
  protected PushManager getPushManager()
  {
    return UAirship.shared().getPushManager();
  }
  
  protected Set<String> getTags(ActionArguments paramActionArguments)
  {
    if (paramActionArguments.getValue().isNull()) {}
    do
    {
      return null;
      if (paramActionArguments.getValue().getString() != null)
      {
        localHashSet = new HashSet();
        localHashSet.add(String.valueOf(paramActionArguments.getValue().getString()));
        return localHashSet;
      }
    } while (paramActionArguments.getValue().getList() == null);
    HashSet localHashSet = new HashSet();
    paramActionArguments = paramActionArguments.getValue().getList().iterator();
    while (paramActionArguments.hasNext())
    {
      JsonValue localJsonValue = (JsonValue)paramActionArguments.next();
      if (localJsonValue.getString() != null) {
        localHashSet.add(localJsonValue.getString());
      }
    }
    return localHashSet;
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.actions.tags.BaseTagsAction
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */