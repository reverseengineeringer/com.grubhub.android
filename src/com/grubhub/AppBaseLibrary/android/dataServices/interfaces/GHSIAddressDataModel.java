package com.grubhub.AppBaseLibrary.android.dataServices.interfaces;

public abstract interface GHSIAddressDataModel
  extends GHSIBaseDataModel
{
  public abstract String getAddress1();
  
  public abstract String getAddress2();
  
  public abstract String getCity();
  
  public abstract String getCountry();
  
  public abstract String getCrossStreet();
  
  public abstract String getDeliveryInstructions();
  
  public abstract String getEmailAddress();
  
  public abstract String getId();
  
  public abstract boolean getIsDefault();
  
  public abstract boolean getIsPrecise();
  
  public abstract boolean getIsSavedAddress();
  
  public abstract String getLabel();
  
  public abstract String getLatitude();
  
  public abstract String getLongitude();
  
  public abstract String getPhone();
  
  public abstract Float getPickupRadius();
  
  public abstract String getState();
  
  public abstract String getZip();
  
  public abstract void setAddress1(String paramString);
  
  public abstract void setAddress2(String paramString);
  
  public abstract void setCity(String paramString);
  
  public abstract void setCountry(String paramString);
  
  public abstract void setCrossStreet(String paramString);
  
  public abstract void setDeliveryInstructions(String paramString);
  
  public abstract void setEmailAddress(String paramString);
  
  public abstract void setId(String paramString);
  
  public abstract void setIsDefault(boolean paramBoolean);
  
  public abstract void setIsPrecise(boolean paramBoolean);
  
  public abstract void setIsSavedAddress(boolean paramBoolean);
  
  public abstract void setLabel(String paramString);
  
  public abstract void setLatitude(String paramString);
  
  public abstract void setLongitude(String paramString);
  
  public abstract void setPhone(String paramString);
  
  public abstract void setPickupRadius(Float paramFloat);
  
  public abstract void setState(String paramString);
  
  public abstract void setZip(String paramString);
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAddressDataModel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */