package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2;

import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIMenuItemUpdateModel.GHSICartOptions;
import java.util.List;

public class V2MenuItemUpdateDTO$CartLineOptionData
  implements GHSIMenuItemUpdateModel.GHSICartOptions
{
  private String id;
  private List<String> sub_option_ids;
  
  public V2MenuItemUpdateDTO$CartLineOptionData(V2MenuItemUpdateDTO paramV2MenuItemUpdateDTO) {}
  
  public V2MenuItemUpdateDTO$CartLineOptionData(V2MenuItemUpdateDTO paramV2MenuItemUpdateDTO, GHSIMenuItemUpdateModel.GHSICartOptions paramGHSICartOptions)
  {
    if (paramGHSICartOptions != null)
    {
      setId(paramGHSICartOptions.getId());
      setSubOptionIds(paramGHSICartOptions.getSubOptionIds());
    }
  }
  
  public String getId()
  {
    return id;
  }
  
  public List<String> getSubOptionIds()
  {
    return sub_option_ids;
  }
  
  public void setId(String paramString)
  {
    id = paramString;
  }
  
  public void setSubOptionIds(List<String> paramList)
  {
    sub_option_ids = paramList;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2MenuItemUpdateDTO.CartLineOptionData
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */