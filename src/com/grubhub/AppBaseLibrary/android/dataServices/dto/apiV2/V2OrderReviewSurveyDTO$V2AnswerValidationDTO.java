package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIOrderReviewSurveyDataModel.GHSIAnswerValidationDataModel;

public class V2OrderReviewSurveyDTO$V2AnswerValidationDTO
  implements GHSIOrderReviewSurveyDataModel.GHSIAnswerValidationDataModel
{
  public static final Parcelable.Creator<V2AnswerValidationDTO> CREATOR = new Parcelable.Creator()
  {
    public V2OrderReviewSurveyDTO.V2AnswerValidationDTO createFromParcel(Parcel paramAnonymousParcel)
    {
      return new V2OrderReviewSurveyDTO.V2AnswerValidationDTO(paramAnonymousParcel, null);
    }
    
    public V2OrderReviewSurveyDTO.V2AnswerValidationDTO[] newArray(int paramAnonymousInt)
    {
      return new V2OrderReviewSurveyDTO.V2AnswerValidationDTO[paramAnonymousInt];
    }
  };
  private Integer max_range_value;
  private Integer min_range_value;
  private Integer min_word_count;
  
  public V2OrderReviewSurveyDTO$V2AnswerValidationDTO() {}
  
  private V2OrderReviewSurveyDTO$V2AnswerValidationDTO(Parcel paramParcel)
  {
    min_range_value = ((Integer)paramParcel.readValue(null));
    max_range_value = ((Integer)paramParcel.readValue(null));
    min_word_count = ((Integer)paramParcel.readValue(null));
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public Integer getMaxRangeValue()
  {
    return max_range_value;
  }
  
  public Integer getMinRangeValue()
  {
    return min_range_value;
  }
  
  public Integer getMinWordCount()
  {
    return min_word_count;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeValue(min_range_value);
    paramParcel.writeValue(max_range_value);
    paramParcel.writeValue(min_word_count);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2OrderReviewSurveyDTO.V2AnswerValidationDTO
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */