package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class V2OrderReviewSurveyDTO$V2SkipDTO
  implements Parcelable
{
  public static final Parcelable.Creator<V2SkipDTO> CREATOR = new Parcelable.Creator()
  {
    public V2OrderReviewSurveyDTO.V2SkipDTO createFromParcel(Parcel paramAnonymousParcel)
    {
      return new V2OrderReviewSurveyDTO.V2SkipDTO(paramAnonymousParcel, null);
    }
    
    public V2OrderReviewSurveyDTO.V2SkipDTO[] newArray(int paramAnonymousInt)
    {
      return new V2OrderReviewSurveyDTO.V2SkipDTO[paramAnonymousInt];
    }
  };
  private Integer next_node;
  private Boolean skippable;
  
  public V2OrderReviewSurveyDTO$V2SkipDTO() {}
  
  private V2OrderReviewSurveyDTO$V2SkipDTO(Parcel paramParcel)
  {
    skippable = ((Boolean)paramParcel.readValue(null));
    next_node = ((Integer)paramParcel.readValue(null));
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeValue(skippable);
    paramParcel.writeValue(next_node);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2OrderReviewSurveyDTO.V2SkipDTO
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */