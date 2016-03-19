package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2;

import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIFoodMenuDataModel.GHSIMenuItem;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIFoodMenuDataModel.GHSIMenuSection;
import java.util.ArrayList;
import java.util.Iterator;

class V2RestaurantDTO$GHSMenuCategory
  implements GHSIFoodMenuDataModel.GHSIMenuSection
{
  private String id;
  private ArrayList<V2RestaurantDTO.GHSMenuItem> menu_item_list;
  private String name;
  
  public String getMenuSectionDescription()
  {
    return "";
  }
  
  public String getMenuSectionId()
  {
    return id;
  }
  
  public ArrayList<GHSIFoodMenuDataModel.GHSIMenuItem> getMenuSectionMenuItems()
  {
    ArrayList localArrayList = new ArrayList();
    if ((menu_item_list != null) && (!menu_item_list.isEmpty()))
    {
      Iterator localIterator = menu_item_list.iterator();
      while (localIterator.hasNext())
      {
        GHSIFoodMenuDataModel.GHSIMenuItem localGHSIMenuItem = (GHSIFoodMenuDataModel.GHSIMenuItem)localIterator.next();
        if (localGHSIMenuItem.isMenuItemAvailableNow()) {
          localArrayList.add(localGHSIMenuItem);
        }
      }
    }
    return localArrayList;
  }
  
  public String getMenuSectionName()
  {
    return name;
  }
  
  public boolean hasMenuItemsAvailableNow()
  {
    if ((menu_item_list != null) && (!menu_item_list.isEmpty()))
    {
      Iterator localIterator = menu_item_list.iterator();
      while (localIterator.hasNext())
      {
        GHSIFoodMenuDataModel.GHSIMenuItem localGHSIMenuItem = (GHSIFoodMenuDataModel.GHSIMenuItem)localIterator.next();
        if ((localGHSIMenuItem != null) && (localGHSIMenuItem.isMenuItemAvailableNow())) {
          return true;
        }
      }
    }
    return false;
  }
  
  public void setMenuSectionMenuItems(ArrayList<GHSIFoodMenuDataModel.GHSIMenuItem> paramArrayList)
  {
    menu_item_list = new ArrayList();
    paramArrayList = paramArrayList.iterator();
    while (paramArrayList.hasNext())
    {
      GHSIFoodMenuDataModel.GHSIMenuItem localGHSIMenuItem = (GHSIFoodMenuDataModel.GHSIMenuItem)paramArrayList.next();
      menu_item_list.add((V2RestaurantDTO.GHSMenuItem)localGHSIMenuItem);
    }
  }
  
  public void setMenuSectionName(String paramString)
  {
    name = paramString;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2RestaurantDTO.GHSMenuCategory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */