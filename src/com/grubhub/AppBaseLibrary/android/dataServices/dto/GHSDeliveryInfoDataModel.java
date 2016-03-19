package com.grubhub.AppBaseLibrary.android.dataServices.dto;

import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.dataServices.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAddressDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIDeliveryInfo;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIUserAuthDataModel;
import com.grubhub.AppBaseLibrary.android.utils.f;

public class GHSDeliveryInfoDataModel
  implements GHSIDeliveryInfo
{
  private static final String COUNTRY_US = "US";
  private String addressCountry;
  private String addressLocality;
  private String addressRegion;
  private String crossStreets;
  private String deliveryInstructions;
  private String email;
  private Boolean greenIndicated;
  private String latitude;
  private String longitude;
  private String name;
  private String phone;
  private String postalCode;
  private String streetAddress1;
  private String streetAddress2;
  
  public GHSDeliveryInfoDataModel(GHSIAddressDataModel paramGHSIAddressDataModel)
  {
    if (paramGHSIAddressDataModel != null)
    {
      setStreetAddress1(paramGHSIAddressDataModel.getAddress1());
      setStreetAddress2(paramGHSIAddressDataModel.getAddress2());
      setCrossStreets(paramGHSIAddressDataModel.getCrossStreet());
      setAddressLocality(paramGHSIAddressDataModel.getCity());
      setAddressRegion(paramGHSIAddressDataModel.getState());
      setDeliveryInstructions(paramGHSIAddressDataModel.getDeliveryInstructions());
      setLatitude(paramGHSIAddressDataModel.getLatitude());
      setLongitude(paramGHSIAddressDataModel.getLongitude());
      setPhone(paramGHSIAddressDataModel.getPhone());
      setPostalCode(paramGHSIAddressDataModel.getZip());
    }
    setAddressCountry("US");
    GHSIUserAuthDataModel localGHSIUserAuthDataModel = GHSApplication.a().b().N();
    if (localGHSIUserAuthDataModel != null)
    {
      String str = localGHSIUserAuthDataModel.getFirstName();
      if ((str == null) || (!f.b(localGHSIUserAuthDataModel.getLastName()))) {
        break label222;
      }
      paramGHSIAddressDataModel = str;
      if (str.length() > 0) {
        paramGHSIAddressDataModel = str + " ";
      }
    }
    label222:
    for (paramGHSIAddressDataModel = paramGHSIAddressDataModel + localGHSIUserAuthDataModel.getLastName();; paramGHSIAddressDataModel = localGHSIUserAuthDataModel.getLastName())
    {
      setName(paramGHSIAddressDataModel);
      setEmail(localGHSIUserAuthDataModel.getEmail());
      return;
    }
  }
  
  public String getAddressCountry()
  {
    return addressCountry;
  }
  
  public String getAddressLocality()
  {
    return addressLocality;
  }
  
  public String getAddressRegion()
  {
    return addressRegion;
  }
  
  public String getCrossStreets()
  {
    return crossStreets;
  }
  
  public String getDeliveryInstructions()
  {
    return deliveryInstructions;
  }
  
  public String getEmail()
  {
    return email;
  }
  
  public Boolean getGreenIndicated()
  {
    return greenIndicated;
  }
  
  public String getLatitude()
  {
    return latitude;
  }
  
  public String getLongitude()
  {
    return longitude;
  }
  
  public String getName()
  {
    return name;
  }
  
  public String getPhone()
  {
    return phone;
  }
  
  public String getPostalCode()
  {
    return postalCode;
  }
  
  public String getStreetAddress1()
  {
    return streetAddress1;
  }
  
  public String getStreetAddress2()
  {
    return streetAddress2;
  }
  
  public void setAddressCountry(String paramString)
  {
    addressCountry = paramString;
  }
  
  public void setAddressLocality(String paramString)
  {
    addressLocality = paramString;
  }
  
  public void setAddressRegion(String paramString)
  {
    addressRegion = paramString;
  }
  
  public void setCrossStreets(String paramString)
  {
    crossStreets = paramString;
  }
  
  public void setDeliveryInstructions(String paramString)
  {
    deliveryInstructions = paramString;
  }
  
  public void setEmail(String paramString)
  {
    email = paramString;
  }
  
  public void setGreenIndicated(Boolean paramBoolean)
  {
    greenIndicated = paramBoolean;
  }
  
  public void setLatitude(String paramString)
  {
    latitude = paramString;
  }
  
  public void setLongitude(String paramString)
  {
    longitude = paramString;
  }
  
  public void setName(String paramString)
  {
    name = paramString;
  }
  
  public void setPhone(String paramString)
  {
    phone = paramString;
  }
  
  public void setPostalCode(String paramString)
  {
    postalCode = paramString;
  }
  
  public void setStreetAddress1(String paramString)
  {
    streetAddress1 = paramString;
  }
  
  public void setStreetAddress2(String paramString)
  {
    streetAddress2 = paramString;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSDeliveryInfoDataModel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */