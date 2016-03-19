package com.urbanairship.richpush;

import com.urbanairship.Logger;
import com.urbanairship.PreferenceDataStore;
import com.urbanairship.UAirship;
import com.urbanairship.util.UAStringUtil;

public class RichPushUser
{
  final RichPushUserPreferences preferences;
  
  RichPushUser(PreferenceDataStore paramPreferenceDataStore)
  {
    preferences = new RichPushUserPreferences(paramPreferenceDataStore);
  }
  
  public static boolean isCreated()
  {
    Object localObject = UAirship.shared();
    String str = ((UAirship)localObject).getRichPushManager().getRichPushUser().getId();
    localObject = ((UAirship)localObject).getRichPushManager().getRichPushUser().getPassword();
    return (!UAStringUtil.isEmpty(str)) && (!UAStringUtil.isEmpty((String)localObject));
  }
  
  public String getId()
  {
    return preferences.getUserId();
  }
  
  public String getPassword()
  {
    return preferences.getUserToken();
  }
  
  void setUser(String paramString1, String paramString2)
  {
    Logger.debug("RichPushUser - Setting Rich Push user: " + paramString1);
    preferences.setUserCredentials(paramString1, paramString2);
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.richpush.RichPushUser
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */