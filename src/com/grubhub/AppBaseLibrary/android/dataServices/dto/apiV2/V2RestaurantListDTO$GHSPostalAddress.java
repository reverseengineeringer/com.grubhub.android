package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2;

class V2RestaurantListDTO$GHSPostalAddress
{
  private String address_country;
  private String address_locality;
  private String address_region;
  private String post_office_box_number;
  private String postal_code;
  private String street_address;
  
  private V2RestaurantListDTO$GHSPostalAddress(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    street_address = paramString1;
    address_locality = paramString2;
    address_country = paramString5;
    address_region = paramString3;
    postal_code = paramString4;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2RestaurantListDTO.GHSPostalAddress
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */