package com.grubhub.AppBaseLibrary.android.dataServices.dto;

import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIMenuItemUpdateModel.GHSICartOptions;
import java.util.List;

public class GHSMenuItemUpdateModel$GHSCartOptionsModel
  implements GHSIMenuItemUpdateModel.GHSICartOptions
{
  private String id;
  private List<String> subOptionIds;
  
  public String getId()
  {
    return id;
  }
  
  public List<String> getSubOptionIds()
  {
    return subOptionIds;
  }
  
  public void setId(String paramString)
  {
    id = paramString;
  }
  
  public void setSubOptionIds(List<String> paramList)
  {
    subOptionIds = paramList;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSMenuItemUpdateModel.GHSCartOptionsModel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */