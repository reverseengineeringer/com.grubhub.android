package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1;

import java.util.ArrayList;

public class V1ErrorMessageWrapperDTO
{
  private V1ErrorMessageWrapperDTO.V1ErrorMessageContainer messages;
  
  public ArrayList<V1ErrorMessageWrapperDTO.V1ErrorMessageDTO> getMessages()
  {
    if (messages != null) {
      return V1ErrorMessageWrapperDTO.V1ErrorMessageContainer.access$000(messages);
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1.V1ErrorMessageWrapperDTO
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */