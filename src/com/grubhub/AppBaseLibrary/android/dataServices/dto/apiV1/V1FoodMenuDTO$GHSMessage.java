package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1;

class V1FoodMenuDTO$GHSMessage
{
  private String field;
  private String message;
  private String msgCode;
  private String type;
  
  private V1FoodMenuDTO$GHSMessage(V1FoodMenuDTO paramV1FoodMenuDTO) {}
  
  private String getBadField()
  {
    return field;
  }
  
  private String getErrorCause()
  {
    return msgCode;
  }
  
  private String getErrorMessageString()
  {
    return message;
  }
  
  private String getErrorType()
  {
    return type;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1.V1FoodMenuDTO.GHSMessage
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */