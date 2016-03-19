package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2;

import android.content.Context;
import android.content.res.Resources;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.dataServices.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSAddressDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSAmount;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSRange;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAddressDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAmount;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICouponListDataModel.GHSICouponDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIFoodMenuDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIFoodMenuDataModel.GHSIChoiceGroup;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIFoodMenuDataModel.GHSIMenuItem;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIFoodMenuDataModel.GHSIMenuSection;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIFoodMenuDataModel.GHSIOption;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRange;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantDataModel.GHSIDateTime;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantDataModel.GHSIFutureOrderInfo;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.pastOrders.GHSIPastOrderDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.pastOrders.GHSIPastOrderDataModel.GHSIPastOrderItem;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.pastOrders.GHSIPastOrderListDataModel;
import com.grubhub.AppBaseLibrary.android.order.g;
import com.grubhub.AppBaseLibrary.android.order.j;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;

public class V2RestaurantDTO
  implements GHSIFoodMenuDataModel, GHSIRestaurantDataModel
{
  private static final int CONDENSED_DESCRIPTION_CUISINE_LIMIT = 2;
  private static final String URL_IMAGE_UMAMI = "http://s1.seamless.com/-/ri/vl/";
  private boolean hasSpecialCategories = false;
  private V2RestaurantDTO.GHSRestaurant restaurant;
  private V2RestaurantDTO.GHSAvailability restaurant_availability;
  
  private V2RestaurantDTO.GHSMenuCategory createNewMenuCategory(String paramString, ArrayList<GHSIFoodMenuDataModel.GHSIMenuItem> paramArrayList)
  {
    V2RestaurantDTO.GHSMenuCategory localGHSMenuCategory = new V2RestaurantDTO.GHSMenuCategory(null);
    localGHSMenuCategory.setMenuSectionName(paramString);
    localGHSMenuCategory.setMenuSectionMenuItems(paramArrayList);
    return localGHSMenuCategory;
  }
  
  private boolean isOpenForFutureOrder(g paramg)
  {
    if ((restaurant_availability == null) || (V2RestaurantDTO.GHSAvailability.access$2200(restaurant_availability) == null)) {
      return false;
    }
    if (paramg == g.DELIVERY) {
      return V2RestaurantDTO.GHSAvailability.access$2200(restaurant_availability).isOpenOrderSendTimeDelivery();
    }
    return V2RestaurantDTO.GHSAvailability.access$2200(restaurant_availability).isOpenOrderSendTimePickup();
  }
  
  public ArrayList<String> findAllMenuSectionNames()
  {
    ArrayList localArrayList = new ArrayList();
    Object localObject = getMenuSections();
    if (localObject != null)
    {
      localObject = ((ArrayList)localObject).iterator();
      while (((Iterator)localObject).hasNext()) {
        localArrayList.add(((GHSIFoodMenuDataModel.GHSIMenuSection)((Iterator)localObject).next()).getMenuSectionName());
      }
    }
    return localArrayList;
  }
  
  public ArrayList<GHSICouponListDataModel.GHSICouponDataModel> getCoupons()
  {
    if (restaurant != null) {
      return new ArrayList(V2RestaurantDTO.GHSRestaurant.access$4100(restaurant));
    }
    return null;
  }
  
  public GHSIAmount getDeliveryFeeExact()
  {
    if ((restaurant_availability != null) && (V2RestaurantDTO.GHSAvailability.access$4200(restaurant_availability) != null)) {
      return V2RestaurantDTO.GHSAvailability.access$4200(restaurant_availability);
    }
    return null;
  }
  
  public GHSIAmount getDeliveryFeeMaximum()
  {
    if ((restaurant_availability != null) && (V2RestaurantDTO.GHSAvailability.access$4200(restaurant_availability) != null)) {
      return V2RestaurantDTO.GHSAvailability.access$4200(restaurant_availability);
    }
    return null;
  }
  
  public GHSIAmount getDeliveryFeeMinimum()
  {
    if ((restaurant_availability != null) && (V2RestaurantDTO.GHSAvailability.access$4300(restaurant_availability) != null)) {
      return V2RestaurantDTO.GHSAvailability.access$4200(restaurant_availability);
    }
    return null;
  }
  
  public GHSIAmount getDeliveryMinimum()
  {
    if ((restaurant_availability != null) && (V2RestaurantDTO.GHSAvailability.access$4400(restaurant_availability) != null)) {
      return V2RestaurantDTO.GHSAvailability.access$4400(restaurant_availability);
    }
    return new GHSAmount(Integer.valueOf(0), "");
  }
  
  public float getDistanceFromDinerLocationMiles()
  {
    if ((restaurant_availability != null) && (V2RestaurantDTO.GHSAvailability.access$3700(restaurant_availability) != null)) {
      return V2RestaurantDTO.GHSAvailability.access$3700(restaurant_availability).intValue() / 100.0F;
    }
    return 0.0F;
  }
  
  public GHSIRange getEstimatedDeliveryTime()
  {
    if ((restaurant_availability != null) && (V2RestaurantDTO.GHSAvailability.access$4500(restaurant_availability) != null)) {
      return new GHSRange(V2RestaurantDTO.GHSAvailability.access$4500(restaurant_availability).intValue(), V2RestaurantDTO.GHSAvailability.access$4500(restaurant_availability).intValue() + 10);
    }
    return new GHSRange(0, 0);
  }
  
  public GHSIRange getEstimatedPickupReadyTime()
  {
    if ((restaurant_availability != null) && (V2RestaurantDTO.GHSAvailability.access$4600(restaurant_availability) != null)) {
      return new GHSRange(V2RestaurantDTO.GHSAvailability.access$4600(restaurant_availability).intValue(), V2RestaurantDTO.GHSAvailability.access$4600(restaurant_availability).intValue() + 10);
    }
    return new GHSRange(0, 0);
  }
  
  public Double getExpirationTimeMillis()
  {
    return Double.valueOf(new Date().getTime() - 1.0D);
  }
  
  public GHSIRestaurantDataModel.GHSIFutureOrderInfo getFutureOrderInfo()
  {
    if (restaurant_availability == null) {
      return null;
    }
    return V2RestaurantDTO.GHSAvailability.access$2200(restaurant_availability);
  }
  
  public Date getGenerationDate()
  {
    return new Date();
  }
  
  public ArrayList<GHSIRestaurantDataModel.GHSIDateTime> getHoursOfOperation(g paramg)
  {
    ArrayList localArrayList = new ArrayList();
    if (restaurant_availability != null)
    {
      if ((paramg != g.PICKUP) || (V2RestaurantDTO.GHSAvailability.access$1300(restaurant_availability) == null) || (V2RestaurantDTO.GHSAvailability.access$1300(restaurant_availability).isEmpty())) {
        break label59;
      }
      localArrayList.addAll(V2RestaurantDTO.GHSAvailability.access$1300(restaurant_availability));
    }
    label59:
    while ((V2RestaurantDTO.GHSAvailability.access$1400(restaurant_availability) == null) || (V2RestaurantDTO.GHSAvailability.access$1400(restaurant_availability).isEmpty())) {
      return localArrayList;
    }
    localArrayList.addAll(V2RestaurantDTO.GHSAvailability.access$1400(restaurant_availability));
    return localArrayList;
  }
  
  public String getLatitude()
  {
    if (restaurant != null) {
      return V2RestaurantDTO.GHSRestaurant.access$900(restaurant);
    }
    return null;
  }
  
  public String getLongitude()
  {
    if (restaurant != null) {
      return V2RestaurantDTO.GHSRestaurant.access$1000(restaurant);
    }
    return null;
  }
  
  public GHSIFoodMenuDataModel.GHSIMenuItem getMenuItemById(String paramString)
  {
    Object localObject = getMenuSections();
    if (localObject != null)
    {
      GHSIFoodMenuDataModel.GHSIMenuItem localGHSIMenuItem;
      do
      {
        localObject = ((ArrayList)localObject).iterator();
        Iterator localIterator;
        while (!localIterator.hasNext())
        {
          if (!((Iterator)localObject).hasNext()) {
            break;
          }
          localIterator = ((GHSIFoodMenuDataModel.GHSIMenuSection)((Iterator)localObject).next()).getMenuSectionMenuItems().iterator();
        }
        localGHSIMenuItem = (GHSIFoodMenuDataModel.GHSIMenuItem)localIterator.next();
      } while (!localGHSIMenuItem.getMenuItemId().equals(paramString));
      return localGHSIMenuItem;
    }
    return null;
  }
  
  public GHSIFoodMenuDataModel.GHSIChoiceGroup getMenuItemChoiceGroup(String paramString1, String paramString2)
  {
    if ((paramString1 != null) && (paramString2 != null))
    {
      paramString1 = getMenuItemById(paramString1);
      if (paramString1 != null) {
        return paramString1.getMenuItemChoiceGroupById(paramString2);
      }
    }
    return null;
  }
  
  public String getMenuItemIdBySectionPosition(int paramInt1, int paramInt2)
  {
    ArrayList localArrayList = getMenuSections();
    if ((localArrayList != null) && (paramInt1 < localArrayList.size()))
    {
      localArrayList = ((GHSIFoodMenuDataModel.GHSIMenuSection)localArrayList.get(paramInt1)).getMenuSectionMenuItems();
      if ((localArrayList != null) && (paramInt2 < localArrayList.size())) {
        return ((GHSIFoodMenuDataModel.GHSIMenuItem)localArrayList.get(paramInt2)).getMenuItemId();
      }
    }
    return null;
  }
  
  public int getMenuItemMatchingCount()
  {
    return 0;
  }
  
  public GHSIFoodMenuDataModel.GHSIOption getMenuItemOptionById(GHSIFoodMenuDataModel.GHSIMenuItem paramGHSIMenuItem, String paramString)
  {
    if ((paramGHSIMenuItem != null) && (paramString != null)) {
      return paramGHSIMenuItem.getMenuItemChoiceGroupOption(paramString);
    }
    return null;
  }
  
  public ArrayList<GHSIFoodMenuDataModel.GHSIMenuSection> getMenuSections()
  {
    ArrayList localArrayList = new ArrayList();
    Object localObject1;
    Object localObject2;
    Object localObject3;
    if ((restaurant != null) && (V2RestaurantDTO.GHSRestaurant.access$4700(restaurant) != null) && (!V2RestaurantDTO.GHSRestaurant.access$4700(restaurant).isEmpty()))
    {
      localObject1 = V2RestaurantDTO.GHSRestaurant.access$4700(restaurant).iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (V2RestaurantDTO.GHSMenuCategory)((Iterator)localObject1).next();
        if (((V2RestaurantDTO.GHSMenuCategory)localObject2).hasMenuItemsAvailableNow()) {
          localArrayList.add(localObject2);
        }
      }
      if (!hasSpecialCategories)
      {
        localObject1 = new HashMap();
        localObject2 = new ArrayList();
        localObject3 = localArrayList.iterator();
        Object localObject5;
        while (((Iterator)localObject3).hasNext())
        {
          localObject4 = ((GHSIFoodMenuDataModel.GHSIMenuSection)((Iterator)localObject3).next()).getMenuSectionMenuItems().iterator();
          while (((Iterator)localObject4).hasNext())
          {
            localObject5 = (GHSIFoodMenuDataModel.GHSIMenuItem)((Iterator)localObject4).next();
            ((HashMap)localObject1).put(((GHSIFoodMenuDataModel.GHSIMenuItem)localObject5).getMenuItemId(), localObject5);
            if ((((ArrayList)localObject2).size() < 10) && (((GHSIFoodMenuDataModel.GHSIMenuItem)localObject5).isPopular())) {
              ((ArrayList)localObject2).add(localObject5);
            }
          }
        }
        localObject3 = new LinkedHashSet();
        Object localObject4 = GHSApplication.a().b().ab();
        if ((localObject4 != null) && (((GHSIPastOrderListDataModel)localObject4).getPastOrdersCount() > 0))
        {
          localObject5 = ((GHSIPastOrderListDataModel)localObject4).getPastOrders();
          localObject4 = Calendar.getInstance();
          ((Calendar)localObject4).add(2, -6);
          localObject5 = ((ArrayList)localObject5).iterator();
          do
          {
            GHSIPastOrderDataModel.GHSIPastOrderItem localGHSIPastOrderItem;
            Date localDate;
            do
            {
              GHSIPastOrderDataModel localGHSIPastOrderDataModel;
              Iterator localIterator;
              while (!localIterator.hasNext())
              {
                do
                {
                  if (!((Iterator)localObject5).hasNext()) {
                    break;
                  }
                  localGHSIPastOrderDataModel = (GHSIPastOrderDataModel)((Iterator)localObject5).next();
                } while (!V2RestaurantDTO.GHSRestaurant.access$000(restaurant).equals(localGHSIPastOrderDataModel.getRestaurantId()));
                localIterator = localGHSIPastOrderDataModel.getPastOrderItemList().iterator();
              }
              localGHSIPastOrderItem = (GHSIPastOrderDataModel.GHSIPastOrderItem)localIterator.next();
              localDate = new Date(localGHSIPastOrderDataModel.getTimePlacedMillis());
            } while ((!((HashMap)localObject1).containsKey(localGHSIPastOrderItem.getOriginalItemId())) || (((LinkedHashSet)localObject3).contains(((HashMap)localObject1).get(localGHSIPastOrderItem.getOriginalItemId()))) || (!localDate.after(((Calendar)localObject4).getTime())));
            ((LinkedHashSet)localObject3).add(((HashMap)localObject1).get(localGHSIPastOrderItem.getOriginalItemId()));
          } while (((LinkedHashSet)localObject3).size() != 10);
        }
        localObject1 = null;
        if (!((ArrayList)localObject2).isEmpty()) {
          localObject1 = createNewMenuCategory("Most Popular", (ArrayList)localObject2);
        }
        localObject2 = null;
        if (!((LinkedHashSet)localObject3).isEmpty()) {
          localObject2 = createNewMenuCategory("Previously Ordered", new ArrayList((Collection)localObject3));
        }
        localObject3 = new ArrayList();
        if ((localObject2 == null) || (localObject1 == null)) {
          break label555;
        }
        Collections.addAll((Collection)localObject3, new V2RestaurantDTO.GHSMenuCategory[] { localObject2, localObject1 });
      }
    }
    for (;;)
    {
      if ((!((ArrayList)localObject3).isEmpty()) && (!localArrayList.isEmpty())) {
        V2RestaurantDTO.GHSRestaurant.access$4700(restaurant).addAll(0, (Collection)localObject3);
      }
      hasSpecialCategories = true;
      return localArrayList;
      label555:
      if (localObject2 != null) {
        ((ArrayList)localObject3).add(localObject2);
      } else if (localObject1 != null) {
        ((ArrayList)localObject3).add(localObject1);
      }
    }
  }
  
  public GHSIAmount getMinimumTip()
  {
    if ((restaurant != null) && (V2RestaurantDTO.GHSRestaurant.access$3600(restaurant) != null)) {
      return V2RestaurantDTO.GHSRestaurant.access$3600(restaurant);
    }
    return new GHSAmount(Integer.valueOf(0), "");
  }
  
  public double getMinimumTipPercent()
  {
    if (restaurant != null) {
      return V2RestaurantDTO.GHSRestaurant.access$3500(restaurant);
    }
    return 0.0D;
  }
  
  public GHSIAmount getPickupMinimum()
  {
    return new GHSAmount(Integer.valueOf(0), "");
  }
  
  public int getRatingCount()
  {
    if ((restaurant != null) && (V2RestaurantDTO.GHSRestaurant.access$1500(restaurant) != null) && (V2RestaurantDTO.GHSRating.access$1700(V2RestaurantDTO.GHSRestaurant.access$1500(restaurant)) != null)) {
      return Integer.valueOf(V2RestaurantDTO.GHSRating.access$1700(V2RestaurantDTO.GHSRestaurant.access$1500(restaurant))).intValue();
    }
    return 0;
  }
  
  public GHSIAddressDataModel getRestaurantAddress()
  {
    GHSAddressDataModel localGHSAddressDataModel = new GHSAddressDataModel();
    if ((restaurant != null) && (V2RestaurantDTO.GHSRestaurant.access$300(restaurant) != null))
    {
      localGHSAddressDataModel.setAddress1(V2RestaurantDTO.GHSPostalAddress.access$400(V2RestaurantDTO.GHSRestaurant.access$300(restaurant)));
      localGHSAddressDataModel.setCity(V2RestaurantDTO.GHSPostalAddress.access$500(V2RestaurantDTO.GHSRestaurant.access$300(restaurant)));
      localGHSAddressDataModel.setState(V2RestaurantDTO.GHSPostalAddress.access$600(V2RestaurantDTO.GHSRestaurant.access$300(restaurant)));
      localGHSAddressDataModel.setZip(V2RestaurantDTO.GHSPostalAddress.access$700(V2RestaurantDTO.GHSRestaurant.access$300(restaurant)));
      localGHSAddressDataModel.setCountry(V2RestaurantDTO.GHSPostalAddress.access$800(V2RestaurantDTO.GHSRestaurant.access$300(restaurant)));
      localGHSAddressDataModel.setLatitude(V2RestaurantDTO.GHSRestaurant.access$900(restaurant));
      localGHSAddressDataModel.setLongitude(V2RestaurantDTO.GHSRestaurant.access$1000(restaurant));
      localGHSAddressDataModel.setPhone(V2RestaurantDTO.GHSRestaurant.access$1100(restaurant));
    }
    return localGHSAddressDataModel;
  }
  
  public ArrayList<String> getRestaurantCuisines()
  {
    if (restaurant != null) {
      return V2RestaurantDTO.GHSRestaurant.access$200(restaurant);
    }
    return null;
  }
  
  public String getRestaurantDescription()
  {
    if ((restaurant != null) && (V2RestaurantDTO.GHSRestaurant.access$200(restaurant) != null)) {
      return V2RestaurantDTO.GHSRestaurant.access$200(restaurant).toString().replace("[", "").replace("]", "");
    }
    return "";
  }
  
  public String getRestaurantDescriptionCondensed()
  {
    if ((restaurant != null) && (V2RestaurantDTO.GHSRestaurant.access$200(restaurant) != null))
    {
      ArrayList localArrayList = new ArrayList();
      int i = 0;
      while ((i < V2RestaurantDTO.GHSRestaurant.access$200(restaurant).size()) && (i < 2))
      {
        localArrayList.add(V2RestaurantDTO.GHSRestaurant.access$200(restaurant).get(i));
        i += 1;
      }
      return localArrayList.toString().replace("[", "").replace("]", "");
    }
    return "";
  }
  
  public String getRestaurantId()
  {
    if (restaurant != null) {
      return V2RestaurantDTO.GHSRestaurant.access$000(restaurant);
    }
    return null;
  }
  
  public String getRestaurantImage()
  {
    if ((restaurant != null) && (V2RestaurantDTO.GHSRestaurant.access$1900(restaurant) != null))
    {
      if (V2RestaurantDTO.GHSRestaurant.access$1900(restaurant).contains("http://s1.seamless.com/-/ri/vl/"))
      {
        int i = j.b();
        int j = j.a();
        return V2RestaurantDTO.GHSRestaurant.access$1900(restaurant) + "/" + i + "/" + j + "/?fs=1";
      }
      return V2RestaurantDTO.GHSRestaurant.access$1900(restaurant);
    }
    if (restaurant != null) {
      return V2RestaurantDTO.GHSRestaurant.access$2000(restaurant);
    }
    return null;
  }
  
  public String getRestaurantLogo()
  {
    if (restaurant != null) {
      return V2RestaurantDTO.GHSRestaurant.access$2000(restaurant);
    }
    return null;
  }
  
  public String getRestaurantMediaImage()
  {
    if ((restaurant == null) || (V2RestaurantDTO.GHSRestaurant.access$2100(restaurant) == null) || ((access$2100restaurant).tag != null) && (access$2100restaurant).tag.equals("placeholder")))) {
      return null;
    }
    int i = Math.round(GHSApplication.a().getResources().getDimension(2131427521));
    int j = Math.round(GHSApplication.a().getResources().getDimension(2131427520));
    float f = GHSApplication.o();
    StringBuilder localStringBuilder = new StringBuilder(access$2100restaurant).base_url);
    if (!localStringBuilder.toString().endsWith("/")) {
      localStringBuilder.append("/");
    }
    if ((access$2100restaurant).tag != null) && (access$2100restaurant).tag.equals("search"))) {}
    for (String str = "c_fill";; str = "c_fit")
    {
      localStringBuilder.append(str).append(",w_").append(i).append(",h_").append(j).append(",dpr_").append(f).append("/").append(access$2100restaurant).public_id).append(".").append(access$2100restaurant).format);
      return localStringBuilder.toString();
    }
  }
  
  public String getRestaurantName()
  {
    if (restaurant != null) {
      return V2RestaurantDTO.GHSRestaurant.access$100(restaurant);
    }
    return null;
  }
  
  public String getRestaurantPhoneNumber()
  {
    if (restaurant != null) {
      return V2RestaurantDTO.GHSRestaurant.access$1100(restaurant);
    }
    return null;
  }
  
  public int getRestaurantPriceRating()
  {
    if ((restaurant != null) && (V2RestaurantDTO.GHSRestaurant.access$1800(restaurant) != null)) {
      return Integer.valueOf(V2RestaurantDTO.GHSRestaurant.access$1800(restaurant)).intValue();
    }
    return 0;
  }
  
  public float getStarRating()
  {
    if ((restaurant != null) && (V2RestaurantDTO.GHSRestaurant.access$1500(restaurant) != null) && (V2RestaurantDTO.GHSRating.access$1600(V2RestaurantDTO.GHSRestaurant.access$1500(restaurant)) != null)) {
      return Float.valueOf(V2RestaurantDTO.GHSRating.access$1600(V2RestaurantDTO.GHSRestaurant.access$1500(restaurant))).floatValue();
    }
    return 0.0F;
  }
  
  public boolean hasCoupons()
  {
    if (restaurant != null) {
      return V2RestaurantDTO.GHSRestaurant.access$2800(restaurant);
    }
    return false;
  }
  
  public boolean isAcceptingCash()
  {
    if (restaurant_availability != null) {
      return V2RestaurantDTO.GHSAvailability.access$3100(restaurant_availability);
    }
    return false;
  }
  
  public boolean isAcceptingCredit()
  {
    if (restaurant_availability != null) {
      return V2RestaurantDTO.GHSAvailability.access$3200(restaurant_availability);
    }
    return false;
  }
  
  public boolean isCashTipAllowed()
  {
    if (restaurant != null) {
      return V2RestaurantDTO.GHSRestaurant.access$3300(restaurant);
    }
    return true;
  }
  
  public boolean isCrossStreetRequired()
  {
    if (restaurant != null) {
      return V2RestaurantDTO.GHSRestaurant.access$1200(restaurant);
    }
    return false;
  }
  
  public boolean isManagedDelivery()
  {
    if (restaurant != null) {
      return V2RestaurantDTO.GHSRestaurant.access$3400(restaurant);
    }
    return false;
  }
  
  public boolean isMenuItemPopular(int paramInt1, int paramInt2)
  {
    ArrayList localArrayList = getMenuSections();
    if ((localArrayList != null) && (paramInt1 < localArrayList.size()))
    {
      localArrayList = ((GHSIFoodMenuDataModel.GHSIMenuSection)localArrayList.get(paramInt1)).getMenuSectionMenuItems();
      if ((localArrayList != null) && (paramInt2 < localArrayList.size())) {
        return ((GHSIFoodMenuDataModel.GHSIMenuItem)localArrayList.get(paramInt2)).isPopular();
      }
    }
    return false;
  }
  
  public boolean isNew()
  {
    if (restaurant != null) {
      return V2RestaurantDTO.GHSRestaurant.access$2700(restaurant);
    }
    return false;
  }
  
  public boolean isOpen(g paramg)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (restaurant_availability != null)
    {
      if (V2RestaurantDTO.GHSAvailability.access$2200(restaurant_availability) == null) {
        break label29;
      }
      bool1 = isOpenForFutureOrder(paramg);
    }
    label29:
    ArrayList localArrayList;
    do
    {
      do
      {
        do
        {
          return bool1;
          bool1 = bool2;
        } while (!V2RestaurantDTO.GHSAvailability.access$2300(restaurant_availability));
        localArrayList = getHoursOfOperation(paramg);
        bool1 = bool2;
      } while (localArrayList == null);
      bool1 = bool2;
    } while (localArrayList.isEmpty());
    if ((paramg != null) && (paramg == g.PICKUP) && (V2RestaurantDTO.GHSAvailability.access$2400(restaurant_availability) != null)) {
      return j.a(localArrayList, V2RestaurantDTO.GHSAvailability.access$2400(restaurant_availability).intValue(), V2RestaurantDTO.GHSAvailability.access$2500(restaurant_availability));
    }
    if (V2RestaurantDTO.GHSAvailability.access$2600(restaurant_availability) != null) {
      return j.a(localArrayList, V2RestaurantDTO.GHSAvailability.access$2600(restaurant_availability).intValue(), V2RestaurantDTO.GHSAvailability.access$2500(restaurant_availability));
    }
    return j.a(localArrayList, 0, V2RestaurantDTO.GHSAvailability.access$2500(restaurant_availability));
  }
  
  public boolean isPhoneOnly()
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (restaurant != null)
    {
      bool1 = bool2;
      if (!V2RestaurantDTO.GHSRestaurant.access$2900(restaurant))
      {
        bool1 = bool2;
        if (V2RestaurantDTO.GHSRestaurant.access$3000(restaurant)) {
          bool1 = true;
        }
      }
    }
    return bool1;
  }
  
  public boolean offersDelivery()
  {
    if (restaurant_availability != null) {
      return V2RestaurantDTO.GHSAvailability.access$3800(restaurant_availability);
    }
    return false;
  }
  
  public boolean offersDeliveryToDinerLocation()
  {
    if (restaurant_availability != null) {
      return V2RestaurantDTO.GHSAvailability.access$3900(restaurant_availability);
    }
    return false;
  }
  
  public boolean offersPickup()
  {
    if (restaurant != null) {
      return V2RestaurantDTO.GHSRestaurant.access$4000(restaurant);
    }
    return false;
  }
  
  public GHSIFoodMenuDataModel postGSONProcessData(Context paramContext)
  {
    return this;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2RestaurantDTO
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */