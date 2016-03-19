package com.urbanairship.push;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.urbanairship.Logger;
import com.urbanairship.UAirship;
import com.urbanairship.util.UAStringUtil;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class TagGroupsEditor
{
  private final String action;
  protected final Map<String, Set<String>> tagsToAdd = new HashMap();
  protected final Map<String, Set<String>> tagsToRemove = new HashMap();
  
  TagGroupsEditor(String paramString)
  {
    action = paramString;
  }
  
  public TagGroupsEditor addTag(String paramString1, String paramString2)
  {
    return addTags(paramString1, new HashSet(Arrays.asList(new String[] { paramString2 })));
  }
  
  public TagGroupsEditor addTags(String paramString, Set<String> paramSet)
  {
    if (!isValid(paramString, paramSet)) {
      return this;
    }
    updateTags(tagsToAdd, tagsToRemove, paramString, paramSet);
    return this;
  }
  
  public void apply()
  {
    if ((tagsToAdd.isEmpty()) && (tagsToRemove.isEmpty()))
    {
      Logger.info("Skipping tag group update because tags to add and tags to remove are both empty.");
      return;
    }
    Intent localIntent = new Intent(UAirship.getApplicationContext(), PushService.class).setAction(action).putExtra("com.urbanairship.push.EXTRA_ADD_TAG_GROUPS", convertToBundle(tagsToAdd)).putExtra("com.urbanairship.push.EXTRA_REMOVE_TAG_GROUPS", convertToBundle(tagsToRemove));
    UAirship.getApplicationContext().startService(localIntent);
  }
  
  Bundle convertToBundle(Map<String, Set<String>> paramMap)
  {
    Bundle localBundle = new Bundle();
    paramMap = paramMap.entrySet().iterator();
    while (paramMap.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramMap.next();
      localBundle.putStringArrayList((String)localEntry.getKey(), new ArrayList((Collection)localEntry.getValue()));
    }
    return localBundle;
  }
  
  boolean isValid(String paramString, Set<String> paramSet)
  {
    boolean bool = true;
    if (UAStringUtil.isEmpty(paramString))
    {
      Logger.warn("The tag group ID string cannot be null.");
      bool = false;
    }
    if (TagUtils.normalizeTags(paramSet).isEmpty())
    {
      Logger.warn("The tags cannot be empty");
      return false;
    }
    return bool;
  }
  
  public TagGroupsEditor removeTag(String paramString1, String paramString2)
  {
    return removeTags(paramString1, new HashSet(Arrays.asList(new String[] { paramString2 })));
  }
  
  public TagGroupsEditor removeTags(String paramString, Set<String> paramSet)
  {
    if (!isValid(paramString, paramSet)) {
      return this;
    }
    updateTags(tagsToRemove, tagsToAdd, paramString, paramSet);
    return this;
  }
  
  void updateTags(Map<String, Set<String>> paramMap1, Map<String, Set<String>> paramMap2, String paramString, Set<String> paramSet)
  {
    paramSet = TagUtils.normalizeTags(paramSet);
    if (paramMap2.containsKey(paramString))
    {
      ((Set)paramMap2.get(paramString)).removeAll(paramSet);
      if (((Set)paramMap2.get(paramString)).size() == 0) {
        paramMap2.remove(paramString);
      }
    }
    if (paramMap1.containsKey(paramString))
    {
      ((Set)paramMap1.get(paramString)).addAll(paramSet);
      if (((Set)paramMap1.get(paramString)).size() == 0) {
        paramMap1.remove(paramString);
      }
      return;
    }
    paramMap1.put(paramString, new HashSet(paramSet));
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.push.TagGroupsEditor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */