package com.urbanairship;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.UriMatcher;
import android.database.Cursor;
import android.net.Uri;
import com.urbanairship.util.DataManager;
import java.util.List;

public final class UrbanAirshipProvider
  extends ContentProvider
{
  public static final String DELETE_ACTION = "delete";
  public static final String INSERT_ACTION = "insert";
  public static final String KEYS_DELIMITER = "|";
  private static final int KEYS_LOCATION = 1;
  private static final UriMatcher MATCHER = new UriMatcher(-1);
  static final String MULTIPLE_SUFFIX = "vnd.urbanairship.cursor.dir/";
  static final String PREFERENCES_CONTENT_ITEM_TYPE = "vnd.urbanairship.cursor.item/preference";
  static final String PREFERENCES_CONTENT_TYPE = "vnd.urbanairship.cursor.dir/preference";
  private static final int PREFERENCES_URI_TYPE = 2;
  private static final int PREFERENCE_URI_TYPE = 3;
  private static final int RICHPUSH_MESSAGES_URI_TYPE = 0;
  private static final int RICHPUSH_MESSAGE_URI_TYPE = 1;
  static final String RICH_PUSH_CONTENT_ITEM_TYPE = "vnd.urbanairship.cursor.item/richpush";
  static final String RICH_PUSH_CONTENT_TYPE = "vnd.urbanairship.cursor.dir/richpush";
  static final String SINGLE_SUFFIX = "vnd.urbanairship.cursor.item/";
  public static final String UPDATE_ACTION = "update";
  private static String authorityString;
  private UrbanAirshipProvider.DatabaseModel preferencesModel;
  private UrbanAirshipProvider.DatabaseModel richPushModel;
  
  public static String getAuthorityString()
  {
    if (authorityString == null)
    {
      String str = UAirship.getPackageName();
      authorityString = str + ".urbanairship.provider";
    }
    return authorityString;
  }
  
  private UrbanAirshipProvider.DatabaseModel getDatabaseModel(Uri paramUri)
  {
    switch (MATCHER.match(paramUri))
    {
    default: 
      throw new IllegalArgumentException("Invalid URI: " + paramUri);
    case 0: 
    case 1: 
      return getRichPushModel();
    }
    return getPreferencesModel();
  }
  
  private String[] getKeys(Uri paramUri)
  {
    try
    {
      paramUri = ((String)paramUri.getPathSegments().get(1)).split("\\|");
      return paramUri;
    }
    catch (IndexOutOfBoundsException paramUri) {}
    return new String[0];
  }
  
  public static Uri getPreferencesContentUri()
  {
    return Uri.parse("content://" + getAuthorityString() + "/preferences");
  }
  
  private UrbanAirshipProvider.DatabaseModel getPreferencesModel()
  {
    if (preferencesModel == null) {
      preferencesModel = UrbanAirshipProvider.DatabaseModel.createPreferencesModel(getContext());
    }
    return preferencesModel;
  }
  
  public static Uri getRichPushContentUri()
  {
    return Uri.parse("content://" + getAuthorityString() + "/richpush");
  }
  
  private UrbanAirshipProvider.DatabaseModel getRichPushModel()
  {
    if (richPushModel == null) {
      richPushModel = UrbanAirshipProvider.DatabaseModel.createRichPushModel(getContext());
    }
    return richPushModel;
  }
  
  static void init()
  {
    MATCHER.addURI(getAuthorityString(), "richpush", 0);
    MATCHER.addURI(getAuthorityString(), "richpush/*", 1);
    MATCHER.addURI(getAuthorityString(), "preferences", 2);
    MATCHER.addURI(getAuthorityString(), "preferences/*", 3);
  }
  
  public int bulkInsert(Uri paramUri, ContentValues[] paramArrayOfContentValues)
  {
    paramUri = getDatabaseModel(paramUri);
    paramArrayOfContentValues = dataManager.bulkInsert(table, paramArrayOfContentValues);
    String[] arrayOfString = new String[paramArrayOfContentValues.size()];
    int i = 0;
    while (i < arrayOfString.length)
    {
      arrayOfString[i] = ((ContentValues)paramArrayOfContentValues.get(i)).getAsString(notificationColumnId);
      i += 1;
    }
    paramUri.notifyDatabaseChange(getContext(), arrayOfString, "insert");
    return paramArrayOfContentValues.size();
  }
  
  public int delete(Uri paramUri, String paramString, String[] paramArrayOfString)
  {
    UrbanAirshipProvider.DatabaseModel localDatabaseModel = getDatabaseModel(paramUri);
    int i = dataManager.delete(table, paramString, paramArrayOfString);
    localDatabaseModel.notifyDatabaseChange(getContext(), getKeys(paramUri), "delete");
    return i;
  }
  
  public String getType(Uri paramUri)
  {
    switch (MATCHER.match(paramUri))
    {
    default: 
      throw new IllegalArgumentException("Invalid Uri: " + paramUri);
    case 0: 
      return "vnd.urbanairship.cursor.dir/richpush";
    case 1: 
      return "vnd.urbanairship.cursor.item/richpush";
    case 2: 
      return "vnd.urbanairship.cursor.dir/preference";
    }
    return "vnd.urbanairship.cursor.item/preference";
  }
  
  public Uri insert(Uri paramUri, ContentValues paramContentValues)
  {
    UrbanAirshipProvider.DatabaseModel localDatabaseModel = getDatabaseModel(paramUri);
    if (dataManager.insert(table, paramContentValues) != -1L)
    {
      paramContentValues = paramContentValues.getAsString(notificationColumnId);
      localDatabaseModel.notifyDatabaseChange(getContext(), new String[] { paramContentValues }, "insert");
      return Uri.withAppendedPath(paramUri, paramContentValues);
    }
    return null;
  }
  
  public boolean onCreate()
  {
    return true;
  }
  
  public Cursor query(Uri paramUri, String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2)
  {
    UrbanAirshipProvider.DatabaseModel localDatabaseModel = getDatabaseModel(paramUri);
    paramArrayOfString1 = dataManager.query(table, paramArrayOfString1, paramString1, paramArrayOfString2, paramString2);
    if (paramArrayOfString1 != null) {
      paramArrayOfString1.setNotificationUri(getContext().getContentResolver(), paramUri);
    }
    return paramArrayOfString1;
  }
  
  public void shutdown()
  {
    getRichPushModeldataManager.close();
    getPreferencesModeldataManager.close();
  }
  
  public int update(Uri paramUri, ContentValues paramContentValues, String paramString, String[] paramArrayOfString)
  {
    UrbanAirshipProvider.DatabaseModel localDatabaseModel = getDatabaseModel(paramUri);
    int i = dataManager.update(table, paramContentValues, paramString, paramArrayOfString);
    if (i != -1) {
      localDatabaseModel.notifyDatabaseChange(getContext(), getKeys(paramUri), "update");
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.UrbanAirshipProvider
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */