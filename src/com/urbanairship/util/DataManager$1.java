package com.urbanairship.util;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabase.CursorFactory;
import android.database.sqlite.SQLiteOpenHelper;
import com.urbanairship.Logger;

class DataManager$1
  extends SQLiteOpenHelper
{
  DataManager$1(DataManager paramDataManager, Context paramContext, String paramString1, SQLiteDatabase.CursorFactory paramCursorFactory, int paramInt, String paramString2)
  {
    super(paramContext, paramString1, paramCursorFactory, paramInt);
  }
  
  public void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    this$0.onCreate(paramSQLiteDatabase);
  }
  
  public void onDowngrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    Logger.debug("DataManager - Downgrading database " + val$name + " from version " + paramInt1 + " to " + paramInt2);
    this$0.onDowngrade(paramSQLiteDatabase, paramInt1, paramInt2);
  }
  
  public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    Logger.debug("DataManager - Upgrading database " + val$name + " from version " + paramInt1 + " to " + paramInt2);
    this$0.onUpgrade(paramSQLiteDatabase, paramInt1, paramInt2);
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.util.DataManager.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */