package com.urbanairship.actions;

import com.android.internal.util.Predicate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public final class ActionRegistry$Entry
{
  private Action defaultAction;
  private final List<String> names;
  private Predicate<ActionArguments> predicate;
  private final Map<Situation, Action> situationOverrides = new ConcurrentHashMap();
  
  private ActionRegistry$Entry(Action paramAction, String[] paramArrayOfString)
  {
    defaultAction = paramAction;
    names = new ArrayList(Arrays.asList(paramArrayOfString));
  }
  
  private void addName(String paramString)
  {
    synchronized (names)
    {
      names.add(paramString);
      return;
    }
  }
  
  private void removeName(String paramString)
  {
    synchronized (names)
    {
      names.remove(paramString);
      return;
    }
  }
  
  public void addSituationOverride(Action paramAction, Situation paramSituation)
  {
    if ((paramSituation == null) || (paramAction == null)) {
      return;
    }
    situationOverrides.put(paramSituation, paramAction);
  }
  
  public Action getActionForSituation(Situation paramSituation)
  {
    if (paramSituation == null) {
      paramSituation = defaultAction;
    }
    Action localAction;
    do
    {
      return paramSituation;
      localAction = (Action)situationOverrides.get(paramSituation);
      paramSituation = localAction;
    } while (localAction != null);
    return defaultAction;
  }
  
  public Action getDefaultAction()
  {
    return defaultAction;
  }
  
  public List<String> getNames()
  {
    synchronized (names)
    {
      ArrayList localArrayList = new ArrayList(names);
      return localArrayList;
    }
  }
  
  public Predicate<ActionArguments> getPredicate()
  {
    return predicate;
  }
  
  public void setDefaultAction(Action paramAction)
  {
    if (paramAction == null) {
      return;
    }
    defaultAction = paramAction;
  }
  
  public void setPredicate(Predicate<ActionArguments> paramPredicate)
  {
    predicate = paramPredicate;
  }
  
  public String toString()
  {
    return "Action Entry: " + names;
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.actions.ActionRegistry.Entry
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */