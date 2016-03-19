package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2;

import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIBillModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIBillModel.BillState;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIBillModel.GHSIValidationError;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartPaymentDataModel.PaymentTypes;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public class V2BillModelDTO
  extends V2CartDTO
  implements GHSIBillModel
{
  private ArrayList<String> available_payment_types;
  private Integer balance;
  private String checkout_token;
  private String state;
  private ArrayList<V2BillModelDTO.V2ValidationErrorDTO> validation_errors;
  
  public List<GHSICartPaymentDataModel.PaymentTypes> getAvailablePaymentTypes()
  {
    if ((available_payment_types == null) || (available_payment_types.isEmpty())) {
      return new ArrayList();
    }
    LinkedList localLinkedList = new LinkedList();
    Iterator localIterator = available_payment_types.iterator();
    while (localIterator.hasNext())
    {
      GHSICartPaymentDataModel.PaymentTypes localPaymentTypes = GHSICartPaymentDataModel.PaymentTypes.fromString((String)localIterator.next());
      if (localPaymentTypes != null) {
        localLinkedList.add(localPaymentTypes);
      }
    }
    return localLinkedList;
  }
  
  public Integer getBalanceInCents()
  {
    return balance;
  }
  
  public Float getBalanceInDollars()
  {
    if (balance != null) {
      return Float.valueOf(centsToDollars(balance.intValue()));
    }
    return null;
  }
  
  public GHSIBillModel.BillState getBillState()
  {
    return GHSIBillModel.BillState.fromString(state);
  }
  
  public String getCheckoutToken()
  {
    return checkout_token;
  }
  
  public List<GHSIBillModel.GHSIValidationError> getValidationErrors()
  {
    if ((validation_errors != null) && (!validation_errors.isEmpty())) {
      return new ArrayList(validation_errors);
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2BillModelDTO
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */