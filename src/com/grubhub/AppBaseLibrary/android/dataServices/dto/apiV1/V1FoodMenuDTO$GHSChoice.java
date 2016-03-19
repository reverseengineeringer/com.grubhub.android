package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1;

import android.text.TextUtils;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIFoodMenuDataModel.GHSIChoiceGroup;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIFoodMenuDataModel.GHSIMenuItem;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIFoodMenuDataModel.GHSIOption;
import java.util.ArrayList;
import java.util.Iterator;

public class V1FoodMenuDTO$GHSChoice
  implements GHSIFoodMenuDataModel.GHSIChoiceGroup
{
  private String id;
  private Integer max;
  private Integer min;
  private String name;
  private V1FoodMenuDTO.GHSOptions options;
  private GHSIFoodMenuDataModel.GHSIMenuItem parent;
  
  public V1FoodMenuDTO$GHSChoice(V1FoodMenuDTO paramV1FoodMenuDTO) {}
  
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
    return 0;
  }
  
  public int getMaximum()
  {
    if ((max == null) && (options != null) && (options.option != null)) {
      return options.option.size();
    }
    if (max != null) {
      return max.intValue();
    }
    return 99;
  }
  
  public int getMinimum()
  {
    if (min != null) {
      return min.intValue();
    }
    return 0;
  }
  
  public V1FoodMenuDTO.GHSOption getOptionById(String paramString)
  {
    if ((!TextUtils.isEmpty(paramString)) && (options != null) && (options.option != null))
    {
      Iterator localIterator = options.option.iterator();
      while (localIterator.hasNext())
      {
        V1FoodMenuDTO.GHSOption localGHSOption = (V1FoodMenuDTO.GHSOption)localIterator.next();
        if (paramString.equals(V1FoodMenuDTO.GHSOption.access$1000(localGHSOption))) {
          return localGHSOption;
        }
      }
    }
    return null;
  }
  
  public ArrayList<GHSIFoodMenuDataModel.GHSIOption> getOptions()
  {
    if ((options != null) && (options.option != null)) {
      return new ArrayList(options.option);
    }
    return new ArrayList();
  }
  
  public String getOptionsDescriptionsString(ArrayList<GHSIFoodMenuDataModel.GHSIOption> paramArrayList)
  {
    Object localObject2 = "";
    Object localObject1 = localObject2;
    if (paramArrayList != null)
    {
      localObject1 = localObject2;
      if (options != null)
      {
        localObject1 = localObject2;
        if (options.option != null)
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
    return 0;
  }
  
  public boolean getVariationTarget()
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1.V1FoodMenuDTO.GHSChoice
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */