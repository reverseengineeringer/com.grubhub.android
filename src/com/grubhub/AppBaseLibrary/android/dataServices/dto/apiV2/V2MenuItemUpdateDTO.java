package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2;

import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIMenuItemUpdateModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIMenuItemUpdateModel.GHSICartOptions;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class V2MenuItemUpdateDTO
  implements GHSIMenuItemUpdateModel
{
  private Boolean apply_free_grub;
  private String menu_item_id;
  private List<V2MenuItemUpdateDTO.CartLineOptionData> options;
  private int quantity;
  private String restaurant_id;
  private String special_instructions;
  
  public V2MenuItemUpdateDTO() {}
  
  public V2MenuItemUpdateDTO(GHSIMenuItemUpdateModel paramGHSIMenuItemUpdateModel)
  {
    if (paramGHSIMenuItemUpdateModel != null)
    {
      setMenuItemId(paramGHSIMenuItemUpdateModel.getMenuItemId());
      setSpecialInstructions(paramGHSIMenuItemUpdateModel.getSpecialInstructions());
      setRestaurantId(paramGHSIMenuItemUpdateModel.getRestaurantId());
      setApplyFreeGrub(paramGHSIMenuItemUpdateModel.getApplyFreeGrub());
      setQuantity(paramGHSIMenuItemUpdateModel.getQuantity());
      if (paramGHSIMenuItemUpdateModel.getOptions() != null)
      {
        ArrayList localArrayList = new ArrayList(paramGHSIMenuItemUpdateModel.getOptions().size());
        paramGHSIMenuItemUpdateModel = paramGHSIMenuItemUpdateModel.getOptions().iterator();
        while (paramGHSIMenuItemUpdateModel.hasNext()) {
          localArrayList.add(new V2MenuItemUpdateDTO.CartLineOptionData(this, (GHSIMenuItemUpdateModel.GHSICartOptions)paramGHSIMenuItemUpdateModel.next()));
        }
        setOptions(localArrayList);
      }
    }
  }
  
  public Boolean getApplyFreeGrub()
  {
    return apply_free_grub;
  }
  
  public String getMenuItemId()
  {
    return menu_item_id;
  }
  
  public List<GHSIMenuItemUpdateModel.GHSICartOptions> getOptions()
  {
    ArrayList localArrayList = new ArrayList();
    if (options != null) {
      localArrayList.addAll(options);
    }
    return localArrayList;
  }
  
  public int getQuantity()
  {
    return quantity;
  }
  
  public String getRestaurantId()
  {
    return restaurant_id;
  }
  
  public String getSpecialInstructions()
  {
    return special_instructions;
  }
  
  public void setApplyFreeGrub(Boolean paramBoolean)
  {
    apply_free_grub = paramBoolean;
  }
  
  public void setMenuItemId(String paramString)
  {
    menu_item_id = paramString;
  }
  
  public void setOptions(List<GHSIMenuItemUpdateModel.GHSICartOptions> paramList)
  {
    if ((paramList == null) || (paramList.isEmpty())) {
      return;
    }
    ArrayList localArrayList = new ArrayList(paramList.size());
    int i = 0;
    while (i < paramList.size())
    {
      V2MenuItemUpdateDTO.CartLineOptionData localCartLineOptionData = new V2MenuItemUpdateDTO.CartLineOptionData(this);
      localCartLineOptionData.setId(((GHSIMenuItemUpdateModel.GHSICartOptions)paramList.get(i)).getId());
      localCartLineOptionData.setSubOptionIds(((GHSIMenuItemUpdateModel.GHSICartOptions)paramList.get(i)).getSubOptionIds());
      localArrayList.add(localCartLineOptionData);
      i += 1;
    }
    options = localArrayList;
  }
  
  public void setQuantity(int paramInt)
  {
    quantity = paramInt;
  }
  
  public void setRestaurantId(String paramString)
  {
    restaurant_id = paramString;
  }
  
  public void setSpecialInstructions(String paramString)
  {
    special_instructions = paramString;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2MenuItemUpdateDTO
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */