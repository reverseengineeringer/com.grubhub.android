package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2;

import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIUserAuthDataModel.GHSICredential;

public class V2UserAuthDTO$GHSCredential
  implements GHSIUserAuthDataModel.GHSICredential
{
  public static final String BRAND_GRUBHUB = "GRUBHUB";
  public static final String BRAND_SEAMLESS = "SEAMLESS";
  private String brand;
  private String email;
  private String first_name;
  private String gh_login_id;
  private String last_name;
  private String ud_id;
  
  public V2UserAuthDTO$GHSCredential(V2UserAuthDTO paramV2UserAuthDTO) {}
  
  public String getBrand()
  {
    return brand;
  }
  
  public String getEmail()
  {
    return email;
  }
  
  public String getFirst_name()
  {
    return first_name;
  }
  
  public String getGh_login_id()
  {
    return gh_login_id;
  }
  
  public String getLast_name()
  {
    return last_name;
  }
  
  public String getUd_id()
  {
    return ud_id;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2UserAuthDTO.GHSCredential
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */