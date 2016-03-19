package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIDeliveryInfo;

public class V2DeliveryInfoDTO
  implements Parcelable, GHSIDeliveryInfo
{
  public static final Parcelable.Creator<V2DeliveryInfoDTO> CREATOR = new Parcelable.Creator()
  {
    public V2DeliveryInfoDTO createFromParcel(Parcel paramAnonymousParcel)
    {
      return new V2DeliveryInfoDTO(paramAnonymousParcel, null);
    }
    
    public V2DeliveryInfoDTO[] newArray(int paramAnonymousInt)
    {
      return new V2DeliveryInfoDTO[paramAnonymousInt];
    }
  };
  private String address_country;
  private String address_locality;
  private String address_region;
  private String cross_streets;
  private String delivery_instructions;
  private String email;
  private Boolean green_indicated;
  private String latitude;
  private String longitude;
  private String name;
  private String phone;
  private String postal_code;
  private String street_address1;
  private String street_address2;
  
  public V2DeliveryInfoDTO() {}
  
  private V2DeliveryInfoDTO(Parcel paramParcel)
  {
    name = ((String)paramParcel.readValue(null));
    phone = ((String)paramParcel.readValue(null));
    email = ((String)paramParcel.readValue(null));
    street_address1 = ((String)paramParcel.readValue(null));
    street_address2 = ((String)paramParcel.readValue(null));
    address_locality = ((String)paramParcel.readValue(null));
    address_region = ((String)paramParcel.readValue(null));
    address_country = ((String)paramParcel.readValue(null));
    postal_code = ((String)paramParcel.readValue(null));
    cross_streets = ((String)paramParcel.readValue(null));
    delivery_instructions = ((String)paramParcel.readValue(null));
    latitude = ((String)paramParcel.readValue(null));
    longitude = ((String)paramParcel.readValue(null));
    green_indicated = ((Boolean)paramParcel.readValue(null));
  }
  
  public int describeContents()
  {
    return 0;
  }
  
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
  
  public String getCrossStreets()
  {
    return cross_streets;
  }
  
  public String getDeliveryInstructions()
  {
    return delivery_instructions;
  }
  
  public String getEmail()
  {
    return email;
  }
  
  public Boolean getGreenIndicated()
  {
    return green_indicated;
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
    return postal_code;
  }
  
  public String getStreetAddress1()
  {
    return street_address1;
  }
  
  public String getStreetAddress2()
  {
    return street_address2;
  }
  
  public void setAddressCountry(String paramString)
  {
    address_country = paramString;
  }
  
  public void setAddressLocality(String paramString)
  {
    address_locality = paramString;
  }
  
  public void setAddressRegion(String paramString)
  {
    address_region = paramString;
  }
  
  public void setCrossStreets(String paramString)
  {
    cross_streets = paramString;
  }
  
  public void setDeliveryInstructions(String paramString)
  {
    delivery_instructions = paramString;
  }
  
  public void setEmail(String paramString)
  {
    email = paramString;
  }
  
  public void setGreenIndicated(Boolean paramBoolean)
  {
    green_indicated = paramBoolean;
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
    postal_code = paramString;
  }
  
  public void setStreetAddress1(String paramString)
  {
    street_address1 = paramString;
  }
  
  public void setStreetAddress2(String paramString)
  {
    street_address2 = paramString;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeValue(name);
    paramParcel.writeValue(phone);
    paramParcel.writeValue(email);
    paramParcel.writeValue(street_address1);
    paramParcel.writeValue(street_address2);
    paramParcel.writeValue(address_locality);
    paramParcel.writeValue(address_region);
    paramParcel.writeValue(address_country);
    paramParcel.writeValue(postal_code);
    paramParcel.writeValue(cross_streets);
    paramParcel.writeValue(delivery_instructions);
    paramParcel.writeValue(latitude);
    paramParcel.writeValue(longitude);
    paramParcel.writeValue(green_indicated);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2DeliveryInfoDTO
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */