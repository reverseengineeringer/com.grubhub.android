package com.grubhub.AppBaseLibrary.android.dataServices.dto;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.ClassLoaderCreator;
import android.os.Parcelable.Creator;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAddressDataModel;

public class GHSAddressDataModel
  extends GHSBaseDataModel
  implements Parcelable, GHSIAddressDataModel
{
  public static final Parcelable.Creator<GHSAddressDataModel> CREATOR = new Parcelable.ClassLoaderCreator()
  {
    public GHSAddressDataModel createFromParcel(Parcel paramAnonymousParcel)
    {
      return new GHSAddressDataModel(paramAnonymousParcel, null);
    }
    
    public GHSAddressDataModel createFromParcel(Parcel paramAnonymousParcel, ClassLoader paramAnonymousClassLoader)
    {
      return createFromParcel(paramAnonymousParcel);
    }
    
    public GHSAddressDataModel[] newArray(int paramAnonymousInt)
    {
      return new GHSAddressDataModel[0];
    }
  };
  private String address1;
  private String address2;
  private String city;
  private String country;
  private String crossStreet;
  private String deliveryInstructions;
  private String id;
  private boolean isPrecise;
  private boolean isSavedAddress;
  private String label;
  private String latitude;
  private String longitude;
  private String phone;
  private Float pickupRadius;
  private String state;
  private String zip;
  
  public GHSAddressDataModel() {}
  
  private GHSAddressDataModel(Parcel paramParcel)
  {
    setId(paramParcel.readString());
    setLabel(paramParcel.readString());
    setAddress1(paramParcel.readString());
    setAddress2(paramParcel.readString());
    setCity(paramParcel.readString());
    setState(paramParcel.readString());
    setCrossStreet(paramParcel.readString());
    setZip(paramParcel.readString());
    setCountry(paramParcel.readString());
    setPhone(paramParcel.readString());
    setDeliveryInstructions(paramParcel.readString());
    setLatitude(paramParcel.readString());
    setLongitude(paramParcel.readString());
    if (paramParcel.readByte() != 0)
    {
      bool1 = true;
      setIsSavedAddress(bool1);
      if (paramParcel.readByte() == 0) {
        break label167;
      }
    }
    label167:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      setIsPrecise(bool1);
      setPickupRadius((Float)paramParcel.readValue(null));
      setDataModelVersion(paramParcel.readString());
      return;
      bool1 = false;
      break;
    }
  }
  
  private byte convertBoolToByte(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (int i = 1;; i = 0) {
      return (byte)i;
    }
  }
  
  public int describeContents()
  {
    return 0;
  }
  
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
    return country;
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
    return null;
  }
  
  public String getId()
  {
    return id;
  }
  
  public boolean getIsDefault()
  {
    return false;
  }
  
  public boolean getIsPrecise()
  {
    return (isPrecise) || (isSavedAddress);
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
    return latitude;
  }
  
  public String getLongitude()
  {
    return longitude;
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
  
  public void setCountry(String paramString)
  {
    country = paramString;
  }
  
  public void setCrossStreet(String paramString)
  {
    crossStreet = paramString;
  }
  
  public void setDeliveryInstructions(String paramString)
  {
    deliveryInstructions = paramString;
  }
  
  public void setEmailAddress(String paramString) {}
  
  public void setId(String paramString)
  {
    id = paramString;
  }
  
  public void setIsDefault(boolean paramBoolean) {}
  
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
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(id);
    paramParcel.writeString(label);
    paramParcel.writeString(address1);
    paramParcel.writeString(address2);
    paramParcel.writeString(city);
    paramParcel.writeString(state);
    paramParcel.writeString(crossStreet);
    paramParcel.writeString(zip);
    paramParcel.writeString(country);
    paramParcel.writeString(phone);
    paramParcel.writeString(deliveryInstructions);
    paramParcel.writeString(latitude);
    paramParcel.writeString(longitude);
    paramParcel.writeByte(convertBoolToByte(isSavedAddress));
    paramParcel.writeByte(convertBoolToByte(isPrecise));
    paramParcel.writeValue(pickupRadius);
    paramParcel.writeString(getDataModelVersion());
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSAddressDataModel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */