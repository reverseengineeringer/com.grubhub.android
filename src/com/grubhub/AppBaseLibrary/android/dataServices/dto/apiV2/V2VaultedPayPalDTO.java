package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2;

import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIVaultedPayPalModel;

public class V2VaultedPayPalDTO
  implements GHSIVaultedPayPalModel
{
  private String email;
  private String id;
  
  public String getEmail()
  {
    return email;
  }
  
  public String getId()
  {
    return id;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2VaultedPayPalDTO
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */