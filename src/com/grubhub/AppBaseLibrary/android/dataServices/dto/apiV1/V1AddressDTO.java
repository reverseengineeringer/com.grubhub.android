package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1;

import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSBaseDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAddressDataModel;

public class V1AddressDTO
  extends GHSBaseDataModel
  implements GHSIAddressDataModel
{
  private String address1;
  private String address2;
  private String city;
  private String crossStreet;
  private String deliveryInstructions;
  private String emailAddress;
  private String id;
  private boolean isDefault;
  private boolean isPrecise;
  private boolean isSavedAddress;
  private String label;
  private String lat;
  private String lng;
  private String phone;
  private Float pickupRadius;
  private String state;
  private String zip;
  
  public String getAddress1()
  {
    return address1;
  }
  
  public String getAddress2()
  {
    return address2;
  }
  
  public String getCity()
  {
    return city;
  }
  
  public String getCountry()
  {
    return null;
  }
  
  public String getCrossStreet()
  {
    return crossStreet;
  }
  
  public String getDeliveryInstructions()
  {
    return deliveryInstructions;
  }
  
  public String getEmailAddress()
  {
    return emailAddress;
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
    return isPrecise;
  }
  
  public boolean getIsSavedAddress()
  {
    return isSavedAddress;
  }
  
  public String getLabel()
  {
    return label;
  }
  
  public String getLatitude()
  {
    return lat;
  }
  
  public String getLongitude()
  {
    return lng;
  }
  
  public String getPhone()
  {
    return phone;
  }
  
  public Float getPickupRadius()
  {
    return pickupRadius;
  }
  
  public String getState()
  {
    return state;
  }
  
  public String getZip()
  {
    return zip;
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
    deliveryInstructions = paramString;
  }
  
  public void setEmailAddress(String paramString)
  {
    emailAddress = paramString;
  }
  
  public void setId(String paramString)
  {
    id = paramString;
  }
  
  public void setIsDefault(boolean paramBoolean)
  {
    isDefault = paramBoolean;
  }
  
  public void setIsPrecise(boolean paramBoolean)
  {
    isPrecise = paramBoolean;
  }
  
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
    lat = paramString;
  }
  
  public void setLongitude(String paramString)
  {
    lng = paramString;
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
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1.V1AddressDTO
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */