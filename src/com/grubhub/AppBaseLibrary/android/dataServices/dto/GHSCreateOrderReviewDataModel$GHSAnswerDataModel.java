package com.grubhub.AppBaseLibrary.android.dataServices.dto;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class GHSCreateOrderReviewDataModel$GHSAnswerDataModel
  implements Parcelable
{
  public static final Parcelable.Creator<GHSAnswerDataModel> CREATOR = new Parcelable.Creator()
  {
    public GHSCreateOrderReviewDataModel.GHSAnswerDataModel createFromParcel(Parcel paramAnonymousParcel)
    {
      return new GHSCreateOrderReviewDataModel.GHSAnswerDataModel(paramAnonymousParcel, null);
    }
    
    public GHSCreateOrderReviewDataModel.GHSAnswerDataModel[] newArray(int paramAnonymousInt)
    {
      return new GHSCreateOrderReviewDataModel.GHSAnswerDataModel[paramAnonymousInt];
    }
  };
  private String answerId;
  private String questionId;
  private Boolean skipped;
  private String value;
  
  public GHSCreateOrderReviewDataModel$GHSAnswerDataModel() {}
  
  private GHSCreateOrderReviewDataModel$GHSAnswerDataModel(Parcel paramParcel)
  {
    questionId = ((String)paramParcel.readValue(null));
    answerId = ((String)paramParcel.readValue(null));
    value = ((String)paramParcel.readValue(null));
    skipped = ((Boolean)paramParcel.readValue(null));
  }
  
  public GHSCreateOrderReviewDataModel$GHSAnswerDataModel(String paramString1, String paramString2, String paramString3, Boolean paramBoolean)
  {
    questionId = paramString1;
    answerId = paramString2;
    value = paramString3;
    skipped = paramBoolean;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getAnswerId()
  {
    return answerId;
  }
  
  public String getQuestionId()
  {
    return questionId;
  }
  
  public String getValue()
  {
    return value;
  }
  
  public Boolean isSkipped()
  {
    return skipped;
  }
  
  public void setAnswerId(String paramString)
  {
    answerId = paramString;
  }
  
  public void setQuestionId(String paramString)
  {
    questionId = paramString;
  }
  
  public void setSkipped(Boolean paramBoolean)
  {
    skipped = paramBoolean;
  }
  
  public void setValue(String paramString)
  {
    value = paramString;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeValue(questionId);
    paramParcel.writeValue(answerId);
    paramParcel.writeValue(value);
    paramParcel.writeValue(skipped);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSCreateOrderReviewDataModel.GHSAnswerDataModel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */