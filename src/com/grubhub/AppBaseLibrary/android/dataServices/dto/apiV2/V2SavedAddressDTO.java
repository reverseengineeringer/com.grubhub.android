package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2;

import android.text.TextUtils;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSBaseDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAddressDataModel;

public class V2SavedAddressDTO
  extends GHSBaseDataModel
  implements GHSIAddressDataModel
{
  private String address_country;
  private String address_locality;
  private String address_region;
  private String cross_street;
  private String diner_id;
  private String id;
  private boolean isDefault;
  private boolean isSavedAddress;
  private String label;
  private Long last_used;
  private String latitude;
  private String longitude;
  private String phone;
  private Float pickup_radius;
  private String postal_code;
  private String special_instructions;
  private String street_address1;
  private String street_address2;
  
  private String trimValue(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return paramString;
    }
    return paramString.trim();
  }
  
  public String getAddress1()
  {
    return trimValue(street_address1);
  }
  
  public String getAddress2()
  {
    return trimValue(street_address2);
  }
  
  public String getCity()
  {
    return trimValue(address_locality);
  }
  
  public String getCountry()
  {
    return trimValue(address_country);
  }
  
  public String getCrossStreet()
  {
    return trimValue(cross_street);
  }
  
  public String getDeliveryInstructions()
  {
    return trimValue(special_instructions);
  }
  
  public String getEmailAddress()
  {
    return null;
  }
  
  public String getId()
  {
    return id;
  }
  
  public boolean getIsDefault()
  {
    return isDefault;
  }
  
  public boolean getIsPrecise()
  {
    return true;
  }
  
  public boolean getIsSavedAddress()
  {
    return isSavedAddress;
  }
  
  public String getLabel()
  {
    return trimValue(label);
  }
  
  public String getLatitude()
  {
    return latitude;
  }
  
  public String getLongitude()
  {
    return longitude;
  }
  
  public String getPhone()
  {
    return trimValue(phone);
  }
  
  public Float getPickupRadius()
  {
    return pickup_radius;
  }
  
  public String getState()
  {
    return trimValue(address_region);
  }
  
  public String getZip()
  {
    return trimValue(postal_code);
  }
  
  public void setAddress1(String paramString)
  {
    street_address1 = paramString;
  }
  
  public void setAddress2(String paramString)
  {
    street_address2 = paramString;
  }
  
  public void setCity(String paramString)
  {
    address_locality = paramString;
  }
  
  public void setCountry(String paramString)
  {
    address_country = paramString;
  }
  
  public void setCrossStreet(String paramString)
  {
    cross_street = paramString;
  }
  
  public void setDeliveryInstructions(String paramString)
  {
    special_instructions = paramString;
  }
  
  public void setEmailAddress(String paramString) {}
  
  public void setId(String paramString)
  {
    id = paramString;
  }
  
  public void setIsDefault(boolean paramBoolean)
  {
    isDefault = paramBoolean;
  }
  
  public void setIsPrecise(boolean paramBoolean) {}
  
  public void setIsSavedAddress(boolean paramBoolean)
  {
    isSavedAddress = paramBoolean;
  }
  
  public void setLabel(String paramString)
  {
    label = paramString;
  }
  
  public void setLatitude(String paramString)
  {
    latitude = paramString;
  }
  
  public void setLongitude(String paramString)
  {
    longitude = paramString;
  }
  
  public void setPhone(String paramString)
  {
    phone = paramString;
  }
  
  public void setPickupRadius(Float paramFloat)
  {
    pickup_radius = paramFloat;
  }
  
  public void setState(String paramString)
  {
    address_region = paramString;
  }
  
  public void setZip(String paramString)
  {
    postal_code = paramString;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2SavedAddressDTO
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */