package com.urbanairship.util;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabase.CursorFactory;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.database.sqlite.SQLiteStatement;
import android.os.SystemClock;
import com.urbanairship.Logger;
import java.util.ArrayList;
import java.util.List;

public abstract class DataManager
{
  private static final int MAX_ATTEMPTS = 3;
  private final SQLiteOpenHelper openHelper;
  
  public DataManager(Context paramContext, final String paramString, int paramInt)
  {
    openHelper = new SQLiteOpenHelper(paramContext, paramString, null, paramInt)
    {
      public void onCreate(SQLiteDatabase paramAnonymousSQLiteDatabase)
      {
        DataManager.this.onCreate(paramAnonymousSQLiteDatabase);
      }
      
      public void onDowngrade(SQLiteDatabase paramAnonymousSQLiteDatabase, int paramAnonymousInt1, int paramAnonymousInt2)
      {
        Logger.debug("DataManager - Downgrading database " + paramString + " from version " + paramAnonymousInt1 + " to " + paramAnonymousInt2);
        DataManager.this.onDowngrade(paramAnonymousSQLiteDatabase, paramAnonymousInt1, paramAnonymousInt2);
      }
      
      public void onUpgrade(SQLiteDatabase paramAnonymousSQLiteDatabase, int paramAnonymousInt1, int paramAnonymousInt2)
      {
        Logger.debug("DataManager - Upgrading database " + paramString + " from version " + paramAnonymousInt1 + " to " + paramAnonymousInt2);
        DataManager.this.onUpgrade(paramAnonymousSQLiteDatabase, paramAnonymousInt1, paramAnonymousInt2);
      }
    };
  }
  
  private boolean tryExecuteStatement(SQLiteStatement paramSQLiteStatement, ContentValues paramContentValues)
  {
    boolean bool2 = false;
    int i = 0;
    for (;;)
    {
      boolean bool1 = bool2;
      if (i < 3) {}
      try
      {
        paramSQLiteStatement.clearBindings();
        bindValuesToSqliteStatement(paramSQLiteStatement, paramContentValues);
        paramSQLiteStatement.execute();
        bool1 = true;
        return bool1;
      }
      catch (Exception localException)
      {
        Logger.error("Unable to insert into database", localException);
        i += 1;
      }
    }
  }
  
  protected void bind(SQLiteStatement paramSQLiteStatement, int paramInt1, int paramInt2)
  {
    paramSQLiteStatement.bindLong(paramInt1, paramInt2);
  }
  
  protected void bind(SQLiteStatement paramSQLiteStatement, int paramInt, Boolean paramBoolean)
  {
    if (paramBoolean == null)
    {
      paramSQLiteStatement.bindNull(paramInt);
      return;
    }
    if (paramBoolean.booleanValue()) {}
    for (long l = 1L;; l = 0L)
    {
      paramSQLiteStatement.bindLong(paramInt, l);
      return;
    }
  }
  
  protected void bind(SQLiteStatement paramSQLiteStatement, int paramInt, Boolean paramBoolean1, Boolean paramBoolean2)
  {
    if (paramBoolean1 == null)
    {
      bind(paramSQLiteStatement, paramInt, paramBoolean2);
      return;
    }
    bind(paramSQLiteStatement, paramInt, paramBoolean1);
  }
  
  protected void bind(SQLiteStatement paramSQLiteStatement, int paramInt, String paramString)
  {
    if (paramString == null)
    {
      paramSQLiteStatement.bindNull(paramInt);
      return;
    }
    paramSQLiteStatement.bindString(paramInt, paramString);
  }
  
  protected void bind(SQLiteStatement paramSQLiteStatement, int paramInt, String paramString1, String paramString2)
  {
    if (paramString1 == null)
    {
      bind(paramSQLiteStatement, paramInt, paramString2);
      return;
    }
    bind(paramSQLiteStatement, paramInt, paramString1);
  }
  
  protected abstract void bindValuesToSqliteStatement(SQLiteStatement paramSQLiteStatement, ContentValues paramContentValues);
  
  protected String buildInsertStatement(String paramString, String... paramVarArgs)
  {
    StringBuilder localStringBuilder1 = new StringBuilder(128);
    localStringBuilder1.append("INSERT INTO ");
    localStringBuilder1.append(paramString);
    localStringBuilder1.append(" (");
    StringBuilder localStringBuilder2 = new StringBuilder(128);
    localStringBuilder2.append("VALUES (");
    int i = 0;
    if (i < paramVarArgs.length)
    {
      localStringBuilder1.append("'");
      localStringBuilder1.append(paramVarArgs[i]);
      localStringBuilder1.append("'");
      localStringBuilder2.append("?");
      if (i == paramVarArgs.length - 1)
      {
        paramString = ") ";
        label107:
        localStringBuilder1.append(paramString);
        if (i != paramVarArgs.length - 1) {
          break label145;
        }
      }
      label145:
      for (paramString = ");";; paramString = ", ")
      {
        localStringBuilder2.append(paramString);
        i += 1;
        break;
        paramString = ", ";
        break label107;
      }
    }
    localStringBuilder1.append(localStringBuilder2);
    return localStringBuilder1.toString();
  }
  
  public List<ContentValues> bulkInsert(String paramString, ContentValues[] paramArrayOfContentValues)
  {
    SQLiteDatabase localSQLiteDatabase = getWritableDatabase();
    ArrayList localArrayList = new ArrayList();
    if (localSQLiteDatabase == null) {
      return localArrayList;
    }
    localSQLiteDatabase.beginTransaction();
    paramString = getInsertStatement(paramString, localSQLiteDatabase);
    for (;;)
    {
      int i;
      try
      {
        int j = paramArrayOfContentValues.length;
        i = 0;
        if (i < j)
        {
          ContentValues localContentValues = paramArrayOfContentValues[i];
          if (tryExecuteStatement(paramString, localContentValues)) {
            localArrayList.add(localContentValues);
          }
        }
        else
        {
          if (!localArrayList.isEmpty()) {
            localSQLiteDatabase.setTransactionSuccessful();
          }
          return localArrayList;
        }
      }
      catch (Exception paramString)
      {
        Logger.error("Unable to insert into database", paramString);
        return localArrayList;
      }
      finally
      {
        localSQLiteDatabase.endTransaction();
      }
      i += 1;
    }
  }
  
  public void close()
  {
    try
    {
      openHelper.close();
      return;
    }
    catch (Exception localException)
    {
      Logger.error("Failed to close the database.", localException);
    }
  }
  
  public int delete(String paramString1, String paramString2, String[] paramArrayOfString)
  {
    String str = paramString2;
    if (paramString2 == null) {
      str = "1";
    }
    paramString2 = getWritableDatabase();
    if (paramString2 == null) {}
    for (;;)
    {
      return -1;
      int i = 0;
      while (i < 3) {
        try
        {
          int j = paramString2.delete(paramString1, str, paramArrayOfString);
          return j;
        }
        catch (Exception localException)
        {
          Logger.error("Unable to delete item from a database", localException);
          i += 1;
        }
      }
    }
  }
  
  protected abstract SQLiteStatement getInsertStatement(String paramString, SQLiteDatabase paramSQLiteDatabase);
  
  protected SQLiteDatabase getReadableDatabase()
  {
    int i = 0;
    while (i < 3) {
      try
      {
        SQLiteDatabase localSQLiteDatabase = openHelper.getReadableDatabase();
        return localSQLiteDatabase;
      }
      catch (SQLiteException localSQLiteException)
      {
        SystemClock.sleep(100L);
        Logger.error("DataManager - Error opening readable database. Retrying...");
        i += 1;
      }
    }
    return null;
  }
  
  protected SQLiteDatabase getWritableDatabase()
  {
    int i = 0;
    while (i < 3) {
      try
      {
        SQLiteDatabase localSQLiteDatabase = openHelper.getWritableDatabase();
        return localSQLiteDatabase;
      }
      catch (SQLiteException localSQLiteException)
      {
        SystemClock.sleep(100L);
        Logger.error("DataManager - Error opening writable database. Retrying...");
        i += 1;
      }
    }
    return null;
  }
  
  public long insert(String paramString, ContentValues paramContentValues)
  {
    if (getWritableDatabase() == null) {}
    for (;;)
    {
      return -1L;
      int i = 0;
      while (i < 3) {
        try
        {
          long l = getWritableDatabase().replaceOrThrow(paramString, null, paramContentValues);
          return l;
        }
        catch (Exception localException)
        {
          Logger.error("Unable to insert into database", localException);
          i += 1;
        }
      }
    }
  }
  
  protected abstract void onCreate(SQLiteDatabase paramSQLiteDatabase);
  
  protected void onDowngrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    throw new SQLiteException("Unable to downgrade database");
  }
  
  protected void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    Logger.debug("DataManager - onUpgrade not implemented yet.");
  }
  
  public Cursor query(String paramString1, String[] paramArrayOfString1, String paramString2, String[] paramArrayOfString2, String paramString3)
  {
    return query(paramString1, paramArrayOfString1, paramString2, paramArrayOfString2, paramString3, null);
  }
  
  public Cursor query(String paramString1, String[] paramArrayOfString1, String paramString2, String[] paramArrayOfString2, String paramString3, String paramString4)
  {
    SQLiteDatabase localSQLiteDatabase = getReadableDatabase();
    if (localSQLiteDatabase == null) {
      return null;
    }
    int i = 0;
    while (i < 3) {
      try
      {
        Cursor localCursor = localSQLiteDatabase.query(paramString1, paramArrayOfString1, paramString2, paramArrayOfString2, null, null, paramString3, paramString4);
        return localCursor;
      }
      catch (SQLException localSQLException)
      {
        Logger.error("Query Failed", localSQLException);
        i += 1;
      }
    }
    return null;
  }
  
  public int update(String paramString1, ContentValues paramContentValues, String paramString2, String[] paramArrayOfString)
  {
    SQLiteDatabase localSQLiteDatabase = getWritableDatabase();
    if (localSQLiteDatabase == null) {}
    for (;;)
    {
      return -1;
      int i = 0;
      while (i < 3) {
        try
        {
          int j = localSQLiteDatabase.update(paramString1, paramContentValues, paramString2, paramArrayOfString);
          return j;
        }
        catch (SQLException localSQLException)
        {
          Logger.error("Update Failed", localSQLException);
          i += 1;
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.util.DataManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */