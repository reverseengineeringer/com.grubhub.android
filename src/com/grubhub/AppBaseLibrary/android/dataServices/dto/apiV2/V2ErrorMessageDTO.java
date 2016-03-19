package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2;

import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIErrorMessage;

public class V2ErrorMessageDTO
  implements GHSIErrorMessage
{
  private static final String ERROR_TYPE = "error";
  protected String message_key;
  protected String property;
  
  public String getCode()
  {
    return message_key;
  }
  
  public String getField()
  {
    return property;
  }
  
  public String getMessage()
  {
    return message_key;
  }
  
  public String getType()
  {
    return "error";
  }
  
  public void setCode(String paramString)
  {
    message_key = paramString;
  }
  
  public void setField(String paramString)
  {
    property = paramString;
  }
  
  public void setMessage(String paramString)
  {
    message_key = paramString;
  }
  
  public void setType(String paramString) {}
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2ErrorMessageDTO
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */