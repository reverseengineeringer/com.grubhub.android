package com.grubhub.AppBaseLibrary.android.dataServices.interfaces;

public abstract interface GHSIDeliveryInfo
{
  public abstract String getAddressCountry();
  
  public abstract String getAddressLocality();
  
  public abstract String getAddressRegion();
  
  public abstract String getCrossStreets();
  
  public abstract String getDeliveryInstructions();
  
  public abstract String getEmail();
  
  public abstract Boolean getGreenIndicated();
  
  public abstract String getLatitude();
  
  public abstract String getLongitude();
  
  public abstract String getName();
  
  public abstract String getPhone();
  
  public abstract String getPostalCode();
  
  public abstract String getStreetAddress1();
  
  public abstract String getStreetAddress2();
  
  public abstract void setAddressCountry(String paramString);
  
  public abstract void setAddressLocality(String paramString);
  
  public abstract void setAddressRegion(String paramString);
  
  public abstract void setCrossStreets(String paramString);
  
  public abstract void setDeliveryInstructions(String paramString);
  
  public abstract void setEmail(String paramString);
  
  public abstract void setGreenIndicated(Boolean paramBoolean);
  
  public abstract void setLatitude(String paramString);
  
  public abstract void setLongitude(String paramString);
  
  public abstract void setName(String paramString);
  
  public abstract void setPhone(String paramString);
  
  public abstract void setPostalCode(String paramString);
  
  public abstract void setStreetAddress1(String paramString);
  
  public abstract void setStreetAddress2(String paramString);
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIDeliveryInfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */