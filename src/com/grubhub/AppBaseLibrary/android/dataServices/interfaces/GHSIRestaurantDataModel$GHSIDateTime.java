package com.grubhub.AppBaseLibrary.android.dataServices.interfaces;

import java.util.ArrayList;

public abstract interface GHSIRestaurantDataModel$GHSIDateTime
{
  public static final int DATE_TIME_DOW_FRIDAY = 6;
  public static final int DATE_TIME_DOW_MONDAY = 2;
  public static final int DATE_TIME_DOW_SATURDAY = 7;
  public static final int DATE_TIME_DOW_SUNDAY = 1;
  public static final int DATE_TIME_DOW_THURSDAY = 5;
  public static final int DATE_TIME_DOW_TUESDAY = 3;
  public static final int DATE_TIME_DOW_WEDNESDAY = 4;
  
  public abstract int getDayOfWeek();
  
  public abstract String getDayOfWeekString();
  
  public abstract ArrayList<String> getTimeRanges();
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantDataModel.GHSIDateTime
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */