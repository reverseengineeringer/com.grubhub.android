package com.grubhub.AppBaseLibrary.android.dataServices.interfaces;

import java.util.List;

public abstract interface GHSIDeletedPaymentModel
{
  public abstract String getMessage();
  
  public abstract GHSIDeletedPaymentModel.Status getStatus();
  
  public abstract List<GHSIDeletedPaymentModel.GHSIValidationError> getValidationErrors();
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIDeletedPaymentModel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */