package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2;

import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRecommendationsModel.GHSIRecommendedRestaurant.GHSIRecommendedRestaurantAddress;

class V2RecommendationResultDTO$V2RecommendedRestaurant$V2RecommendedRestaurantAddress
  implements GHSIRecommendationsModel.GHSIRecommendedRestaurant.GHSIRecommendedRestaurantAddress
{
  private String address_country;
  private String address_locality;
  private String address_region;
  private String postal_code;
  private String street_address;
  
  private V2RecommendationResultDTO$V2RecommendedRestaurant$V2RecommendedRestaurantAddress(V2RecommendationResultDTO.V2RecommendedRestaurant paramV2RecommendedRestaurant) {}
  
  public String getAddressCountry()
  {
    return address_country;
  }
  
  public String getAddressLocality()
  {
    return address_locality;
  }
  
  public String getAddressRegion()
  {
    return address_region;
  }
  
  public String getPostalCode()
  {
    return postal_code;
  }
  
  public String getStreetAddress()
  {
    return street_address;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2RecommendationResultDTO.V2RecommendedRestaurant.V2RecommendedRestaurantAddress
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */