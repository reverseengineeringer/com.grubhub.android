package com.grubhub.AppBaseLibrary.android.dataServices.dto;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.ClassLoaderCreator;
import android.os.Parcelable.Creator;
import java.util.HashMap;

public class GHSPriceFilterModel
  implements Parcelable
{
  public static final Parcelable.Creator<GHSPriceFilterModel> CREATOR = new Parcelable.ClassLoaderCreator()
  {
    public GHSPriceFilterModel createFromParcel(Parcel paramAnonymousParcel)
    {
      return new GHSPriceFilterModel(paramAnonymousParcel, null);
    }
    
    public GHSPriceFilterModel createFromParcel(Parcel paramAnonymousParcel, ClassLoader paramAnonymousClassLoader)
    {
      return createFromParcel(paramAnonymousParcel);
    }
    
    public GHSPriceFilterModel[] newArray(int paramAnonymousInt)
    {
      return new GHSPriceFilterModel[0];
    }
  };
  private static final int NUM_FILTERS = 5;
  public static final String PRICE_RATING = "price_rating";
  private static HashMap<Integer, GHSPriceFilterModel.PriceFilters> priceFilterLocationMap = new HashMap();
  private boolean hasUserSelected;
  private boolean[] selectedValues = new boolean[5];
  
  static
  {
    priceFilterLocationMap.put(Integer.valueOf(0), GHSPriceFilterModel.PriceFilters.PRICE_ONE_FILTER);
    priceFilterLocationMap.put(Integer.valueOf(1), GHSPriceFilterModel.PriceFilters.PRICE_TWO_FILTER);
    priceFilterLocationMap.put(Integer.valueOf(2), GHSPriceFilterModel.PriceFilters.PRICE_THREE_FILTER);
    priceFilterLocationMap.put(Integer.valueOf(3), GHSPriceFilterModel.PriceFilters.PRICE_FOUR_FILTER);
    priceFilterLocationMap.put(Integer.valueOf(4), GHSPriceFilterModel.PriceFilters.PRICE_FIVE_FILTER);
  }
  
  public GHSPriceFilterModel() {}
  
  private GHSPriceFilterModel(Parcel paramParcel)
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
  
  public GHSPriceFilterModel.PriceFilters getMaxSelectedFilter()
  {
    int i = 4;
    while (i >= 0)
    {
      if (selectedValues[i] != 0) {
        return (GHSPriceFilterModel.PriceFilters)priceFilterLocationMap.get(Integer.valueOf(i));
      }
      i -= 1;
    }
    return GHSPriceFilterModel.PriceFilters.PRICE_NONE_SELECTED;
  }
  
  public GHSPriceFilterModel.PriceFilters getMinSelectedFilter()
  {
    int i = 0;
    while (i < 5)
    {
      if (selectedValues[i] != 0) {
        return (GHSPriceFilterModel.PriceFilters)priceFilterLocationMap.get(Integer.valueOf(i));
      }
      i += 1;
    }
    return GHSPriceFilterModel.PriceFilters.PRICE_NONE_SELECTED;
  }
  
  public boolean isPriceFiveSelected()
  {
    return selectedValues[4];
  }
  
  public boolean isPriceFourSelected()
  {
    return selectedValues[3];
  }
  
  public boolean isPriceOneSelected()
  {
    return selectedValues[0];
  }
  
  public boolean isPriceThreeSelected()
  {
    return selectedValues[2];
  }
  
  public boolean isPriceTwoSelected()
  {
    return selectedValues[1];
  }
  
  public void setHasUserSelected(boolean paramBoolean)
  {
    hasUserSelected = paramBoolean;
  }
  
  public void setPriceFiveSelected(boolean paramBoolean)
  {
    selectedValues[4] = paramBoolean;
  }
  
  public void setPriceFourSelected(boolean paramBoolean)
  {
    selectedValues[3] = paramBoolean;
  }
  
  public void setPriceOneSelected(boolean paramBoolean)
  {
    selectedValues[0] = paramBoolean;
  }
  
  public void setPriceRangeSelected(GHSPriceFilterModel.PriceValues paramPriceValues)
  {
    if (paramPriceValues == null) {
      return;
    }
    int i = 0;
    while (i < selectedValues.length)
    {
      selectedValues[i] = false;
      i += 1;
    }
    switch (2.$SwitchMap$com$grubhub$AppBaseLibrary$android$dataServices$dto$GHSPriceFilterModel$PriceValues[paramPriceValues.ordinal()])
    {
    default: 
      return;
    case 1: 
      setPriceFiveSelected(true);
    case 2: 
      setPriceFourSelected(true);
    case 3: 
      setPriceThreeSelected(true);
    case 4: 
      setPriceTwoSelected(true);
    }
    setPriceOneSelected(true);
  }
  
  public void setPriceThreeSelected(boolean paramBoolean)
  {
    selectedValues[2] = paramBoolean;
  }
  
  public void setPriceTwoSelected(boolean paramBoolean)
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
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSPriceFilterModel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */