package com.urbanairship;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;

public class UrbanAirshipResolver
{
  private final Context context;
  
  public UrbanAirshipResolver(Context paramContext)
  {
    context = paramContext;
  }
  
  private ContentResolver getResolver()
  {
    return context.getContentResolver();
  }
  
  protected int bulkInsert(Uri paramUri, ContentValues[] paramArrayOfContentValues)
  {
    try
    {
      int i = getResolver().bulkInsert(paramUri, paramArrayOfContentValues);
      return i;
    }
    catch (Exception paramUri)
    {
      Logger.error("Failed to bulk insert in UrbanAirshipProvider.", paramUri);
    }
    return 0;
  }
  
  protected int delete(Uri paramUri, String paramString, String[] paramArrayOfString)
  {
    try
    {
      int i = getResolver().delete(paramUri, paramString, paramArrayOfString);
      return i;
    }
    catch (Exception paramUri)
    {
      Logger.error("Failed to perform a delete in UrbanAirshipProvider.", paramUri);
    }
    return -1;
  }
  
  protected Uri insert(Uri paramUri, ContentValues paramContentValues)
  {
    try
    {
      paramUri = getResolver().insert(paramUri, paramContentValues);
      return paramUri;
    }
    catch (Exception paramUri)
    {
      Logger.error("Failed to insert in UrbanAirshipProvider.", paramUri);
    }
    return null;
  }
  
  protected Cursor query(Uri paramUri, String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2)
  {
    try
    {
      paramUri = getResolver().query(paramUri, paramArrayOfString1, paramString1, paramArrayOfString2, paramString2);
      return paramUri;
    }
    catch (Exception paramUri)
    {
      Logger.error("Failed to query the UrbanAirshipProvider.", paramUri);
    }
    return null;
  }
  
  public void registerContentObserver(Uri paramUri, boolean paramBoolean, ContentObserver paramContentObserver)
  {
    getResolver().registerContentObserver(paramUri, paramBoolean, paramContentObserver);
  }
  
  public void unregisterContentObserver(ContentObserver paramContentObserver)
  {
    getResolver().unregisterContentObserver(paramContentObserver);
  }
  
  protected int update(Uri paramUri, ContentValues paramContentValues, String paramString, String[] paramArrayOfString)
  {
    try
    {
      int i = getResolver().update(paramUri, paramContentValues, paramString, paramArrayOfString);
      return i;
    }
    catch (Exception paramUri)
    {
      Logger.error("Failed to perform an update in UrbanAirshipProvider.", paramUri);
    }
    return 0;
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.UrbanAirshipResolver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */