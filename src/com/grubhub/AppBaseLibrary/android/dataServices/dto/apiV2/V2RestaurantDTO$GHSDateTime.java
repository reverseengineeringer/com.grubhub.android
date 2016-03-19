package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2;

import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantDataModel.GHSIDateTime;
import com.grubhub.AppBaseLibrary.android.order.j;
import java.text.DateFormatSymbols;
import java.util.ArrayList;

public class V2RestaurantDTO$GHSDateTime
  implements GHSIRestaurantDataModel.GHSIDateTime
{
  private static final int DAYS_IN_WEEK = 7;
  private int day_of_week;
  private ArrayList<String> time_ranges;
  
  public V2RestaurantDTO$GHSDateTime(int paramInt, ArrayList<String> paramArrayList)
  {
    day_of_week = paramInt;
    time_ranges = paramArrayList;
  }
  
  public int getDayOfWeek()
  {
    int j = day_of_week + 1;
    int i = j;
    if (j > 7) {
      i = j % 7;
    }
    return i;
  }
  
  public String getDayOfWeekString()
  {
    int i = getDayOfWeek();
    if (i < DateFormatSymbols.getInstance().getWeekdays().length) {
      return DateFormatSymbols.getInstance().getWeekdays()[i];
    }
    return "";
  }
  
  public ArrayList<String> getTimeRanges()
  {
    return j.a(time_ranges);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2RestaurantDTO.GHSDateTime
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */