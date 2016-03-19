package com.grubhub.AppBaseLibrary.android.dataServices.dto;

import java.util.ArrayList;

public class GooglePlaceSearchDataModel
{
  private ArrayList<GooglePlaceResultDataModel> results;
  private String status;
  
  public ArrayList<GooglePlaceResultDataModel> getSearchResults()
  {
    return results;
  }
  
  public String getStatus()
  {
    return status;
  }
  
  public boolean hasZeroResults()
  {
    return (status != null) && (status.equals("ZERO_RESULTS"));
  }
  
  public boolean isStatusOk()
  {
    return (status != null) && (status.equals("OK"));
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.GooglePlaceSearchDataModel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */