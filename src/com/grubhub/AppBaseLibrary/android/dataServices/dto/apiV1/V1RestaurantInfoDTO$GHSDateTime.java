package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1;

import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantDataModel.GHSIDateTime;
import java.text.DateFormatSymbols;
import java.util.ArrayList;
import java.util.Arrays;

class V1RestaurantInfoDTO$GHSDateTime
  implements GHSIRestaurantDataModel.GHSIDateTime
{
  private static final String[] mapDOWToString = DateFormatSymbols.getInstance().getWeekdays();
  private Integer day_of_week;
  private ArrayList<String> time_ranges;
  
  public V1RestaurantInfoDTO$GHSDateTime(int paramInt, ArrayList<String> paramArrayList)
  {
    if (paramArrayList != null) {
      time_ranges = paramArrayList;
    }
    day_of_week = Integer.valueOf(paramInt);
  }
  
  public V1RestaurantInfoDTO$GHSDateTime(int paramInt, String[] paramArrayOfString)
  {
    if (paramArrayOfString != null) {
      time_ranges = new ArrayList(Arrays.asList(paramArrayOfString));
    }
    day_of_week = Integer.valueOf(paramInt);
  }
  
  public V1RestaurantInfoDTO$GHSDateTime(String paramString, String[] paramArrayOfString)
  {
    if (paramArrayOfString != null) {
      time_ranges = new ArrayList(Arrays.asList(paramArrayOfString));
    }
    int i = mapDOWToString.length - 1;
    for (;;)
    {
      if (i > 0)
      {
        if ((!mapDOWToString[i].isEmpty()) && (mapDOWToString[i].equalsIgnoreCase(paramString))) {
          day_of_week = Integer.valueOf(i);
        }
      }
      else {
        return;
      }
      i -= 1;
    }
  }
  
  public int getDayOfWeek()
  {
    return day_of_week.intValue();
  }
  
  public String getDayOfWeekString()
  {
    if ((mapDOWToString != null) && (mapDOWToString.length != 0) && (day_of_week.intValue() < mapDOWToString.length)) {
      return mapDOWToString[day_of_week.intValue()];
    }
    return "";
  }
  
  public ArrayList<String> getTimeRanges()
  {
    return time_ranges;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1.V1RestaurantInfoDTO.GHSDateTime
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */