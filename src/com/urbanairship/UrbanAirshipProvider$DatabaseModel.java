package com.urbanairship;

import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import com.urbanairship.util.DataManager;
import com.urbanairship.util.UAStringUtil;
import java.util.Arrays;

class UrbanAirshipProvider$DatabaseModel
{
  final Uri contentUri;
  final DataManager dataManager;
  final String notificationColumnId;
  final String table;
  
  private UrbanAirshipProvider$DatabaseModel(DataManager paramDataManager, String paramString1, Uri paramUri, String paramString2)
  {
    dataManager = paramDataManager;
    table = paramString1;
    contentUri = paramUri;
    notificationColumnId = paramString2;
  }
  
  static DatabaseModel createPreferencesModel(Context paramContext)
  {
    return new DatabaseModel(new PreferencesDataManager(paramContext), "preferences", UrbanAirshipProvider.getPreferencesContentUri(), "_id");
  }
  
  static DatabaseModel createRichPushModel(Context paramContext)
  {
    return new DatabaseModel(new RichPushDataManager(paramContext), "richpush", UrbanAirshipProvider.getRichPushContentUri(), "message_id");
  }
  
  void notifyDatabaseChange(Context paramContext, String[] paramArrayOfString, String paramString)
  {
    paramArrayOfString = Uri.withAppendedPath(contentUri, UAStringUtil.join(Arrays.asList(paramArrayOfString), "|") + "/" + paramString);
    Logger.verbose("UrbanAirshipProvider - Notifying of change to " + paramArrayOfString);
    paramContext.getContentResolver().notifyChange(paramArrayOfString, null);
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.UrbanAirshipProvider.DatabaseModel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */