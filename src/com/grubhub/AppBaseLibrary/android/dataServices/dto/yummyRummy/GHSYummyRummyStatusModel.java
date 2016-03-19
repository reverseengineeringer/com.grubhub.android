package com.grubhub.AppBaseLibrary.android.dataServices.dto.yummyRummy;

import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.yummyRummy.GHSIYummyRummyStatusModel;

public class GHSYummyRummyStatusModel
  implements GHSIYummyRummyStatusModel
{
  private Integer status;
  
  public boolean displayYummyRummy()
  {
    return (status != null) && (status.intValue() == 0);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.yummyRummy.GHSYummyRummyStatusModel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */