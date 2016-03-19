package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIOrderReviewSurveyDataModel.GHSAnswerType;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIOrderReviewSurveyDataModel.GHSIAnswerOptionDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIOrderReviewSurveyDataModel.GHSIAnswerValidationDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIOrderReviewSurveyDataModel.GHSIQuestionDataModel;
import java.util.ArrayList;

public class V2OrderReviewSurveyDTO$V2QuestionDTO
  implements GHSIOrderReviewSurveyDataModel.GHSIQuestionDataModel
{
  public static final Parcelable.Creator<V2QuestionDTO> CREATOR = new Parcelable.Creator()
  {
    public V2OrderReviewSurveyDTO.V2QuestionDTO createFromParcel(Parcel paramAnonymousParcel)
    {
      return new V2OrderReviewSurveyDTO.V2QuestionDTO(paramAnonymousParcel, null);
    }
    
    public V2OrderReviewSurveyDTO.V2QuestionDTO[] newArray(int paramAnonymousInt)
    {
      return new V2OrderReviewSurveyDTO.V2QuestionDTO[paramAnonymousInt];
    }
  };
  private ArrayList<V2OrderReviewSurveyDTO.V2AnswerOptionDTO> answer_options;
  private String answer_type;
  private V2OrderReviewSurveyDTO.V2AnswerValidationDTO answer_validations;
  private String display_text;
  private String facet;
  private String question_id;
  
  public V2OrderReviewSurveyDTO$V2QuestionDTO() {}
  
  private V2OrderReviewSurveyDTO$V2QuestionDTO(Parcel paramParcel)
  {
    question_id = ((String)paramParcel.readValue(null));
    display_text = ((String)paramParcel.readValue(null));
    facet = ((String)paramParcel.readValue(null));
    answer_type = ((String)paramParcel.readValue(null));
    answer_options = new ArrayList();
    paramParcel.readList(answer_options, V2OrderReviewSurveyDTO.V2AnswerOptionDTO.class.getClassLoader());
    answer_validations = ((V2OrderReviewSurveyDTO.V2AnswerValidationDTO)paramParcel.readParcelable(V2OrderReviewSurveyDTO.V2AnswerValidationDTO.class.getClassLoader()));
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public ArrayList<GHSIOrderReviewSurveyDataModel.GHSIAnswerOptionDataModel> getAnswerOptions()
  {
    if (answer_options != null) {
      return new ArrayList(answer_options);
    }
    return null;
  }
  
  public GHSIOrderReviewSurveyDataModel.GHSAnswerType getAnswerType()
  {
    String str;
    int i;
    if (answer_type != null)
    {
      str = answer_type;
      i = -1;
      switch (str.hashCode())
      {
      }
    }
    for (;;)
    {
      switch (i)
      {
      default: 
        return GHSIOrderReviewSurveyDataModel.GHSAnswerType.UNKNOWN;
        if (str.equals("MULTI"))
        {
          i = 0;
          continue;
          if (str.equals("RANGE"))
          {
            i = 1;
            continue;
            if (str.equals("FREE_TEXT")) {
              i = 2;
            }
          }
        }
        break;
      }
    }
    return GHSIOrderReviewSurveyDataModel.GHSAnswerType.MULTI;
    return GHSIOrderReviewSurveyDataModel.GHSAnswerType.RANGE;
    return GHSIOrderReviewSurveyDataModel.GHSAnswerType.FREE_TEXT;
  }
  
  public GHSIOrderReviewSurveyDataModel.GHSIAnswerValidationDataModel getAnswerValidations()
  {
    return answer_validations;
  }
  
  public String getDisplayText()
  {
    return display_text;
  }
  
  public String getFacet()
  {
    return facet;
  }
  
  public String getQuestionId()
  {
    return question_id;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeValue(question_id);
    paramParcel.writeValue(display_text);
    paramParcel.writeValue(facet);
    paramParcel.writeValue(answer_type);
    paramParcel.writeList(answer_options);
    paramParcel.writeParcelable(answer_validations, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2OrderReviewSurveyDTO.V2QuestionDTO
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */