package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2;

import android.text.TextUtils;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIFoodMenuDataModel.GHSIChoiceGroup;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIFoodMenuDataModel.GHSIOption;
import java.util.ArrayList;
import java.util.Iterator;

class V2RestaurantDTO$GHSChoiceCategory
  implements GHSIFoodMenuDataModel.GHSIChoiceGroup
{
  private ArrayList<V2RestaurantDTO.GHSChoiceOption> choice_option_list;
  private String id;
  private int item_variation_id;
  private int max_choice_options;
  private int min_choice_options;
  private String name;
  private int sequence;
  private boolean variation_target;
  
  public String getChoiceId()
  {
    return id;
  }
  
  public String getChoiceName()
  {
    return name;
  }
  
  public int getItemVariationId()
  {
    return item_variation_id;
  }
  
  public int getMaximum()
  {
    if (max_choice_options > 0) {
      return max_choice_options;
    }
    if (choice_option_list != null) {
      return choice_option_list.size();
    }
    if (getMinimum() > 0) {
      return getMinimum();
    }
    return 1;
  }
  
  public int getMinimum()
  {
    return min_choice_options;
  }
  
  public GHSIFoodMenuDataModel.GHSIOption getOptionById(String paramString)
  {
    if ((paramString != null) && (choice_option_list != null) && (!choice_option_list.isEmpty()))
    {
      Iterator localIterator = choice_option_list.iterator();
      while (localIterator.hasNext())
      {
        GHSIFoodMenuDataModel.GHSIOption localGHSIOption = (GHSIFoodMenuDataModel.GHSIOption)localIterator.next();
        if (localGHSIOption.getOptionId().equals(paramString)) {
          return localGHSIOption;
        }
      }
    }
    return null;
  }
  
  public ArrayList<GHSIFoodMenuDataModel.GHSIOption> getOptions()
  {
    ArrayList localArrayList = new ArrayList();
    if ((choice_option_list != null) && (!choice_option_list.isEmpty())) {
      localArrayList.addAll(choice_option_list);
    }
    return localArrayList;
  }
  
  public String getOptionsDescriptionsString(ArrayList<GHSIFoodMenuDataModel.GHSIOption> paramArrayList)
  {
    Object localObject2 = "";
    Object localObject1 = localObject2;
    if (paramArrayList != null)
    {
      localObject1 = localObject2;
      if (choice_option_list != null)
      {
        localObject1 = localObject2;
        if (!choice_option_list.isEmpty())
        {
          Iterator localIterator = paramArrayList.iterator();
          paramArrayList = (ArrayList<GHSIFoodMenuDataModel.GHSIOption>)localObject2;
          for (;;)
          {
            localObject1 = paramArrayList;
            if (!localIterator.hasNext()) {
              break;
            }
            localObject2 = (GHSIFoodMenuDataModel.GHSIOption)localIterator.next();
            if (!TextUtils.isEmpty(((GHSIFoodMenuDataModel.GHSIOption)localObject2).getOptionDescription()))
            {
              localObject1 = paramArrayList;
              if (!paramArrayList.equals("")) {
                localObject1 = paramArrayList + ", ";
              }
              paramArrayList = (String)localObject1 + ((GHSIFoodMenuDataModel.GHSIOption)localObject2).getOptionDescription();
            }
          }
        }
      }
    }
    return (String)localObject1;
  }
  
  public int getSequence()
  {
    return sequence;
  }
  
  public boolean getVariationTarget()
  {
    return variation_target;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2RestaurantDTO.GHSChoiceCategory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */