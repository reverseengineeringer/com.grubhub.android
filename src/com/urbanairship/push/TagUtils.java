package com.urbanairship.push;

import com.urbanairship.Logger;
import com.urbanairship.json.JsonList;
import com.urbanairship.json.JsonMap;
import com.urbanairship.json.JsonValue;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

class TagUtils
{
  private static final int MAX_TAG_LENGTH = 127;
  
  static Map<String, Set<String>> convertToTagsMap(JsonValue paramJsonValue)
  {
    HashMap localHashMap = new HashMap();
    if ((paramJsonValue != null) && (paramJsonValue.isJsonMap()))
    {
      paramJsonValue = paramJsonValue.getMap().iterator();
      while (paramJsonValue.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)paramJsonValue.next();
        HashSet localHashSet = new HashSet();
        Iterator localIterator = ((JsonValue)localEntry.getValue()).getList().iterator();
        while (localIterator.hasNext())
        {
          JsonValue localJsonValue = (JsonValue)localIterator.next();
          if (localJsonValue.isString()) {
            localHashSet.add(localJsonValue.getString());
          }
        }
        if (!localHashSet.isEmpty()) {
          localHashMap.put(localEntry.getKey(), localHashSet);
        }
      }
    }
    return localHashMap;
  }
  
  static Set<String> normalizeTags(Set<String> paramSet)
  {
    if (paramSet == null) {
      return null;
    }
    HashSet localHashSet = new HashSet();
    paramSet = paramSet.iterator();
    while (paramSet.hasNext())
    {
      String str = (String)paramSet.next();
      if (str == null)
      {
        Logger.debug("Null tag was removed from set.");
      }
      else
      {
        str = str.trim();
        if ((str.length() <= 0) || (str.length() > 127)) {
          Logger.error("Tag with zero or greater than max length was removed from set: " + str);
        } else {
          localHashSet.add(str);
        }
      }
    }
    return localHashSet;
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.push.TagUtils
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */