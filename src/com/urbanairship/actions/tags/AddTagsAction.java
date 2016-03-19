package com.urbanairship.actions.tags;

import com.urbanairship.Logger;
import com.urbanairship.actions.ActionArguments;
import com.urbanairship.actions.ActionResult;
import com.urbanairship.push.PushManager;
import java.util.Set;

public class AddTagsAction
  extends BaseTagsAction
{
  public static final String DEFAULT_REGISTRY_NAME = "add_tags_action";
  public static final String DEFAULT_REGISTRY_SHORT_NAME = "^+t";
  
  public ActionResult perform(ActionArguments paramActionArguments)
  {
    paramActionArguments = getTags(paramActionArguments);
    Logger.info("AddTagsAction - Adding tags: " + paramActionArguments);
    paramActionArguments.addAll(getPushManager().getTags());
    getPushManager().setTags(paramActionArguments);
    return ActionResult.newEmptyResult();
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.actions.tags.AddTagsAction
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */