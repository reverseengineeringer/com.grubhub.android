package com.taplytics;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

public class ds
  extends SQLiteOpenHelper
{
  private cx a;
  
  public ds(Context paramContext, String paramString, int paramInt, cx paramcx)
  {
    super(paramContext, paramString, null, paramInt);
    a = paramcx;
  }
  
  public void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    a.a(paramSQLiteDatabase);
  }
  
  public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    a.a(paramSQLiteDatabase);
  }
}

/* Location:
 * Qualified Name:     com.taplytics.ds
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */