package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1;

import android.content.Context;
import android.text.TextUtils;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIFoodMenuDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIFoodMenuDataModel.GHSIChoiceGroup;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIFoodMenuDataModel.GHSIMenuItem;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIFoodMenuDataModel.GHSIMenuSection;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIFoodMenuDataModel.GHSIOption;
import com.grubhub.AppBaseLibrary.android.utils.e.a;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;

public class V1FoodMenuDTO
  implements GHSIFoodMenuDataModel
{
  public static final String GENERATION_DATE_DATEFORMAT = "E MMM dd HH:mm:ss z yyyy";
  private static final String TAG = V1FoodMenuDTO.class.getSimpleName();
  private Double expirationTimeMillis;
  private Boolean externalPaymentProcessor;
  private String generationDate;
  private String id;
  private V1FoodMenuDTO.GHSItemChoices itemChoices;
  private V1FoodMenuDTO.GHMenuSections menuSections;
  private V1FoodMenuDTO.GHSMessages messages;
  private String restaurantName;
  private V1FoodMenuDTO.GHSTimePeriods timePeriods;
  
  private V1FoodMenuDTO addNewMenuSectionContainingMenuItemsWithTag(String paramString1, String paramString2, String paramString3)
  {
    paramString1 = getArrayOfFoodMenuItemsWithTag(paramString1);
    if ((paramString1 != null) && (paramString1.size() != 0))
    {
      V1FoodMenuDTO.GHSMenuSection localGHSMenuSection = new V1FoodMenuDTO.GHSMenuSection();
      V1FoodMenuDTO.GHSMenuSection.access$102(localGHSMenuSection, paramString2);
      V1FoodMenuDTO.GHSMenuSection.access$1202(localGHSMenuSection, paramString3);
      V1FoodMenuDTO.GHSMenuSection.access$202(localGHSMenuSection, new V1FoodMenuDTO.GHMenuItems(null));
      V1FoodMenuDTO.GHMenuItems.access$302(V1FoodMenuDTO.GHSMenuSection.access$200(localGHSMenuSection), paramString1);
      V1FoodMenuDTO.GHMenuSections.access$000(menuSections).add(0, localGHSMenuSection);
    }
    return this;
  }
  
  private Date convertGenerationDateStringToDate(String paramString)
  {
    SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("E MMM dd HH:mm:ss z yyyy");
    try
    {
      paramString = localSimpleDateFormat.parse(paramString);
      return paramString;
    }
    catch (ParseException paramString)
    {
      a.b(TAG, paramString.getMessage());
    }
    return null;
  }
  
  private ArrayList<V1FoodMenuDTO.GHSMenuItem> getArrayOfFoodMenuItemsWithTag(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    if ((paramString == null) || (menuSections == null) || (V1FoodMenuDTO.GHMenuSections.access$000(menuSections) == null)) {
      return localArrayList;
    }
    Iterator localIterator1 = V1FoodMenuDTO.GHMenuSections.access$000(menuSections).iterator();
    while (localIterator1.hasNext())
    {
      V1FoodMenuDTO.GHSMenuSection localGHSMenuSection = (V1FoodMenuDTO.GHSMenuSection)localIterator1.next();
      Iterator localIterator2 = V1FoodMenuDTO.GHMenuItems.access$300(V1FoodMenuDTO.GHSMenuSection.access$200(localGHSMenuSection)).iterator();
      while (localIterator2.hasNext())
      {
        GHSIFoodMenuDataModel.GHSIMenuItem localGHSIMenuItem = (GHSIFoodMenuDataModel.GHSIMenuItem)localIterator2.next();
        if (removeFoodItemsNotBeingServed(localGHSMenuSection, localGHSIMenuItem)) {
          localIterator2.remove();
        } else if (V1FoodMenuDTO.GHSMenuItem.access$1300((V1FoodMenuDTO.GHSMenuItem)localGHSIMenuItem, paramString)) {
          localArrayList.add((V1FoodMenuDTO.GHSMenuItem)localGHSIMenuItem);
        }
      }
    }
    return localArrayList;
  }
  
  private boolean removeFoodItemsNotBeingServed(V1FoodMenuDTO.GHSMenuSection paramGHSMenuSection, GHSIFoodMenuDataModel.GHSIMenuItem paramGHSIMenuItem)
  {
    boolean bool1 = false;
    boolean bool3 = false;
    paramGHSMenuSection = V1FoodMenuDTO.GHSMenuItem.access$1400((V1FoodMenuDTO.GHSMenuItem)paramGHSIMenuItem);
    if (paramGHSMenuSection != null)
    {
      paramGHSMenuSection = V1FoodMenuDTO.GHSAvailability.access$1500(paramGHSMenuSection);
      boolean bool2 = bool1;
      for (;;)
      {
        try
        {
          convertGenerationDateStringToDate(generationDate);
          bool2 = bool1;
          paramGHSMenuSection = paramGHSMenuSection.iterator();
          bool2 = bool3;
          if (paramGHSMenuSection.hasNext())
          {
            bool2 = bool3;
            String str = V1FoodMenuDTO.GHTimePeriodRef.access$1600((V1FoodMenuDTO.GHTimePeriodRef)paramGHSMenuSection.next());
            bool2 = bool3;
            Iterator localIterator = V1FoodMenuDTO.GHSTimePeriods.access$1700(timePeriods).iterator();
            bool1 = bool3;
            bool3 = bool1;
            bool2 = bool1;
            if (localIterator.hasNext())
            {
              bool2 = bool1;
              V1FoodMenuDTO.GHSTimePeriod localGHSTimePeriod = (V1FoodMenuDTO.GHSTimePeriod)localIterator.next();
              bool2 = bool1;
              if (!V1FoodMenuDTO.GHSTimePeriod.access$1800(localGHSTimePeriod))
              {
                bool2 = bool1;
                if (V1FoodMenuDTO.GHSTimePeriod.access$1900(localGHSTimePeriod).equals(str))
                {
                  bool2 = bool1;
                  a.c("TIMEREFS", "We are now in a timeref that is active and matches a food Item. Timeref: " + str + "FoodItem: " + paramGHSIMenuItem.getMenuItemId());
                  bool1 = true;
                }
              }
            }
          }
          else
          {
            return bool3;
          }
        }
        catch (Throwable paramGHSMenuSection)
        {
          a.b(TAG, paramGHSMenuSection.getMessage());
          return bool2;
        }
      }
    }
    return false;
  }
  
  public ArrayList<String> findAllMenuSectionNames()
  {
    ArrayList localArrayList = new ArrayList();
    if ((menuSections != null) && (V1FoodMenuDTO.GHMenuSections.access$000(menuSections) != null))
    {
      Iterator localIterator = V1FoodMenuDTO.GHMenuSections.access$000(menuSections).iterator();
      while (localIterator.hasNext()) {
        localArrayList.add(V1FoodMenuDTO.GHSMenuSection.access$100((V1FoodMenuDTO.GHSMenuSection)localIterator.next()));
      }
    }
    return localArrayList;
  }
  
  public Double getExpirationTimeMillis()
  {
    return expirationTimeMillis;
  }
  
  public Date getGenerationDate()
  {
    return convertGenerationDateStringToDate(generationDate);
  }
  
  public GHSIFoodMenuDataModel.GHSIMenuItem getMenuItemById(String paramString)
  {
    if ((!TextUtils.isEmpty(paramString)) && (menuSections != null) && (V1FoodMenuDTO.GHMenuSections.access$000(menuSections) != null))
    {
      GHSIFoodMenuDataModel.GHSIMenuItem localGHSIMenuItem;
      do
      {
        Iterator localIterator = V1FoodMenuDTO.GHMenuSections.access$000(menuSections).iterator();
        Object localObject;
        while (!((Iterator)localObject).hasNext())
        {
          do
          {
            if (!localIterator.hasNext()) {
              break;
            }
            localObject = (V1FoodMenuDTO.GHSMenuSection)localIterator.next();
          } while ((localObject == null) || (V1FoodMenuDTO.GHSMenuSection.access$200((V1FoodMenuDTO.GHSMenuSection)localObject) == null) || (V1FoodMenuDTO.GHMenuItems.access$300(V1FoodMenuDTO.GHSMenuSection.access$200((V1FoodMenuDTO.GHSMenuSection)localObject)) == null));
          localObject = V1FoodMenuDTO.GHMenuItems.access$300(V1FoodMenuDTO.GHSMenuSection.access$200((V1FoodMenuDTO.GHSMenuSection)localObject)).iterator();
        }
        localGHSIMenuItem = (GHSIFoodMenuDataModel.GHSIMenuItem)((Iterator)localObject).next();
      } while ((localGHSIMenuItem == null) || (!paramString.equals(localGHSIMenuItem.getMenuItemId())));
      return localGHSIMenuItem;
    }
    return null;
  }
  
  public GHSIFoodMenuDataModel.GHSIChoiceGroup getMenuItemChoiceGroup(String paramString1, String paramString2)
  {
    if ((!TextUtils.isEmpty(paramString2)) && (itemChoices != null) && (itemChoices.choice != null))
    {
      paramString1 = itemChoices.choice.iterator();
      while (paramString1.hasNext())
      {
        V1FoodMenuDTO.GHSChoice localGHSChoice = (V1FoodMenuDTO.GHSChoice)paramString1.next();
        if ((localGHSChoice != null) && (paramString2.equals(V1FoodMenuDTO.GHSChoice.access$400(localGHSChoice)))) {
          return localGHSChoice;
        }
      }
    }
    return null;
  }
  
  public String getMenuItemIdBySectionPosition(int paramInt1, int paramInt2)
  {
    if ((menuSections != null) && (V1FoodMenuDTO.GHMenuSections.access$000(menuSections) != null) && (paramInt1 >= 0) && (paramInt1 < V1FoodMenuDTO.GHMenuSections.access$000(menuSections).size()))
    {
      Object localObject = (V1FoodMenuDTO.GHSMenuSection)V1FoodMenuDTO.GHMenuSections.access$000(menuSections).get(paramInt1);
      if ((localObject != null) && (V1FoodMenuDTO.GHSMenuSection.access$200((V1FoodMenuDTO.GHSMenuSection)localObject) != null) && (V1FoodMenuDTO.GHMenuItems.access$300(V1FoodMenuDTO.GHSMenuSection.access$200((V1FoodMenuDTO.GHSMenuSection)localObject)) != null) && (paramInt2 >= 0) && (paramInt2 < V1FoodMenuDTO.GHMenuItems.access$300(V1FoodMenuDTO.GHSMenuSection.access$200((V1FoodMenuDTO.GHSMenuSection)localObject)).size()))
      {
        localObject = (GHSIFoodMenuDataModel.GHSIMenuItem)V1FoodMenuDTO.GHMenuItems.access$300(V1FoodMenuDTO.GHSMenuSection.access$200((V1FoodMenuDTO.GHSMenuSection)localObject)).get(paramInt2);
        if (localObject != null) {
          return ((GHSIFoodMenuDataModel.GHSIMenuItem)localObject).getMenuItemId();
        }
      }
    }
    return null;
  }
  
  public GHSIFoodMenuDataModel.GHSIOption getMenuItemOptionById(GHSIFoodMenuDataModel.GHSIMenuItem paramGHSIMenuItem, String paramString)
  {
    if ((paramGHSIMenuItem != null) && (!TextUtils.isEmpty(paramString))) {
      return paramGHSIMenuItem.getMenuItemChoiceGroupOption(paramString);
    }
    return null;
  }
  
  public ArrayList<GHSIFoodMenuDataModel.GHSIMenuSection> getMenuSections()
  {
    ArrayList localArrayList = new ArrayList();
    if ((menuSections != null) && (V1FoodMenuDTO.GHMenuSections.access$000(menuSections) != null)) {
      localArrayList.addAll(V1FoodMenuDTO.GHMenuSections.access$000(menuSections));
    }
    return localArrayList;
  }
  
  public String getRestaurantId()
  {
    return id;
  }
  
  public String getRestaurantName()
  {
    return restaurantName;
  }
  
  public boolean isMenuItemPopular(int paramInt1, int paramInt2)
  {
    if ((menuSections != null) && (V1FoodMenuDTO.GHMenuSections.access$000(menuSections) != null) && (paramInt1 >= 0) && (paramInt1 < V1FoodMenuDTO.GHMenuSections.access$000(menuSections).size()))
    {
      Object localObject = (V1FoodMenuDTO.GHSMenuSection)V1FoodMenuDTO.GHMenuSections.access$000(menuSections).get(paramInt1);
      if ((localObject != null) && (V1FoodMenuDTO.GHSMenuSection.access$200((V1FoodMenuDTO.GHSMenuSection)localObject) != null) && (V1FoodMenuDTO.GHMenuItems.access$300(V1FoodMenuDTO.GHSMenuSection.access$200((V1FoodMenuDTO.GHSMenuSection)localObject)) != null) && (paramInt2 >= 0) && (paramInt2 < V1FoodMenuDTO.GHMenuItems.access$300(V1FoodMenuDTO.GHSMenuSection.access$200((V1FoodMenuDTO.GHSMenuSection)localObject)).size()))
      {
        localObject = (GHSIFoodMenuDataModel.GHSIMenuItem)V1FoodMenuDTO.GHMenuItems.access$300(V1FoodMenuDTO.GHSMenuSection.access$200((V1FoodMenuDTO.GHSMenuSection)localObject)).get(paramInt2);
        if (localObject != null) {
          return ((GHSIFoodMenuDataModel.GHSIMenuItem)localObject).isPopular();
        }
      }
    }
    return false;
  }
  
  public GHSIFoodMenuDataModel postGSONProcessData(Context paramContext)
  {
    String str = paramContext.getString(2131231630);
    addNewMenuSectionContainingMenuItemsWithTag(paramContext.getString(2131231632), str, "");
    return this;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1.V1FoodMenuDTO
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */