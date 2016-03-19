package com.taplytics;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import org.json.JSONObject;

public class bw
  extends SQLiteOpenHelper
{
  public static String a = "TLDatabase";
  public static int b = 2;
  private static String c = "TLEventTable";
  private static final String d = "CREATE TABLE IF NOT EXISTS " + c + " (timestamp long, event TEXT)";
  private static final String e = "DROP TABLE IF EXISTS " + c;
  private static final String f = "DELETE FROM " + c + " WHERE timestamp IN (SELECT timestamp FROM " + c + " ORDER BY timestamp ASC LIMIT %d)";
  private static final String g = "SELECT Count(1) FROM " + c;
  
  public bw(Context paramContext)
  {
    super(paramContext, a, null, b);
  }
  
  /* Error */
  public java.util.ArrayList<JSONObject> a(int paramInt)
    throws org.json.JSONException
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: new 72	java/util/ArrayList
    //   5: dup
    //   6: invokespecial 73	java/util/ArrayList:<init>	()V
    //   9: astore 5
    //   11: aload_0
    //   12: invokevirtual 77	com/taplytics/bw:getReadableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   15: astore_2
    //   16: getstatic 19	com/taplytics/bw:c	Ljava/lang/String;
    //   19: astore 4
    //   21: iload_1
    //   22: invokestatic 82	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   25: astore 6
    //   27: aload_2
    //   28: aload 4
    //   30: iconst_2
    //   31: anewarray 84	java/lang/String
    //   34: dup
    //   35: iconst_0
    //   36: ldc 86
    //   38: aastore
    //   39: dup
    //   40: iconst_1
    //   41: ldc 88
    //   43: aastore
    //   44: aconst_null
    //   45: aconst_null
    //   46: aconst_null
    //   47: aconst_null
    //   48: ldc 90
    //   50: aload 6
    //   52: invokevirtual 96	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   55: astore_2
    //   56: aload_2
    //   57: astore_3
    //   58: aload_3
    //   59: astore_2
    //   60: aload_3
    //   61: invokeinterface 102 1 0
    //   66: ifeq +52 -> 118
    //   69: aload_3
    //   70: astore_2
    //   71: aload 5
    //   73: new 104	org/json/JSONObject
    //   76: dup
    //   77: aload_3
    //   78: iconst_1
    //   79: invokeinterface 107 2 0
    //   84: invokespecial 110	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   87: invokevirtual 114	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   90: pop
    //   91: goto -33 -> 58
    //   94: astore 4
    //   96: aload_3
    //   97: astore_2
    //   98: ldc 116
    //   100: aload 4
    //   102: invokestatic 121	com/taplytics/ck:b	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   105: aload_3
    //   106: ifnull +9 -> 115
    //   109: aload_3
    //   110: invokeinterface 124 1 0
    //   115: aload 5
    //   117: areturn
    //   118: aload_3
    //   119: ifnull -4 -> 115
    //   122: aload_3
    //   123: invokeinterface 124 1 0
    //   128: aload 5
    //   130: areturn
    //   131: astore_2
    //   132: aload_3
    //   133: ifnull +9 -> 142
    //   136: aload_3
    //   137: invokeinterface 124 1 0
    //   142: aload_2
    //   143: athrow
    //   144: astore 4
    //   146: aload_2
    //   147: astore_3
    //   148: aload 4
    //   150: astore_2
    //   151: goto -19 -> 132
    //   154: astore 4
    //   156: aconst_null
    //   157: astore_3
    //   158: goto -62 -> 96
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	161	0	this	bw
    //   0	161	1	paramInt	int
    //   15	83	2	localObject1	Object
    //   131	16	2	localObject2	Object
    //   150	1	2	localObject3	Object
    //   1	157	3	localObject4	Object
    //   19	10	4	str1	String
    //   94	7	4	localException1	Exception
    //   144	5	4	localObject5	Object
    //   154	1	4	localException2	Exception
    //   9	120	5	localArrayList	java.util.ArrayList
    //   25	26	6	str2	String
    // Exception table:
    //   from	to	target	type
    //   60	69	94	java/lang/Exception
    //   71	91	94	java/lang/Exception
    //   11	56	131	finally
    //   60	69	144	finally
    //   71	91	144	finally
    //   98	105	144	finally
    //   11	56	154	java/lang/Exception
  }
  
  public void a()
  {
    getWritableDatabase();
  }
  
  public void a(JSONObject paramJSONObject)
  {
    paramJSONObject = paramJSONObject.toString();
    ContentValues localContentValues;
    if (iz.a(paramJSONObject))
    {
      localContentValues = new ContentValues();
      localContentValues.put("timestamp", Long.valueOf(System.currentTimeMillis()));
      localContentValues.put("event", paramJSONObject);
    }
    try
    {
      getWritableDatabase().insert(c, null, localContentValues);
      int i = b();
      if (i > 1000) {
        b(i - 950);
      }
      return;
    }
    catch (Exception paramJSONObject)
    {
      for (;;)
      {
        ck.b("Exception writing events", paramJSONObject);
      }
    }
  }
  
  /* Error */
  public int b()
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 77	com/taplytics/bw:getReadableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   4: getstatic 54	com/taplytics/bw:g	Ljava/lang/String;
    //   7: aconst_null
    //   8: invokevirtual 175	android/database/sqlite/SQLiteDatabase:rawQuery	(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    //   11: astore_3
    //   12: aload_3
    //   13: astore 4
    //   15: aload_3
    //   16: invokeinterface 178 1 0
    //   21: ifeq +103 -> 124
    //   24: aload_3
    //   25: astore 4
    //   27: aload_3
    //   28: iconst_0
    //   29: invokeinterface 182 2 0
    //   34: istore_1
    //   35: aload_3
    //   36: astore 4
    //   38: aload_3
    //   39: invokeinterface 124 1 0
    //   44: iload_1
    //   45: istore_2
    //   46: aload_3
    //   47: ifnull +11 -> 58
    //   50: aload_3
    //   51: invokeinterface 124 1 0
    //   56: iload_1
    //   57: istore_2
    //   58: iload_2
    //   59: ireturn
    //   60: astore 5
    //   62: aconst_null
    //   63: astore_3
    //   64: iconst_0
    //   65: istore_1
    //   66: aload_3
    //   67: astore 4
    //   69: ldc -72
    //   71: aload 5
    //   73: invokestatic 121	com/taplytics/ck:b	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   76: iload_1
    //   77: istore_2
    //   78: aload_3
    //   79: ifnull -21 -> 58
    //   82: aload_3
    //   83: invokeinterface 124 1 0
    //   88: iload_1
    //   89: ireturn
    //   90: astore_3
    //   91: aconst_null
    //   92: astore 4
    //   94: aload 4
    //   96: ifnull +10 -> 106
    //   99: aload 4
    //   101: invokeinterface 124 1 0
    //   106: aload_3
    //   107: athrow
    //   108: astore_3
    //   109: goto -15 -> 94
    //   112: astore 5
    //   114: iconst_0
    //   115: istore_1
    //   116: goto -50 -> 66
    //   119: astore 5
    //   121: goto -55 -> 66
    //   124: iconst_0
    //   125: istore_1
    //   126: goto -91 -> 35
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	129	0	this	bw
    //   34	92	1	i	int
    //   45	33	2	j	int
    //   11	72	3	localCursor1	android.database.Cursor
    //   90	17	3	localObject1	Object
    //   108	1	3	localObject2	Object
    //   13	87	4	localCursor2	android.database.Cursor
    //   60	12	5	localException1	Exception
    //   112	1	5	localException2	Exception
    //   119	1	5	localException3	Exception
    // Exception table:
    //   from	to	target	type
    //   0	12	60	java/lang/Exception
    //   0	12	90	finally
    //   15	24	108	finally
    //   27	35	108	finally
    //   38	44	108	finally
    //   69	76	108	finally
    //   15	24	112	java/lang/Exception
    //   27	35	112	java/lang/Exception
    //   38	44	119	java/lang/Exception
  }
  
  public void b(int paramInt)
  {
    try
    {
      getWritableDatabase().execSQL(String.format(f, new Object[] { Integer.valueOf(paramInt) }));
      return;
    }
    catch (Exception localException)
    {
      ck.b("Exception while deleting events", localException);
    }
  }
  
  public void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL(d);
  }
  
  public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    paramSQLiteDatabase.execSQL(e);
    onCreate(paramSQLiteDatabase);
  }
}

/* Location:
 * Qualified Name:     com.taplytics.bw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */