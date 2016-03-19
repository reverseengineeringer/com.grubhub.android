package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2;

import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSAmount;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIFoodMenuDataModel.GHSIChoiceGroup;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIFoodMenuDataModel.GHSIMenuItem;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIFoodMenuDataModel.GHSIOption;
import java.util.ArrayList;
import java.util.Iterator;

public class V2RestaurantDTO$GHSMenuItem
  implements GHSIFoodMenuDataModel.GHSIMenuItem
{
  private static String MENUITEM_POPULAR_STRING = "Popular";
  private boolean available;
  private ArrayList<V2RestaurantDTO.GHSChoiceCategory> choice_category_list;
  private boolean combinable_with_coupons;
  private String description;
  private boolean has_required_choices;
  private String id;
  private boolean item_coupon;
  private Float item_coupon_order_minimum;
  private String name;
  private boolean popular;
  private GHSAmount price;
  private Integer sequence;
  private ArrayList<V2RestaurantDTO.GHSMenuItem.GHSTagList> tag_list;
  private Float tax;
  
  public ArrayList<String> getItemTags()
  {
    ArrayList localArrayList = new ArrayList();
    if (tag_list != null)
    {
      Iterator localIterator = tag_list.iterator();
      while (localIterator.hasNext()) {
        localArrayList.add(nextname);
      }
    }
    return localArrayList;
  }
  
  public GHSIFoodMenuDataModel.GHSIChoiceGroup getMenuItemChoiceGroupById(String paramString)
  {
    Iterator localIterator = getMenuItemChoiceGroups().iterator();
    while (localIterator.hasNext())
    {
      GHSIFoodMenuDataModel.GHSIChoiceGroup localGHSIChoiceGroup = (GHSIFoodMenuDataModel.GHSIChoiceGroup)localIterator.next();
      if (localGHSIChoiceGroup.getChoiceId().equals(paramString)) {
        return localGHSIChoiceGroup;
      }
    }
    return null;
  }
  
  public GHSIFoodMenuDataModel.GHSIOption getMenuItemChoiceGroupOption(String paramString)
  {
    if (paramString != null)
    {
      Iterator localIterator = getMenuItemChoiceGroups().iterator();
      while (localIterator.hasNext())
      {
        GHSIFoodMenuDataModel.GHSIOption localGHSIOption = ((GHSIFoodMenuDataModel.GHSIChoiceGroup)localIterator.next()).getOptionById(paramString);
        if (localGHSIOption != null) {
          return localGHSIOption;
        }
      }
    }
    return null;
  }
  
  public ArrayList<GHSIFoodMenuDataModel.GHSIChoiceGroup> getMenuItemChoiceGroups()
  {
    ArrayList localArrayList = new ArrayList();
    if ((choice_category_list != null) && (!choice_category_list.isEmpty())) {
      localArrayList.addAll(choice_category_list);
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
    if (price != null) {
      return price.getAmount();
    }
    return Float.valueOf(0.0F);
  }
  
  public Float getOrderItemMinimum()
  {
    return item_coupon_order_minimum;
  }
  
  public boolean hasItemCoupon()
  {
    return item_coupon;
  }
  
  public boolean hasRequiredChoicesWithExtraCharges()
  {
    return has_required_choices;
  }
  
  public boolean isCombinableWithCoupons()
  {
    return combinable_with_coupons;
  }
  
  public boolean isMenuItemAvailableNow()
  {
    return available;
  }
  
  public boolean isPopular()
  {
    return popular;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2RestaurantDTO.GHSMenuItem
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */