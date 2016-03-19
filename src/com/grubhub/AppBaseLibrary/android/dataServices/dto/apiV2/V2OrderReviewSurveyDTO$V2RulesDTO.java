package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIOrderReviewSurveyDataModel.GHSIRulesDataModel;
import java.util.ArrayList;

public class V2OrderReviewSurveyDTO$V2RulesDTO
  implements GHSIOrderReviewSurveyDataModel.GHSIRulesDataModel
{
  public static final Parcelable.Creator<V2RulesDTO> CREATOR = new Parcelable.Creator()
  {
    public V2OrderReviewSurveyDTO.V2RulesDTO createFromParcel(Parcel paramAnonymousParcel)
    {
      return new V2OrderReviewSurveyDTO.V2RulesDTO(paramAnonymousParcel, null);
    }
    
    public V2OrderReviewSurveyDTO.V2RulesDTO[] newArray(int paramAnonymousInt)
    {
      return new V2OrderReviewSurveyDTO.V2RulesDTO[paramAnonymousInt];
    }
  };
  private ArrayList<String> preconditions;
  private String question;
  
  public V2OrderReviewSurveyDTO$V2RulesDTO() {}
  
  private V2OrderReviewSurveyDTO$V2RulesDTO(Parcel paramParcel)
  {
    question = ((String)paramParcel.readValue(null));
    preconditions = new ArrayList();
    paramParcel.readList(preconditions, String.class.getClassLoader());
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public ArrayList<String> getPreconditions()
  {
    return preconditions;
  }
  
  public String getQuestionId()
  {
    return question;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeValue(question);
    paramParcel.writeList(preconditions);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2OrderReviewSurveyDTO.V2RulesDTO
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */