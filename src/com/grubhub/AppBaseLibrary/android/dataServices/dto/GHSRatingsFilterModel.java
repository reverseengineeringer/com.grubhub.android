package com.grubhub.AppBaseLibrary.android.dataServices.dto;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.ClassLoaderCreator;
import android.os.Parcelable.Creator;
import java.util.HashMap;

public class GHSRatingsFilterModel
  implements Parcelable
{
  public static final Parcelable.Creator<GHSRatingsFilterModel> CREATOR = new Parcelable.ClassLoaderCreator()
  {
    public GHSRatingsFilterModel createFromParcel(Parcel paramAnonymousParcel)
    {
      return new GHSRatingsFilterModel(paramAnonymousParcel, null);
    }
    
    public GHSRatingsFilterModel createFromParcel(Parcel paramAnonymousParcel, ClassLoader paramAnonymousClassLoader)
    {
      return createFromParcel(paramAnonymousParcel);
    }
    
    public GHSRatingsFilterModel[] newArray(int paramAnonymousInt)
    {
      return new GHSRatingsFilterModel[0];
    }
  };
  private static final int NUM_FILTERS = 5;
  public static final String RATING = "rating";
  private static HashMap<Integer, GHSRatingsFilterModel.RatingsFilters> ratingsFilterLocationMap = new HashMap();
  private boolean hasUserSelected;
  private boolean[] selectedValues = new boolean[5];
  
  static
  {
    ratingsFilterLocationMap.put(Integer.valueOf(0), GHSRatingsFilterModel.RatingsFilters.RATINGS_ONE_FILTER);
    ratingsFilterLocationMap.put(Integer.valueOf(1), GHSRatingsFilterModel.RatingsFilters.RATINGS_TWO_FILTER);
    ratingsFilterLocationMap.put(Integer.valueOf(2), GHSRatingsFilterModel.RatingsFilters.RATINGS_THREE_FILTER);
    ratingsFilterLocationMap.put(Integer.valueOf(3), GHSRatingsFilterModel.RatingsFilters.RATINGS_FOUR_FILTER);
    ratingsFilterLocationMap.put(Integer.valueOf(4), GHSRatingsFilterModel.RatingsFilters.RATINGS_FIVE_FILTER);
  }
  
  public GHSRatingsFilterModel() {}
  
  private GHSRatingsFilterModel(Parcel paramParcel)
  {
    boolean[] arrayOfBoolean = selectedValues;
    if (paramParcel.readByte() != 0)
    {
      bool1 = true;
      arrayOfBoolean[0] = bool1;
      arrayOfBoolean = selectedValues;
      if (paramParcel.readByte() == 0) {
        break label133;
      }
      bool1 = true;
      label48:
      arrayOfBoolean[1] = bool1;
      arrayOfBoolean = selectedValues;
      if (paramParcel.readByte() == 0) {
        break label138;
      }
      bool1 = true;
      label68:
      arrayOfBoolean[2] = bool1;
      arrayOfBoolean = selectedValues;
      if (paramParcel.readByte() == 0) {
        break label143;
      }
      bool1 = true;
      label88:
      arrayOfBoolean[3] = bool1;
      arrayOfBoolean = selectedValues;
      if (paramParcel.readByte() == 0) {
        break label148;
      }
      bool1 = true;
      label108:
      arrayOfBoolean[4] = bool1;
      if (paramParcel.readByte() == 0) {
        break label153;
      }
    }
    label133:
    label138:
    label143:
    label148:
    label153:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      hasUserSelected = bool1;
      return;
      bool1 = false;
      break;
      bool1 = false;
      break label48;
      bool1 = false;
      break label68;
      bool1 = false;
      break label88;
      bool1 = false;
      break label108;
    }
  }
  
  private byte convertBoolToByte(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (int i = 1;; i = 0) {
      return (byte)i;
    }
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean getHasUserSelected()
  {
    return hasUserSelected;
  }
  
  public GHSRatingsFilterModel.RatingsFilters getMaxSelectedFilter()
  {
    int i = 4;
    while (i >= 0)
    {
      if (selectedValues[i] != 0) {
        return (GHSRatingsFilterModel.RatingsFilters)ratingsFilterLocationMap.get(Integer.valueOf(i));
      }
      i -= 1;
    }
    return GHSRatingsFilterModel.RatingsFilters.RATINGS_NONE_SELECTED;
  }
  
  public GHSRatingsFilterModel.RatingsFilters getMinSelectedFilter()
  {
    int i = 0;
    while (i < 5)
    {
      if (selectedValues[i] != 0) {
        return (GHSRatingsFilterModel.RatingsFilters)ratingsFilterLocationMap.get(Integer.valueOf(i));
      }
      i += 1;
    }
    return GHSRatingsFilterModel.RatingsFilters.RATINGS_NONE_SELECTED;
  }
  
  public boolean isRatingsFiveSelected()
  {
    return selectedValues[4];
  }
  
  public boolean isRatingsFourSelected()
  {
    return selectedValues[3];
  }
  
  public boolean isRatingsOneSelected()
  {
    return selectedValues[0];
  }
  
  public boolean isRatingsThreeSelected()
  {
    return selectedValues[2];
  }
  
  public boolean isRatingsTwoSelected()
  {
    return selectedValues[1];
  }
  
  public void setHasUserSelected(boolean paramBoolean)
  {
    hasUserSelected = paramBoolean;
  }
  
  public void setRatingsFiveSelected(boolean paramBoolean)
  {
    selectedValues[4] = paramBoolean;
  }
  
  public void setRatingsFourSelected(boolean paramBoolean)
  {
    selectedValues[3] = paramBoolean;
  }
  
  public void setRatingsOneSelected(boolean paramBoolean)
  {
    selectedValues[0] = paramBoolean;
  }
  
  public void setRatingsRangeSelected(GHSRatingsFilterModel.RatingsValues paramRatingsValues)
  {
    if (paramRatingsValues == null) {
      return;
    }
    int i = 0;
    while (i < selectedValues.length)
    {
      selectedValues[i] = false;
      i += 1;
    }
    switch (2.$SwitchMap$com$grubhub$AppBaseLibrary$android$dataServices$dto$GHSRatingsFilterModel$RatingsValues[paramRatingsValues.ordinal()])
    {
    default: 
      return;
    case 1: 
      setRatingsOneSelected(true);
    case 2: 
      setRatingsTwoSelected(true);
    case 3: 
      setRatingsThreeSelected(true);
    case 4: 
      setRatingsFourSelected(true);
    }
    setRatingsFiveSelected(true);
  }
  
  public void setRatingsThreeSelected(boolean paramBoolean)
  {
    selectedValues[2] = paramBoolean;
  }
  
  public void setRatingsTwoSelected(boolean paramBoolean)
  {
    selectedValues[1] = paramBoolean;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeByte(convertBoolToByte(selectedValues[0]));
    paramParcel.writeByte(convertBoolToByte(selectedValues[1]));
    paramParcel.writeByte(convertBoolToByte(selectedValues[2]));
    paramParcel.writeByte(convertBoolToByte(selectedValues[3]));
    paramParcel.writeByte(convertBoolToByte(selectedValues[4]));
    paramParcel.writeByte(convertBoolToByte(hasUserSelected));
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSRatingsFilterModel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */