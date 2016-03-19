package com.grubhub.AppBaseLibrary.android;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.view.View.BaseSavedState;

class GHSOrderFlowPane$SavedState
  extends View.BaseSavedState
{
  public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator()
  {
    public GHSOrderFlowPane.SavedState a(Parcel paramAnonymousParcel)
    {
      return new GHSOrderFlowPane.SavedState(paramAnonymousParcel, null);
    }
    
    public GHSOrderFlowPane.SavedState[] a(int paramAnonymousInt)
    {
      return new GHSOrderFlowPane.SavedState[paramAnonymousInt];
    }
  };
  j a;
  
  private GHSOrderFlowPane$SavedState(Parcel paramParcel)
  {
    super(paramParcel);
    try
    {
      a = ((j)Enum.valueOf(j.class, paramParcel.readString()));
      return;
    }
    catch (IllegalArgumentException paramParcel)
    {
      a = j.COLLAPSED;
    }
  }
  
  GHSOrderFlowPane$SavedState(Parcelable paramParcelable)
  {
    super(paramParcelable);
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeString(a.toString());
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.GHSOrderFlowPane.SavedState
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */