package com.grubhub.AppBaseLibrary.android.dataServices.interfaces;

public abstract interface GHSIGeocodeAddressDataModel
{
  public abstract String getAddress1();
  
  public abstract String getAddress2();
  
  public abstract String getCity();
  
  public abstract String getCountry();
  
  public abstract String getEstablishment();
  
  public abstract double getLatitude();
  
  public abstract double getLongitude();
  
  public abstract String getNeighborhood();
  
  public abstract Float getPickupRadius();
  
  public abstract String getState();
  
  public abstract String getZip();
  
  public abstract boolean isPrecise();
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIGeocodeAddressDataModel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */