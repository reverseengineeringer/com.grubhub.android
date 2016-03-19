package com.urbanairship;

import android.database.ContentObserver;
import android.os.Handler;
import java.util.concurrent.Executor;

class PreferenceDataStore$Preference$2
  extends ContentObserver
{
  PreferenceDataStore$Preference$2(PreferenceDataStore.Preference paramPreference, Handler paramHandler)
  {
    super(paramHandler);
  }
  
  public void onChange(boolean paramBoolean)
  {
    super.onChange(paramBoolean);
    Logger.verbose("PreferenceDataStore - Preference updated:" + PreferenceDataStore.Preference.access$300(this$1));
    this$1.this$0.executor.execute(new Runnable()
    {
      public void run()
      {
        this$1.syncValue();
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.PreferenceDataStore.Preference.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */