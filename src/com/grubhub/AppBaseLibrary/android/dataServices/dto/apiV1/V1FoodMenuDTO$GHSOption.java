package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1;

import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIFoodMenuDataModel.GHSIChoiceGroup;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIFoodMenuDataModel.GHSIOption;
import java.util.ArrayList;
import java.util.Iterator;

public class V1FoodMenuDTO$GHSOption
  implements GHSIFoodMenuDataModel.GHSIOption
{
  private V1FoodMenuDTO.GHAvailableChoices choices;
  private String description;
  private String id;
  private Float optionPrice;
  private GHSIFoodMenuDataModel.GHSIChoiceGroup parent;
  private V1FoodMenuDTO.GHSPriceChanges priceChanges;
  
  public V1FoodMenuDTO$GHSOption(V1FoodMenuDTO paramV1FoodMenuDTO) {}
  
  private ArrayList<GHSIFoodMenuDataModel.GHSIChoiceGroup> getAvailableSubChoices(V1FoodMenuDTO paramV1FoodMenuDTO)
  {
    Iterator localIterator = null;
    Object localObject = localIterator;
    if (choices != null)
    {
      localObject = localIterator;
      if (V1FoodMenuDTO.GHAvailableChoices.access$700(choices) != null)
      {
        localObject = new ArrayList();
        localIterator = V1FoodMenuDTO.GHAvailableChoices.access$700(choices).iterator();
        while (localIterator.hasNext()) {
          ((ArrayList)localObject).add(paramV1FoodMenuDTO.getMenuItemChoiceGroup("", V1FoodMenuDTO.GHChoiceRef.access$800((V1FoodMenuDTO.GHChoiceRef)localIterator.next())));
        }
      }
    }
    return (ArrayList<GHSIFoodMenuDataModel.GHSIChoiceGroup>)localObject;
  }
  
  private ArrayList<String> getAvailableSubOptionIds()
  {
    Iterator localIterator = null;
    Object localObject = localIterator;
    if (choices != null)
    {
      localObject = localIterator;
      if (V1FoodMenuDTO.GHAvailableChoices.access$700(choices) != null)
      {
        localObject = new ArrayList();
        localIterator = V1FoodMenuDTO.GHAvailableChoices.access$700(choices).iterator();
        while (localIterator.hasNext()) {
          ((ArrayList)localObject).add(V1FoodMenuDTO.GHChoiceRef.access$800((V1FoodMenuDTO.GHChoiceRef)localIterator.next()));
        }
      }
    }
    return (ArrayList<String>)localObject;
  }
  
  private ArrayList<V1FoodMenuDTO.GHSPriceChange> getPriceChangeList(V1FoodMenuDTO paramV1FoodMenuDTO)
  {
    if (hasPriceDependency())
    {
      ArrayList localArrayList = priceChanges.optionRef;
      if ((V1FoodMenuDTO.access$1100(paramV1FoodMenuDTO) != null) && (access$1100choice != null))
      {
        paramV1FoodMenuDTO = access$1100choice.iterator();
        while (paramV1FoodMenuDTO.hasNext())
        {
          V1FoodMenuDTO.GHSChoice localGHSChoice = (V1FoodMenuDTO.GHSChoice)paramV1FoodMenuDTO.next();
          Iterator localIterator = localArrayList.iterator();
          while (localIterator.hasNext())
          {
            V1FoodMenuDTO.GHSPriceChange localGHSPriceChange = (V1FoodMenuDTO.GHSPriceChange)localIterator.next();
            GHSOption localGHSOption = localGHSChoice.getOptionById(id);
            if (localGHSOption != null) {
              description = description;
            }
          }
        }
      }
      return localArrayList;
    }
    return null;
  }
  
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
    return optionPrice;
  }
  
  public GHSIFoodMenuDataModel.GHSIChoiceGroup getSubOptionChoiceGroupById(String paramString)
  {
    return null;
  }
  
  public ArrayList<GHSIFoodMenuDataModel.GHSIChoiceGroup> getSubOptionChoiceGroups()
  {
    return null;
  }
  
  public Float getVariationalPrice(String paramString)
  {
    return null;
  }
  
  public boolean hasPriceDependency()
  {
    return (priceChanges != null) && (priceChanges.optionRef != null);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1.V1FoodMenuDTO.GHSOption
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */