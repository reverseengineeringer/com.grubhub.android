package com.grubhub.AppBaseLibrary.android.dataServices.dto;

import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRange;

public class GHSRange
  implements GHSIRange
{
  private int highValue;
  private int lowValue;
  
  public GHSRange(int paramInt1, int paramInt2)
  {
    lowValue = paramInt1;
    highValue = paramInt2;
  }
  
  public int getHighIntValue()
  {
    return highValue;
  }
  
  public int getLowIntValue()
  {
    return lowValue;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSRange
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */