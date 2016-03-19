package com.urbanairship;

import android.content.ContentValues;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
import com.urbanairship.util.UAStringUtil;
import java.util.concurrent.Executor;

class PreferenceDataStore$Preference
{
  private final String key;
  private String value;
  
  PreferenceDataStore$Preference(PreferenceDataStore paramPreferenceDataStore, String paramString1, String paramString2)
  {
    key = paramString1;
    value = paramString2;
    registerObserver();
  }
  
  private void registerObserver()
  {
    ContentObserver local2 = new ContentObserver(null)
    {
      public void onChange(boolean paramAnonymousBoolean)
      {
        super.onChange(paramAnonymousBoolean);
        Logger.verbose("PreferenceDataStore - Preference updated:" + key);
        this$0.executor.execute(new Runnable()
        {
          public void run()
          {
            syncValue();
          }
        });
      }
    };
    Uri localUri = Uri.withAppendedPath(UrbanAirshipProvider.getPreferencesContentUri(), key);
    PreferenceDataStore.access$200(this$0).registerContentObserver(localUri, true, local2);
  }
  
  private void setValue(String paramString)
  {
    try
    {
      if (UAStringUtil.equals(paramString, value)) {
        return;
      }
      value = paramString;
      PreferenceDataStore.access$100(this$0, key);
      return;
    }
    finally {}
  }
  
  private boolean writeValue(String paramString)
  {
    boolean bool2 = true;
    boolean bool1 = true;
    if (paramString == null) {}
    for (;;)
    {
      try
      {
        Logger.verbose("PreferenceDataStore - Removing preference: " + key);
        if (PreferenceDataStore.access$200(this$0).delete(UrbanAirshipProvider.getPreferencesContentUri(), "_id = ?", new String[] { key }) < 0) {
          break label164;
        }
        return bool1;
      }
      finally {}
      Logger.verbose("PreferenceDataStore - Saving preference: " + key + " value: " + paramString);
      ContentValues localContentValues = new ContentValues();
      localContentValues.put("_id", key);
      localContentValues.put("value", paramString);
      if (PreferenceDataStore.access$200(this$0).insert(UrbanAirshipProvider.getPreferencesContentUri(), localContentValues) != null)
      {
        bool1 = bool2;
        return bool1;
      }
      bool1 = false;
      continue;
      label164:
      bool1 = false;
    }
  }
  
  String get()
  {
    try
    {
      String str = value;
      return str;
    }
    finally {}
  }
  
  void put(final String paramString)
  {
    setValue(paramString);
    this$0.executor.execute(new Runnable()
    {
      public void run()
      {
        PreferenceDataStore.Preference.this.writeValue(paramString);
      }
    });
  }
  
  boolean putSync(String paramString)
  {
    try
    {
      if (writeValue(paramString))
      {
        setValue(paramString);
        return true;
      }
      return false;
    }
    finally {}
  }
  
  /* Error */
  void syncValue()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_0
    //   3: monitorenter
    //   4: aload_0
    //   5: getfield 19	com/urbanairship/PreferenceDataStore$Preference:this$0	Lcom/urbanairship/PreferenceDataStore;
    //   8: invokestatic 59	com/urbanairship/PreferenceDataStore:access$200	(Lcom/urbanairship/PreferenceDataStore;)Lcom/urbanairship/UrbanAirshipResolver;
    //   11: astore_1
    //   12: invokestatic 47	com/urbanairship/UrbanAirshipProvider:getPreferencesContentUri	()Landroid/net/Uri;
    //   15: astore_3
    //   16: aload_0
    //   17: getfield 24	com/urbanairship/PreferenceDataStore$Preference:key	Ljava/lang/String;
    //   20: astore 4
    //   22: aload_1
    //   23: aload_3
    //   24: iconst_1
    //   25: anewarray 99	java/lang/String
    //   28: dup
    //   29: iconst_0
    //   30: ldc 117
    //   32: aastore
    //   33: ldc 97
    //   35: iconst_1
    //   36: anewarray 99	java/lang/String
    //   39: dup
    //   40: iconst_0
    //   41: aload 4
    //   43: aastore
    //   44: aconst_null
    //   45: invokevirtual 143	com/urbanairship/UrbanAirshipResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   48: astore_1
    //   49: aload_1
    //   50: astore_3
    //   51: aload_0
    //   52: monitorexit
    //   53: aload_1
    //   54: ifnull +66 -> 120
    //   57: aload_2
    //   58: astore_3
    //   59: aload_1
    //   60: astore_2
    //   61: aload_1
    //   62: invokeinterface 149 1 0
    //   67: ifeq +13 -> 80
    //   70: aload_1
    //   71: astore_2
    //   72: aload_1
    //   73: iconst_0
    //   74: invokeinterface 153 2 0
    //   79: astore_3
    //   80: aload_1
    //   81: astore_2
    //   82: aload_0
    //   83: aload_3
    //   84: invokespecial 124	com/urbanairship/PreferenceDataStore$Preference:setValue	(Ljava/lang/String;)V
    //   87: aload_1
    //   88: ifnull +9 -> 97
    //   91: aload_1
    //   92: invokeinterface 156 1 0
    //   97: return
    //   98: astore_1
    //   99: aconst_null
    //   100: astore_2
    //   101: aload_2
    //   102: astore_3
    //   103: aload_0
    //   104: monitorexit
    //   105: aload_1
    //   106: athrow
    //   107: astore_1
    //   108: aload_2
    //   109: ifnull +9 -> 118
    //   112: aload_2
    //   113: invokeinterface 156 1 0
    //   118: aload_1
    //   119: athrow
    //   120: aload_1
    //   121: astore_2
    //   122: new 79	java/lang/StringBuilder
    //   125: dup
    //   126: invokespecial 80	java/lang/StringBuilder:<init>	()V
    //   129: ldc -98
    //   131: invokevirtual 86	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   134: aload_0
    //   135: getfield 24	com/urbanairship/PreferenceDataStore$Preference:key	Ljava/lang/String;
    //   138: invokevirtual 86	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   141: ldc -96
    //   143: invokevirtual 86	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   146: ldc -94
    //   148: invokevirtual 86	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   151: invokevirtual 90	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   154: invokestatic 165	com/urbanairship/Logger:debug	(Ljava/lang/String;)V
    //   157: goto -70 -> 87
    //   160: astore_1
    //   161: aconst_null
    //   162: astore_2
    //   163: goto -55 -> 108
    //   166: astore_1
    //   167: aload_3
    //   168: astore_2
    //   169: goto -68 -> 101
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	172	0	this	Preference
    //   11	81	1	localObject1	Object
    //   98	8	1	localObject2	Object
    //   107	14	1	localObject3	Object
    //   160	1	1	localObject4	Object
    //   166	1	1	localObject5	Object
    //   1	168	2	localObject6	Object
    //   15	153	3	localObject7	Object
    //   20	22	4	str	String
    // Exception table:
    //   from	to	target	type
    //   4	49	98	finally
    //   61	70	107	finally
    //   72	80	107	finally
    //   82	87	107	finally
    //   105	107	107	finally
    //   122	157	107	finally
    //   2	4	160	finally
    //   51	53	166	finally
    //   103	105	166	finally
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.PreferenceDataStore.Preference
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */