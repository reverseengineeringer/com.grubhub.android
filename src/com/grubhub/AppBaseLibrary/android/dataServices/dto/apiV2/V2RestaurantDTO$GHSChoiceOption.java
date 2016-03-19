package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2;

import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSAmount;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIFoodMenuDataModel.GHSIChoiceGroup;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIFoodMenuDataModel.GHSIOption;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

class V2RestaurantDTO$GHSChoiceOption
  implements GHSIFoodMenuDataModel.GHSIOption
{
  private ArrayList<V2RestaurantDTO.GHSChoiceCategory> choice_category_list;
  private String description;
  private String id;
  private GHSAmount price;
  private Map<String, GHSAmount> price_changes;
  
  public String getOptionDescription()
  {
    return description;
  }
  
  public String getOptionId()
  {
    return id;
  }
  
  public Float getOptionPrice()
  {
    if (price != null) {
      return price.getAmount();
    }
    return Float.valueOf(0.0F);
  }
  
  public GHSIFoodMenuDataModel.GHSIChoiceGroup getSubOptionChoiceGroupById(String paramString)
  {
    int j = 1;
    int i;
    if (paramString != null)
    {
      i = 1;
      if (choice_category_list == null) {
        break label84;
      }
    }
    for (;;)
    {
      if (((i & j) == 0) || (choice_category_list.isEmpty())) {
        break label89;
      }
      Iterator localIterator = choice_category_list.iterator();
      GHSIFoodMenuDataModel.GHSIChoiceGroup localGHSIChoiceGroup;
      do
      {
        if (!localIterator.hasNext()) {
          break;
        }
        localGHSIChoiceGroup = (GHSIFoodMenuDataModel.GHSIChoiceGroup)localIterator.next();
      } while (!localGHSIChoiceGroup.getChoiceId().equals(paramString));
      return localGHSIChoiceGroup;
      i = 0;
      break;
      label84:
      j = 0;
    }
    label89:
    return null;
  }
  
  public ArrayList<GHSIFoodMenuDataModel.GHSIChoiceGroup> getSubOptionChoiceGroups()
  {
    ArrayList localArrayList = new ArrayList();
    if ((choice_category_list != null) && (!choice_category_list.isEmpty())) {
      localArrayList.addAll(choice_category_list);
    }
    return localArrayList;
  }
  
  public Float getVariationalPrice(String paramString)
  {
    if ((price_changes == null) || (!price_changes.containsKey(paramString)) || (price_changes.get(paramString) == null)) {
      return null;
    }
    return ((GHSAmount)price_changes.get(paramString)).getAmount();
  }
  
  public boolean hasPriceDependency()
  {
    return (price_changes != null) && (price_changes.size() > 0);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2RestaurantDTO.GHSChoiceOption
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */