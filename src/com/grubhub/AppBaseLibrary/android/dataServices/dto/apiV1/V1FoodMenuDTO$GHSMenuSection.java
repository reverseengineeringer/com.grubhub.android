package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1;

import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIFoodMenuDataModel.GHSIMenuItem;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIFoodMenuDataModel.GHSIMenuSection;
import java.util.ArrayList;
import java.util.Iterator;

public class V1FoodMenuDTO$GHSMenuSection
  implements GHSIFoodMenuDataModel.GHSIMenuSection
{
  private String description;
  private String id;
  private V1FoodMenuDTO.GHMenuItems items;
  private String name;
  
  public String getMenuSectionDescription()
  {
    return description;
  }
  
  public String getMenuSectionId()
  {
    return id;
  }
  
  public ArrayList<GHSIFoodMenuDataModel.GHSIMenuItem> getMenuSectionMenuItems()
  {
    ArrayList localArrayList = new ArrayList();
    if ((items != null) && (V1FoodMenuDTO.GHMenuItems.access$300(items) != null)) {
      localArrayList.addAll(V1FoodMenuDTO.GHMenuItems.access$300(items));
    }
    return localArrayList;
  }
  
  public String getMenuSectionName()
  {
    return name;
  }
  
  public boolean hasMenuItemsAvailableNow()
  {
    if ((items != null) && (V1FoodMenuDTO.GHMenuItems.access$300(items) != null))
    {
      Iterator localIterator = V1FoodMenuDTO.GHMenuItems.access$300(items).iterator();
      while (localIterator.hasNext()) {
        if (((GHSIFoodMenuDataModel.GHSIMenuItem)localIterator.next()).isMenuItemAvailableNow()) {
          return true;
        }
      }
    }
    return false;
  }
  
  public void setMenuSectionMenuItems(ArrayList<GHSIFoodMenuDataModel.GHSIMenuItem> paramArrayList)
  {
    items = new V1FoodMenuDTO.GHMenuItems(null);
    V1FoodMenuDTO.GHMenuItems.access$302(items, new ArrayList());
    paramArrayList = paramArrayList.iterator();
    while (paramArrayList.hasNext())
    {
      GHSIFoodMenuDataModel.GHSIMenuItem localGHSIMenuItem = (GHSIFoodMenuDataModel.GHSIMenuItem)paramArrayList.next();
      V1FoodMenuDTO.GHMenuItems.access$300(items).add((V1FoodMenuDTO.GHSMenuItem)localGHSIMenuItem);
    }
  }
  
  public void setMenuSectionName(String paramString)
  {
    name = paramString;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1.V1FoodMenuDTO.GHSMenuSection
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */