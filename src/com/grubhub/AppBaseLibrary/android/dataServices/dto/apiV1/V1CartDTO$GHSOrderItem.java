package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1;

import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel.GHSIItemOptionSelection;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel.GHSIOrderItem;
import com.grubhub.AppBaseLibrary.android.utils.e.a;
import java.util.ArrayList;

public class V1CartDTO$GHSOrderItem
  implements GHSICartDataModel.GHSIOrderItem
{
  private boolean combinableWithCoupons;
  private String id;
  private String instructions;
  private boolean itemCoupon;
  private String itemId;
  private String name;
  private String price;
  private Integer quantity;
  private V1CartDTO.GHSSelections selections;
  
  public V1CartDTO$GHSOrderItem(V1CartDTO paramV1CartDTO) {}
  
  public Float getDinerTotal()
  {
    return null;
  }
  
  public Integer getDinerTotalInCents()
  {
    return null;
  }
  
  public String getId()
  {
    return id;
  }
  
  public String getItemName()
  {
    return name;
  }
  
  public Float getItemPrice()
  {
    try
    {
      float f = Float.parseFloat(price.replace(",", ""));
      return Float.valueOf(f);
    }
    catch (NumberFormatException localNumberFormatException)
    {
      a.b(V1CartDTO.access$400(), localNumberFormatException.getMessage());
    }
    return Float.valueOf(0.0F);
  }
  
  public Integer getItemQuantity()
  {
    return quantity;
  }
  
  public String getItemSpecialInstructions()
  {
    return instructions;
  }
  
  public String getOriginalItemId()
  {
    return itemId;
  }
  
  public String getRestaurantId()
  {
    return null;
  }
  
  public String getRestaurantName()
  {
    return null;
  }
  
  public ArrayList<GHSICartDataModel.GHSIItemOptionSelection> getSelectedItemOptions()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.addAll(V1CartDTO.GHSSelections.access$500(selections));
    return localArrayList;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1.V1CartDTO.GHSOrderItem
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */