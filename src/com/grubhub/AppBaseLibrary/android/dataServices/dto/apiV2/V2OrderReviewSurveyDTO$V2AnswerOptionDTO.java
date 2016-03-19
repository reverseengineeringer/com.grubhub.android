package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIOrderReviewSurveyDataModel.GHSIAnswerOptionDataModel;

public class V2OrderReviewSurveyDTO$V2AnswerOptionDTO
  implements GHSIOrderReviewSurveyDataModel.GHSIAnswerOptionDataModel
{
  public static final Parcelable.Creator<V2AnswerOptionDTO> CREATOR = new Parcelable.Creator()
  {
    public V2OrderReviewSurveyDTO.V2AnswerOptionDTO createFromParcel(Parcel paramAnonymousParcel)
    {
      return new V2OrderReviewSurveyDTO.V2AnswerOptionDTO(paramAnonymousParcel, null);
    }
    
    public V2OrderReviewSurveyDTO.V2AnswerOptionDTO[] newArray(int paramAnonymousInt)
    {
      return new V2OrderReviewSurveyDTO.V2AnswerOptionDTO[paramAnonymousInt];
    }
  };
  private String answer_id;
  private String display_text;
  private Integer next_node;
  private String value;
  
  public V2OrderReviewSurveyDTO$V2AnswerOptionDTO() {}
  
  private V2OrderReviewSurveyDTO$V2AnswerOptionDTO(Parcel paramParcel)
  {
    answer_id = ((String)paramParcel.readValue(null));
    display_text = ((String)paramParcel.readValue(null));
    value = ((String)paramParcel.readValue(null));
    next_node = ((Integer)paramParcel.readValue(null));
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getAnswerId()
  {
    return answer_id;
  }
  
  public String getDisplayText()
  {
    return display_text;
  }
  
  public Integer getNextNodeNumber()
  {
    return next_node;
  }
  
  public String getValue()
  {
    return value;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeValue(answer_id);
    paramParcel.writeValue(display_text);
    paramParcel.writeValue(value);
    paramParcel.writeValue(next_node);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2OrderReviewSurveyDTO.V2AnswerOptionDTO
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */