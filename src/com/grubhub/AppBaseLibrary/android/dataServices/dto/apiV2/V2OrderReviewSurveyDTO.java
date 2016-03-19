package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIOrderReviewSurveyDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIOrderReviewSurveyDataModel.GHSIQuestionDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIOrderReviewSurveyDataModel.GHSIRulesDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIOrderReviewSurveyDataModel.GHSSurveyType;
import java.util.ArrayList;

public class V2OrderReviewSurveyDTO
  implements GHSIOrderReviewSurveyDataModel
{
  public static final Parcelable.Creator<V2OrderReviewSurveyDTO> CREATOR = new Parcelable.Creator()
  {
    public V2OrderReviewSurveyDTO createFromParcel(Parcel paramAnonymousParcel)
    {
      return new V2OrderReviewSurveyDTO(paramAnonymousParcel, null);
    }
    
    public V2OrderReviewSurveyDTO[] newArray(int paramAnonymousInt)
    {
      return new V2OrderReviewSurveyDTO[paramAnonymousInt];
    }
  };
  private ArrayList<V2OrderReviewSurveyDTO.V2QuestionDTO> content;
  private Integer node;
  private ArrayList<V2OrderReviewSurveyDTO.V2RulesDTO> rules;
  private V2OrderReviewSurveyDTO.V2SkipDTO skip;
  private String type;
  
  public V2OrderReviewSurveyDTO() {}
  
  private V2OrderReviewSurveyDTO(Parcel paramParcel)
  {
    node = ((Integer)paramParcel.readValue(null));
    type = ((String)paramParcel.readValue(null));
    skip = ((V2OrderReviewSurveyDTO.V2SkipDTO)paramParcel.readParcelable(V2OrderReviewSurveyDTO.V2SkipDTO.class.getClassLoader()));
    content = new ArrayList();
    paramParcel.readList(content, V2OrderReviewSurveyDTO.V2QuestionDTO.class.getClassLoader());
    rules = new ArrayList();
    paramParcel.readList(rules, V2OrderReviewSurveyDTO.V2RulesDTO.class.getClassLoader());
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public Integer getNodeNumber()
  {
    return node;
  }
  
  public ArrayList<GHSIOrderReviewSurveyDataModel.GHSIQuestionDataModel> getQuestions()
  {
    if (content != null) {
      return new ArrayList(content);
    }
    return null;
  }
  
  public ArrayList<GHSIOrderReviewSurveyDataModel.GHSIRulesDataModel> getRules()
  {
    if (rules != null) {
      return new ArrayList(rules);
    }
    return null;
  }
  
  public Integer getSkipNextNodeNumber()
  {
    if (skip != null) {
      return V2OrderReviewSurveyDTO.V2SkipDTO.access$200(skip);
    }
    return null;
  }
  
  public GHSIOrderReviewSurveyDataModel.GHSSurveyType getType()
  {
    String str;
    int i;
    if (type != null)
    {
      str = type;
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
        return GHSIOrderReviewSurveyDataModel.GHSSurveyType.UNKNOWN;
        if (str.equals("SINGLE"))
        {
          i = 0;
          continue;
          if (str.equals("LIST"))
          {
            i = 1;
            continue;
            if (str.equals("RATING_REVIEW")) {
              i = 2;
            }
          }
        }
        break;
      }
    }
    return GHSIOrderReviewSurveyDataModel.GHSSurveyType.SINGLE;
    return GHSIOrderReviewSurveyDataModel.GHSSurveyType.UNKNOWN;
    return GHSIOrderReviewSurveyDataModel.GHSSurveyType.RATING_REVIEW;
  }
  
  public boolean isSkippable()
  {
    return (skip != null) && (V2OrderReviewSurveyDTO.V2SkipDTO.access$100(skip).booleanValue());
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeValue(node);
    paramParcel.writeValue(type);
    paramParcel.writeParcelable(skip, paramInt);
    paramParcel.writeList(content);
    paramParcel.writeList(rules);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2OrderReviewSurveyDTO
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */