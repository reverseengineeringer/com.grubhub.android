package com.urbanairship.push.notifications;

import android.support.v4.app.ba;
import android.support.v4.app.bb;
import android.support.v4.app.bc;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class NotificationActionButton$Builder
{
  private final String buttonId;
  private String description;
  private List<bc> extenders;
  private int iconId = 0;
  private boolean isForegroundAction = true;
  private int labelId = 0;
  private List<LocalizableRemoteInput> remoteInputs;
  
  public NotificationActionButton$Builder(String paramString)
  {
    buttonId = paramString;
  }
  
  public Builder addRemoteInput(LocalizableRemoteInput paramLocalizableRemoteInput)
  {
    if (remoteInputs == null) {
      remoteInputs = new ArrayList();
    }
    remoteInputs.add(paramLocalizableRemoteInput);
    return this;
  }
  
  public NotificationActionButton build()
  {
    Object localObject = new bb(iconId, null, null);
    if (extenders != null)
    {
      Iterator localIterator = extenders.iterator();
      while (localIterator.hasNext()) {
        ((bb)localObject).a((bc)localIterator.next());
      }
    }
    localObject = ((bb)localObject).a();
    return new NotificationActionButton(buttonId, a, labelId, description, ((ba)localObject).d(), isForegroundAction, remoteInputs, null);
  }
  
  public Builder extend(bc parambc)
  {
    if (extenders == null) {
      extenders = new ArrayList();
    }
    extenders.add(parambc);
    return this;
  }
  
  public Builder setDescription(String paramString)
  {
    description = paramString;
    return this;
  }
  
  public Builder setIcon(int paramInt)
  {
    iconId = paramInt;
    return this;
  }
  
  public Builder setLabel(int paramInt)
  {
    labelId = paramInt;
    return this;
  }
  
  public Builder setPerformsInForeground(boolean paramBoolean)
  {
    isForegroundAction = paramBoolean;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.push.notifications.NotificationActionButton.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */