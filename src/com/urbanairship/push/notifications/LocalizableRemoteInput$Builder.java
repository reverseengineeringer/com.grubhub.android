package com.urbanairship.push.notifications;

import android.os.Bundle;

public final class LocalizableRemoteInput$Builder
{
  private boolean allowFreeFormInput = false;
  private int[] choices;
  private final Bundle extras = new Bundle();
  private int labelId;
  private final String resultKey;
  
  public LocalizableRemoteInput$Builder(String paramString)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("Result key can't be null");
    }
    resultKey = paramString;
  }
  
  public Builder addExtras(Bundle paramBundle)
  {
    if (paramBundle != null) {
      extras.putAll(paramBundle);
    }
    return this;
  }
  
  public LocalizableRemoteInput build()
  {
    return new LocalizableRemoteInput(resultKey, labelId, choices, allowFreeFormInput, extras, null);
  }
  
  public Builder setAllowFreeFormInput(boolean paramBoolean)
  {
    allowFreeFormInput = paramBoolean;
    return this;
  }
  
  public Builder setChoices(int[] paramArrayOfInt)
  {
    choices = paramArrayOfInt;
    return this;
  }
  
  public Builder setLabel(int paramInt)
  {
    labelId = paramInt;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.push.notifications.LocalizableRemoteInput.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */