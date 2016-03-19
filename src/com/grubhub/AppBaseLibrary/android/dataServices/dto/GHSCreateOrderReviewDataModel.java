package com.grubhub.AppBaseLibrary.android.dataServices.dto;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.util.ArrayList;

public class GHSCreateOrderReviewDataModel
  implements Parcelable
{
  private static final String ANDROID_PLATFORM = "android-mobile";
  public static final Parcelable.Creator<GHSCreateOrderReviewDataModel> CREATOR = new Parcelable.Creator()
  {
    public GHSCreateOrderReviewDataModel createFromParcel(Parcel paramAnonymousParcel)
    {
      return new GHSCreateOrderReviewDataModel(paramAnonymousParcel, null);
    }
    
    public GHSCreateOrderReviewDataModel[] newArray(int paramAnonymousInt)
    {
      return new GHSCreateOrderReviewDataModel[paramAnonymousInt];
    }
  };
  private static final String SURVEY_VERSION = "1";
  private ArrayList<GHSCreateOrderReviewDataModel.GHSAnswerDataModel> answers;
  private GHSCreateOrderReviewDataModel.GHSInteractionType interaction;
  private GHSCreateOrderReviewDataModel.GHSLocationType location;
  private String orderId;
  private String platform;
  private String restaurantId;
  private String version;
  
  public GHSCreateOrderReviewDataModel()
  {
    version = "1";
    platform = "android-mobile";
  }
  
  private GHSCreateOrderReviewDataModel(Parcel paramParcel)
  {
    orderId = ((String)paramParcel.readValue(null));
    version = ((String)paramParcel.readValue(null));
    restaurantId = ((String)paramParcel.readValue(null));
    interaction = ((GHSCreateOrderReviewDataModel.GHSInteractionType)paramParcel.readSerializable());
    location = ((GHSCreateOrderReviewDataModel.GHSLocationType)paramParcel.readSerializable());
    platform = ((String)paramParcel.readValue(null));
    answers = new ArrayList();
    paramParcel.readList(answers, GHSCreateOrderReviewDataModel.GHSAnswerDataModel.class.getClassLoader());
  }
  
  public void addAnswer(GHSCreateOrderReviewDataModel.GHSAnswerDataModel paramGHSAnswerDataModel)
  {
    if (answers == null) {
      answers = new ArrayList();
    }
    answers.add(paramGHSAnswerDataModel);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public ArrayList<GHSCreateOrderReviewDataModel.GHSAnswerDataModel> getAnswers()
  {
    return answers;
  }
  
  public GHSCreateOrderReviewDataModel.GHSInteractionType getInteraction()
  {
    return interaction;
  }
  
  public GHSCreateOrderReviewDataModel.GHSLocationType getLocation()
  {
    return location;
  }
  
  public String getOrderId()
  {
    return orderId;
  }
  
  public String getPlatform()
  {
    return platform;
  }
  
  public String getRestaurantId()
  {
    return restaurantId;
  }
  
  public String getVersion()
  {
    return version;
  }
  
  public void setInteraction(GHSCreateOrderReviewDataModel.GHSInteractionType paramGHSInteractionType)
  {
    interaction = paramGHSInteractionType;
  }
  
  public void setLocation(GHSCreateOrderReviewDataModel.GHSLocationType paramGHSLocationType)
  {
    location = paramGHSLocationType;
  }
  
  public void setOrderId(String paramString)
  {
    orderId = paramString;
  }
  
  public void setPlatform(String paramString)
  {
    platform = paramString;
  }
  
  public void setRestaurantId(String paramString)
  {
    restaurantId = paramString;
  }
  
  public void setVersion(String paramString)
  {
    version = paramString;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeValue(orderId);
    paramParcel.writeValue(version);
    paramParcel.writeValue(restaurantId);
    paramParcel.writeSerializable(interaction);
    paramParcel.writeSerializable(location);
    paramParcel.writeValue(platform);
    paramParcel.writeList(answers);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSCreateOrderReviewDataModel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */