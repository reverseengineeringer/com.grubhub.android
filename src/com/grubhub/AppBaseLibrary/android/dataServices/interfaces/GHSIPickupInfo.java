package com.grubhub.AppBaseLibrary.android.dataServices.interfaces;

public abstract interface GHSIPickupInfo
{
  public abstract String getEmail();
  
  public abstract Boolean getGreenIndicated();
  
  public abstract String getName();
  
  public abstract String getPhone();
  
  public abstract String getPickupInstructions();
  
  public abstract void setEmail(String paramString);
  
  public abstract void setGreenIndicated(Boolean paramBoolean);
  
  public abstract void setName(String paramString);
  
  public abstract void setPhone(String paramString);
  
  public abstract void setPickupInstructions(String paramString);
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIPickupInfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */