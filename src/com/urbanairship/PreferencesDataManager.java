package com.urbanairship;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import com.urbanairship.util.DataManager;

class PreferencesDataManager
  extends DataManager
{
  static final String COLUMN_NAME_KEY = "_id";
  static final String COLUMN_NAME_VALUE = "value";
  static final String DATABASE_NAME = "ua_preferences.db";
  static final int DATABASE_VERSION = 1;
  static final String TABLE_NAME = "preferences";
  
  public PreferencesDataManager(Context paramContext)
  {
    super(paramContext, "ua_preferences.db", 1);
  }
  
  protected void bindValuesToSqliteStatement(SQLiteStatement paramSQLiteStatement, ContentValues paramContentValues)
  {
    bind(paramSQLiteStatement, 1, paramContentValues.getAsString("_id"));
    bind(paramSQLiteStatement, 2, paramContentValues.getAsString("value"));
  }
  
  protected SQLiteStatement getInsertStatement(String paramString, SQLiteDatabase paramSQLiteDatabase)
  {
    return paramSQLiteDatabase.compileStatement(buildInsertStatement(paramString, new String[] { "_id", "value" }));
  }
  
  protected void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS preferences (_id TEXT PRIMARY KEY, value TEXT);");
  }
  
  protected void onDowngrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS preferences");
    onCreate(paramSQLiteDatabase);
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.PreferencesDataManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */