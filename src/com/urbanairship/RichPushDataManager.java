package com.urbanairship;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import com.urbanairship.util.DataManager;

class RichPushDataManager
  extends DataManager
{
  private static final String DATABASE_NAME = "ua_richpush.db";
  private static final int DATABASE_VERSION = 3;
  public static final String TABLE_NAME = "richpush";
  
  RichPushDataManager(Context paramContext)
  {
    super(paramContext, "ua_richpush.db", 3);
  }
  
  protected void bindValuesToSqliteStatement(SQLiteStatement paramSQLiteStatement, ContentValues paramContentValues)
  {
    bind(paramSQLiteStatement, 1, paramContentValues.getAsString("message_id"));
    bind(paramSQLiteStatement, 2, paramContentValues.getAsString("message_url"));
    bind(paramSQLiteStatement, 3, paramContentValues.getAsString("message_body_url"));
    bind(paramSQLiteStatement, 4, paramContentValues.getAsString("message_read_url"));
    bind(paramSQLiteStatement, 5, paramContentValues.getAsString("title"));
    bind(paramSQLiteStatement, 6, paramContentValues.getAsString("extra"));
    bind(paramSQLiteStatement, 7, paramContentValues.getAsBoolean("unread"), Boolean.valueOf(true));
    bind(paramSQLiteStatement, 8, paramContentValues.getAsBoolean("unread_orig"), Boolean.valueOf(true));
    bind(paramSQLiteStatement, 9, paramContentValues.getAsBoolean("deleted"), Boolean.valueOf(false));
    bind(paramSQLiteStatement, 10, paramContentValues.getAsString("timestamp"));
    bind(paramSQLiteStatement, 11, paramContentValues.getAsString("raw_message_object"));
    bind(paramSQLiteStatement, 12, paramContentValues.getAsString("expiration_timestamp"));
  }
  
  protected SQLiteStatement getInsertStatement(String paramString, SQLiteDatabase paramSQLiteDatabase)
  {
    return paramSQLiteDatabase.compileStatement(buildInsertStatement(paramString, new String[] { "message_id", "message_url", "message_body_url", "message_read_url", "title", "extra", "unread", "unread_orig", "deleted", "timestamp", "raw_message_object", "expiration_timestamp" }));
  }
  
  protected void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS richpush (_id INTEGER PRIMARY KEY AUTOINCREMENT, message_id TEXT UNIQUE, message_url TEXT, message_body_url TEXT, message_read_url TEXT, title TEXT, extra TEXT, unread INTEGER, unread_orig INTEGER, deleted INTEGER, timestamp TEXT, raw_message_object TEXT,expiration_timestamp TEXT);");
  }
  
  protected void onDowngrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS richpush");
    onCreate(paramSQLiteDatabase);
  }
  
  protected void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    switch (paramInt1)
    {
    default: 
      paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS richpush");
      return;
    case 1: 
      paramSQLiteDatabase.execSQL("ALTER TABLE richpush ADD COLUMN raw_message_object TEXT;");
    }
    paramSQLiteDatabase.execSQL("ALTER TABLE richpush ADD COLUMN expiration_timestamp TEXT;");
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.RichPushDataManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */