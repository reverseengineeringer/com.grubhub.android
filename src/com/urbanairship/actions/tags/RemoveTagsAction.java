package com.urbanairship.actions.tags;

import com.urbanairship.Logger;
import com.urbanairship.actions.ActionArguments;
import com.urbanairship.actions.ActionResult;
import com.urbanairship.push.PushManager;
import java.util.Set;

public class RemoveTagsAction
  extends BaseTagsAction
{
  public static final String DEFAULT_REGISTRY_NAME = "remove_tags_action";
  public static final String DEFAULT_REGISTRY_SHORT_NAME = "^-t";
  
  public ActionResult perform(ActionArguments paramActionArguments)
  {
    paramActionArguments = getTags(paramActionArguments);
    Logger.info("RemoveTagsAction - Removing tags: " + paramActionArguments);
    Set localSet = getPushManager().getTags();
    localSet.removeAll(paramActionArguments);
    getPushManager().setTags(localSet);
    return ActionResult.newEmptyResult();
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.actions.tags.RemoveTagsAction
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */