package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2;

import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSCreditCardModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIGetPaymentsModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIVaultedCreditCardModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIVaultedPayPalModel;
import java.util.ArrayList;

public class V2VaultedPaymentsDTO
  implements GHSIGetPaymentsModel
{
  private ArrayList<GHSCreditCardModel> credit_cards;
  private ArrayList<V2VaultedPayPalDTO> paypals;
  
  public ArrayList<GHSIVaultedCreditCardModel> getCreditCards()
  {
    if (credit_cards != null) {
      return new ArrayList(credit_cards);
    }
    return null;
  }
  
  public ArrayList<GHSIVaultedPayPalModel> getPayPals()
  {
    if (paypals != null) {
      return new ArrayList(paypals);
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2VaultedPaymentsDTO
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */