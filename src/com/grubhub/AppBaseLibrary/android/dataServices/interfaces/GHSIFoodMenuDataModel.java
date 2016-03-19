package com.grubhub.AppBaseLibrary.android.dataServices.interfaces;

import android.content.Context;
import java.util.ArrayList;
import java.util.Date;

public abstract interface GHSIFoodMenuDataModel
{
  public static final int MAX_PAST_ORDERS = 10;
  public static final int MAX_POPULAR_ITEMS = 10;
  public static final String PAST_ORDERS_CATEGORY_NAME = "Previously Ordered";
  public static final int PAST_ORDERS_DATE_RESTRICTION = -6;
  public static final String POPULAR_CATEGORY_NAME = "Most Popular";
  
  public abstract ArrayList<String> findAllMenuSectionNames();
  
  public abstract Double getExpirationTimeMillis();
  
  public abstract Date getGenerationDate();
  
  public abstract GHSIFoodMenuDataModel.GHSIMenuItem getMenuItemById(String paramString);
  
  public abstract GHSIFoodMenuDataModel.GHSIChoiceGroup getMenuItemChoiceGroup(String paramString1, String paramString2);
  
  public abstract String getMenuItemIdBySectionPosition(int paramInt1, int paramInt2);
  
  public abstract GHSIFoodMenuDataModel.GHSIOption getMenuItemOptionById(GHSIFoodMenuDataModel.GHSIMenuItem paramGHSIMenuItem, String paramString);
  
  public abstract ArrayList<GHSIFoodMenuDataModel.GHSIMenuSection> getMenuSections();
  
  public abstract String getRestaurantId();
  
  public abstract String getRestaurantName();
  
  public abstract boolean isMenuItemPopular(int paramInt1, int paramInt2);
  
  public abstract GHSIFoodMenuDataModel postGSONProcessData(Context paramContext);
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIFoodMenuDataModel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */