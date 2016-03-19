package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1;

import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIErrorMessage;

public class V1ErrorMessageWrapperDTO$V1ErrorMessageDTO
  implements GHSIErrorMessage
{
  private String field;
  private String message;
  private String msgCode;
  private String type;
  
  public String getCode()
  {
    return msgCode;
  }
  
  public String getField()
  {
    return field;
  }
  
  public String getMessage()
  {
    return message;
  }
  
  public String getType()
  {
    return type;
  }
  
  public void setCode(String paramString)
  {
    msgCode = paramString;
  }
  
  public void setField(String paramString)
  {
    field = paramString;
  }
  
  public void setMessage(String paramString)
  {
    message = paramString;
  }
  
  public void setType(String paramString)
  {
    type = paramString;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1.V1ErrorMessageWrapperDTO.V1ErrorMessageDTO
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */