package com.grubhub.AppBaseLibrary.android.dataServices.dto;

import java.util.ArrayList;

public class GooglePlaceAutoCompleteDataModel$Prediction
{
  private String description;
  private String id;
  private ArrayList<GooglePlaceAutoCompleteDataModel.MatchedSubstring> matched_substrings;
  private String place_id;
  private String reference;
  private ArrayList<GooglePlaceAutoCompleteDataModel.Term> terms;
  private ArrayList<String> types;
  
  public String getPlaceId()
  {
    return place_id;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.GooglePlaceAutoCompleteDataModel.Prediction
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */