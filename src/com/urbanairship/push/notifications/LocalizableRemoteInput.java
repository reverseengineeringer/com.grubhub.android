package com.urbanairship.push.notifications;

import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.cv;
import android.support.v4.app.cw;

public class LocalizableRemoteInput
{
  private final boolean allowFreeFormInput;
  private final int[] choices;
  private final Bundle extras;
  private final int labelId;
  private final String resultKey;
  
  private LocalizableRemoteInput(String paramString, int paramInt, int[] paramArrayOfInt, boolean paramBoolean, Bundle paramBundle)
  {
    resultKey = paramString;
    labelId = paramInt;
    choices = paramArrayOfInt;
    allowFreeFormInput = paramBoolean;
    extras = paramBundle;
  }
  
  public cv createRemoteInput(Context paramContext)
  {
    cw localcw = new cw(resultKey).a(extras);
    if (choices != null)
    {
      CharSequence[] arrayOfCharSequence = new CharSequence[choices.length];
      int i = 0;
      while (i < choices.length)
      {
        arrayOfCharSequence[i] = paramContext.getText(choices[i]);
        i += 1;
      }
      localcw.a(arrayOfCharSequence);
    }
    if (labelId >= 0) {
      localcw.a(paramContext.getText(labelId));
    }
    return localcw.a();
  }
  
  public boolean getAllowFreeFormInput()
  {
    return allowFreeFormInput;
  }
  
  public int[] getChoices()
  {
    return choices;
  }
  
  public Bundle getExtras()
  {
    return extras;
  }
  
  public int getLabel()
  {
    return labelId;
  }
  
  public String getResultKey()
  {
    return resultKey;
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.push.notifications.LocalizableRemoteInput
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */