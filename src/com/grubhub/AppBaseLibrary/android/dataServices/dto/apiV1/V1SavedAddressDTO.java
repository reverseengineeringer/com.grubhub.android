package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1;

import android.text.TextUtils;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSBaseDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAddressDataModel;

public class V1SavedAddressDTO
  extends GHSBaseDataModel
  implements GHSIAddressDataModel
{
  private String address1;
  private String address2;
  private String cachedGeocodeLatitude;
  private String cachedGeocodeLongitude;
  private String city;
  private String crossStreet;
  private String id;
  private boolean isDefault;
  private boolean isSavedAddress;
  private String label;
  private String phone;
  private Float pickupRadius;
  private String specialInstructions;
  private String state;
  private String zip;
  
  private String trimValue(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return paramString;
    }
    return paramString.trim();
  }
  
  public String getAddress1()
  {
    return trimValue(address1);
  }
  
  public String getAddress2()
  {
    return trimValue(address2);
  }
  
  public String getCity()
  {
    return trimValue(city);
  }
  
  public String getCountry()
  {
    return null;
  }
  
  public String getCrossStreet()
  {
    return trimValue(crossStreet);
  }
  
  public String getDeliveryInstructions()
  {
    return trimValue(specialInstructions);
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
    return cachedGeocodeLatitude;
  }
  
  public String getLongitude()
  {
    return cachedGeocodeLongitude;
  }
  
  public String getPhone()
  {
    return trimValue(phone);
  }
  
  public Float getPickupRadius()
  {
    return pickupRadius;
  }
  
  public String getState()
  {
    return trimValue(state);
  }
  
  public String getZip()
  {
    return trimValue(zip);
  }
  
  public void setAddress1(String paramString)
  {
    address1 = paramString;
  }
  
  public void setAddress2(String paramString)
  {
    address2 = paramString;
  }
  
  public void setCity(String paramString)
  {
    city = paramString;
  }
  
  public void setCountry(String paramString) {}
  
  public void setCrossStreet(String paramString)
  {
    crossStreet = paramString;
  }
  
  public void setDeliveryInstructions(String paramString)
  {
    specialInstructions = paramString;
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
    cachedGeocodeLatitude = paramString;
  }
  
  public void setLongitude(String paramString)
  {
    cachedGeocodeLongitude = paramString;
  }
  
  public void setPhone(String paramString)
  {
    phone = paramString;
  }
  
  public void setPickupRadius(Float paramFloat)
  {
    pickupRadius = paramFloat;
  }
  
  public void setState(String paramString)
  {
    state = paramString;
  }
  
  public void setZip(String paramString)
  {
    zip = paramString;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1.V1SavedAddressDTO
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */