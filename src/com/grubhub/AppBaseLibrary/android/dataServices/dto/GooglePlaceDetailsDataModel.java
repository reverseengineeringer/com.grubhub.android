package com.grubhub.AppBaseLibrary.android.dataServices.dto;

public class GooglePlaceDetailsDataModel
{
  private GooglePlaceResultDataModel result;
  private String status;
  
  public GooglePlaceResultDataModel getResult()
  {
    return result;
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
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.GooglePlaceDetailsDataModel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */