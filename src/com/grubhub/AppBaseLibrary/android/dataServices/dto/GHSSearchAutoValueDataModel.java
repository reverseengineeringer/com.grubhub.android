package com.grubhub.AppBaseLibrary.android.dataServices.dto;

public class GHSSearchAutoValueDataModel
{
  Double distance_in_miles;
  String id;
  String image_url;
  GHSSearchAutoValueDataModel.GHSMediaImage media_image;
  boolean open;
  String value;
  
  public Double getDistanceInMiles()
  {
    return distance_in_miles;
  }
  
  public String getId()
  {
    return id;
  }
  
  public String getImageUrl()
  {
    return image_url;
  }
  
  public String getValue()
  {
    return value;
  }
  
  public boolean isOpen()
  {
    return open;
  }
  
  public void setId(String paramString)
  {
    id = paramString;
  }
  
  public void setValue(String paramString)
  {
    value = paramString;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSSearchAutoValueDataModel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */