package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1;

import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantListDataModel.GHSIErrorMessage;

public class V1RestaurantListDTO$GHSMessage
  implements GHSIRestaurantListDataModel.GHSIErrorMessage
{
  private String field;
  private String message;
  private String msgCode;
  private String type;
  
  public V1RestaurantListDTO$GHSMessage(V1RestaurantListDTO paramV1RestaurantListDTO) {}
  
  public String getBadField()
  {
    return field;
  }
  
  public String getErrorMessageCode()
  {
    return msgCode;
  }
  
  public String getErrorMessageString()
  {
    return message;
  }
  
  public String getErrorType()
  {
    return type;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1.V1RestaurantListDTO.GHSMessage
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */