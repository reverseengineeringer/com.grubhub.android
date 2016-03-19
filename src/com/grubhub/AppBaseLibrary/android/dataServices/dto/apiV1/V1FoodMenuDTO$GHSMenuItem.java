package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1;

import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIFoodMenuDataModel.GHSIChoiceGroup;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIFoodMenuDataModel.GHSIMenuItem;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIFoodMenuDataModel.GHSIOption;
import java.util.ArrayList;
import java.util.Iterator;

public class V1FoodMenuDTO$GHSMenuItem
  implements GHSIFoodMenuDataModel.GHSIMenuItem
{
  private V1FoodMenuDTO.GHSAvailability availability;
  private V1FoodMenuDTO.GHAvailableChoices choices;
  private Boolean combinableWithCoupons;
  private String description;
  private String id;
  private Boolean itemCoupon;
  private String name;
  private Float orderMinimum;
  private Float price;
  private Float priceMinimum;
  private V1FoodMenuDTO.GHTags tags;
  
  public V1FoodMenuDTO$GHSMenuItem(V1FoodMenuDTO paramV1FoodMenuDTO) {}
  
  private boolean hasTag(String paramString)
  {
    Iterator localIterator = V1FoodMenuDTO.GHTags.access$600(tags).iterator();
    while (localIterator.hasNext()) {
      if (((String)localIterator.next()).equalsIgnoreCase(paramString)) {
        return true;
      }
    }
    return false;
  }
  
  public ArrayList<String> getItemTags()
  {
    ArrayList localArrayList = new ArrayList();
    if ((tags != null) && (V1FoodMenuDTO.GHTags.access$600(tags) != null)) {
      localArrayList.addAll(V1FoodMenuDTO.GHTags.access$600(tags));
    }
    return localArrayList;
  }
  
  public GHSIFoodMenuDataModel.GHSIChoiceGroup getMenuItemChoiceGroupById(String paramString)
  {
    return null;
  }
  
  public GHSIFoodMenuDataModel.GHSIOption getMenuItemChoiceGroupOption(String paramString)
  {
    Iterator localIterator = null;
    Object localObject1 = null;
    Object localObject2 = localIterator;
    if (choices != null)
    {
      ArrayList localArrayList = V1FoodMenuDTO.GHAvailableChoices.access$700(choices);
      localObject2 = localIterator;
      if (localArrayList != null)
      {
        localIterator = localArrayList.iterator();
        localObject2 = localObject1;
        if (localIterator.hasNext())
        {
          localObject2 = V1FoodMenuDTO.GHChoiceRef.access$900((V1FoodMenuDTO.GHChoiceRef)localIterator.next());
          localObject2 = this$0.getMenuItemChoiceGroup("", (String)localObject2).getOptionById(paramString);
          if (localObject2 == null) {
            break label93;
          }
          localObject1 = localObject2;
        }
      }
    }
    label93:
    for (;;)
    {
      break;
      return (GHSIFoodMenuDataModel.GHSIOption)localObject2;
    }
  }
  
  public ArrayList<GHSIFoodMenuDataModel.GHSIChoiceGroup> getMenuItemChoiceGroups()
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = V1FoodMenuDTO.GHAvailableChoices.access$700(choices).iterator();
    while (localIterator.hasNext())
    {
      Object localObject = (V1FoodMenuDTO.GHChoiceRef)localIterator.next();
      localObject = this$0.getMenuItemChoiceGroup("", V1FoodMenuDTO.GHChoiceRef.access$800((V1FoodMenuDTO.GHChoiceRef)localObject));
      if (localObject != null) {
        localArrayList.add(localObject);
      }
    }
    return localArrayList;
  }
  
  public String getMenuItemDescription()
  {
    return description;
  }
  
  public String getMenuItemId()
  {
    return id;
  }
  
  public String getMenuItemName()
  {
    return name;
  }
  
  public Float getMenuItemPrice()
  {
    return price;
  }
  
  public Float getOrderItemMinimum()
  {
    return orderMinimum;
  }
  
  public boolean hasItemCoupon()
  {
    return itemCoupon.booleanValue();
  }
  
  public boolean hasRequiredChoicesWithExtraCharges()
  {
    Object localObject1 = getMenuItemChoiceGroups();
    if (localObject1 != null)
    {
      GHSIFoodMenuDataModel.GHSIOption localGHSIOption;
      do
      {
        localObject1 = ((ArrayList)localObject1).iterator();
        Object localObject2;
        while (!((Iterator)localObject2).hasNext())
        {
          do
          {
            do
            {
              if (!((Iterator)localObject1).hasNext()) {
                break;
              }
              localObject2 = (GHSIFoodMenuDataModel.GHSIChoiceGroup)((Iterator)localObject1).next();
            } while ((localObject2 == null) || (((GHSIFoodMenuDataModel.GHSIChoiceGroup)localObject2).getMinimum() <= 0) || (((GHSIFoodMenuDataModel.GHSIChoiceGroup)localObject2).getOptions() == null) || (((GHSIFoodMenuDataModel.GHSIChoiceGroup)localObject2).getOptions().isEmpty()));
            localObject2 = ((GHSIFoodMenuDataModel.GHSIChoiceGroup)localObject2).getOptions();
          } while (localObject2 == null);
          localObject2 = ((ArrayList)localObject2).iterator();
        }
        localGHSIOption = (GHSIFoodMenuDataModel.GHSIOption)((Iterator)localObject2).next();
      } while ((localGHSIOption.getOptionPrice() == null) || (localGHSIOption.getOptionPrice().floatValue() <= 0.0F));
      return true;
    }
    return false;
  }
  
  public boolean isCombinableWithCoupons()
  {
    return combinableWithCoupons.booleanValue();
  }
  
  public boolean isMenuItemAvailableNow()
  {
    return true;
  }
  
  public boolean isPopular()
  {
    return hasTag("POPULAR");
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1.V1FoodMenuDTO.GHSMenuItem
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */