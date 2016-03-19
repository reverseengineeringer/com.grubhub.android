package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2;

import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIDeletedPaymentModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIDeletedPaymentModel.GHSIValidationError;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIDeletedPaymentModel.Status;
import java.util.ArrayList;
import java.util.List;

public class V2DeletedPaymentDTO
  implements GHSIDeletedPaymentModel
{
  private String message;
  private String status;
  private ArrayList<V2DeletedPaymentDTO.ValidationError> validation_errors;
  
  public String getMessage()
  {
    return message;
  }
  
  public GHSIDeletedPaymentModel.Status getStatus()
  {
    return GHSIDeletedPaymentModel.Status.fromString(status);
  }
  
  public List<GHSIDeletedPaymentModel.GHSIValidationError> getValidationErrors()
  {
    if ((validation_errors != null) && (!validation_errors.isEmpty())) {
      return new ArrayList(validation_errors);
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2DeletedPaymentDTO
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */