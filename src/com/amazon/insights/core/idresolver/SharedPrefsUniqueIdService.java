package com.amazon.insights.core.idresolver;

import com.amazon.insights.core.InsightsContext;
import com.amazon.insights.core.log.Logger;
import com.amazon.insights.core.system.Preferences;
import com.amazon.insights.core.system.System;

public class SharedPrefsUniqueIdService
  implements UniqueIdService
{
  protected static final String PREFS_NAME = SharedPrefsUniqueIdService.class.getName();
  protected static final String UNIQUE_ID_KEY = "UniqueId";
  private static Logger logger = Logger.getLogger(SharedPrefsUniqueIdService.class);
  private final UniqueIdGenerator generator;
  
  public SharedPrefsUniqueIdService(UniqueIdGenerator paramUniqueIdGenerator)
  {
    generator = paramUniqueIdGenerator;
  }
  
  private Id getIdFromPreferences(Preferences paramPreferences)
  {
    Id localId = Id.getEmptyId();
    String str = paramPreferences.getString("UniqueId", null);
    paramPreferences = localId;
    if (str != null) {
      paramPreferences = new Id(str);
    }
    return paramPreferences;
  }
  
  public static UniqueIdService newInstance()
  {
    return new SharedPrefsUniqueIdService(new RandomUUIDGenerator());
  }
  
  private void storeUniqueId(Preferences paramPreferences, Id paramId)
  {
    try
    {
      paramPreferences.putString("UniqueId", paramId.getValue());
      return;
    }
    catch (Exception paramPreferences)
    {
      logger.e("There was an exception when trying to store the unique id into the Preferences", paramPreferences);
    }
  }
  
  public Id getUniqueId(InsightsContext paramInsightsContext)
  {
    if ((paramInsightsContext == null) || (paramInsightsContext.getSystem() == null) || (paramInsightsContext.getSystem().getPreferences() == null)) {
      localObject = Id.getEmptyId();
    }
    Id localId;
    do
    {
      return (Id)localObject;
      localId = getIdFromPreferences(paramInsightsContext.getSystem().getPreferences());
      localObject = localId;
    } while (localId != Id.getEmptyId());
    Object localObject = new Id(generator.generateUniqueIdString());
    storeUniqueId(paramInsightsContext.getSystem().getPreferences(), (Id)localObject);
    return (Id)localObject;
  }
}

/* Location:
 * Qualified Name:     com.amazon.insights.core.idresolver.SharedPrefsUniqueIdService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */