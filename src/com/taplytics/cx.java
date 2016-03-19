package com.taplytics;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import java.util.ArrayList;

public abstract class cx
{
  public SQLiteDatabase a;
  public SQLiteOpenHelper b;
  
  public int a(String paramString)
  {
    try
    {
      if ((a == null) || (!a.isOpen())) {
        a = b.getReadableDatabase();
      }
      paramString = a().rawQuery("SELECT * FROM " + paramString, null);
      int i = paramString.getCount();
      paramString.close();
      return i;
    }
    catch (Exception paramString)
    {
      if (ck.c()) {
        ck.a("count error: " + paramString.getMessage());
      }
    }
    return 0;
  }
  
  public SQLiteDatabase a()
  {
    return a;
  }
  
  public Boolean a(String paramString, int paramInt, cx paramcx)
  {
    try
    {
      b = new ds(fy.e().p(), paramString, paramInt, paramcx);
      return Boolean.valueOf(true);
    }
    catch (Exception paramString)
    {
      ck.b("External Analytics", paramString);
    }
    return Boolean.valueOf(false);
  }
  
  public ArrayList<String> a(String paramString1, String paramString2)
  {
    ArrayList localArrayList = new ArrayList();
    try
    {
      if ((a == null) || (!a.isOpen())) {
        a = b.getReadableDatabase();
      }
      paramString1 = a().rawQuery("SELECT * FROM " + paramString1, null);
      while (paramString1.moveToNext()) {
        localArrayList.add(paramString1.getString(paramString1.getColumnIndex(paramString2)));
      }
      paramString1.close();
    }
    catch (Exception paramString1)
    {
      if (ck.c()) {
        ck.a("Error getting data from db: " + paramString1.getMessage());
      }
      a.close();
      return localArrayList;
    }
    return localArrayList;
  }
  
  public void a(SQLiteDatabase paramSQLiteDatabase)
  {
    a = paramSQLiteDatabase;
  }
  
  public abstract void b();
}

/* Location:
 * Qualified Name:     com.taplytics.cx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */