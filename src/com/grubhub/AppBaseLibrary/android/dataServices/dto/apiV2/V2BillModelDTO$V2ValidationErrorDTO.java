package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2;

import com.grubhub.AppBaseLibrary.android.b.a;
import com.grubhub.AppBaseLibrary.android.b.b;
import com.grubhub.AppBaseLibrary.android.b.c;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIBillModel.GHSIValidationError;
import com.grubhub.AppBaseLibrary.android.utils.f;

class V2BillModelDTO$V2ValidationErrorDTO
  extends V2ErrorMessageDTO
  implements GHSIBillModel.GHSIValidationError
{
  private V2BillModelDTO$V2ValidationErrorDTO(V2BillModelDTO paramV2BillModelDTO) {}
  
  public a getAppError()
  {
    b localb = new b(a.ERROR_CODE_UNKNOWN);
    if ((f.b(property)) && (f.b(message_key)))
    {
      localb.b(new c(property, message_key));
      V2ErrorMapper.mapToAppError("GetBill", localb);
    }
    return localb.c();
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2BillModelDTO.V2ValidationErrorDTO
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */