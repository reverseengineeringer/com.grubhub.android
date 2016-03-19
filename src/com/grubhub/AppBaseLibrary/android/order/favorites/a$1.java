package com.grubhub.AppBaseLibrary.android.order.favorites;

import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantAvailabilityDataModel.GHSIRestaurantAvailabilitySummary;
import java.util.Comparator;

class a$1
  implements Comparator<GHSIRestaurantAvailabilityDataModel.GHSIRestaurantAvailabilitySummary>
{
  a$1(a parama) {}
  
  public int a(GHSIRestaurantAvailabilityDataModel.GHSIRestaurantAvailabilitySummary paramGHSIRestaurantAvailabilitySummary1, GHSIRestaurantAvailabilityDataModel.GHSIRestaurantAvailabilitySummary paramGHSIRestaurantAvailabilitySummary2)
  {
    if (((paramGHSIRestaurantAvailabilitySummary1 == null) || (paramGHSIRestaurantAvailabilitySummary1.getRestaurantName() == null)) && (paramGHSIRestaurantAvailabilitySummary2 != null) && (paramGHSIRestaurantAvailabilitySummary2.getRestaurantName() != null)) {
      return -1;
    }
    if (((paramGHSIRestaurantAvailabilitySummary1 == null) || (paramGHSIRestaurantAvailabilitySummary1.getRestaurantName() == null)) && ((paramGHSIRestaurantAvailabilitySummary2 == null) || (paramGHSIRestaurantAvailabilitySummary2.getRestaurantName() == null))) {
      return 0;
    }
    if ((paramGHSIRestaurantAvailabilitySummary1 != null) && (paramGHSIRestaurantAvailabilitySummary1.getRestaurantName() != null) && ((paramGHSIRestaurantAvailabilitySummary2 == null) || (paramGHSIRestaurantAvailabilitySummary2.getRestaurantName() == null))) {
      return 1;
    }
    return paramGHSIRestaurantAvailabilitySummary1.getRestaurantName().compareToIgnoreCase(paramGHSIRestaurantAvailabilitySummary2.getRestaurantName());
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.favorites.a.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */