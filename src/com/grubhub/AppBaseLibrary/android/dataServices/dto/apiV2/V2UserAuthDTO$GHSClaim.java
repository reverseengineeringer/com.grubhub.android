package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2;

import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIUserAuthDataModel.GHSIClaim;

public class V2UserAuthDTO$GHSClaim
  implements GHSIUserAuthDataModel.GHSIClaim
{
  private String claim;
  private String claim_id;
  private String claim_type;
  private String ud_id;
  
  public V2UserAuthDTO$GHSClaim(V2UserAuthDTO paramV2UserAuthDTO) {}
  
  public String getClaim()
  {
    return claim;
  }
  
  public String getClaim_id()
  {
    return claim_id;
  }
  
  public String getClaim_type()
  {
    return claim_type;
  }
  
  public String getUd_id()
  {
    return ud_id;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2UserAuthDTO.GHSClaim
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */