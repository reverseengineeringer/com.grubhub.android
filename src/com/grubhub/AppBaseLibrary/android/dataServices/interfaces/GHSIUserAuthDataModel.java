package com.grubhub.AppBaseLibrary.android.dataServices.interfaces;

import java.util.ArrayList;

public abstract interface GHSIUserAuthDataModel
{
  public abstract String getAccessToken();
  
  public abstract ArrayList<GHSIUserAuthDataModel.GHSIClaim> getClaims();
  
  public abstract GHSIUserAuthDataModel.GHSICredential getCredential();
  
  public abstract String getEmail();
  
  public abstract String getErrorMessage();
  
  public abstract String getFirstName();
  
  public abstract String getGrubHubToken();
  
  public abstract String getId();
  
  public abstract String getLastName();
  
  public abstract GHSIUserAuthDataModel.GHSIOrders getOrders();
  
  public abstract String getPassword();
  
  public abstract String getRefreshToken();
  
  public abstract GHSIUserAuthDataModel.GHSISession getSession();
  
  public abstract String getToken();
  
  public abstract String getUdid();
  
  public abstract void setPassword(String paramString);
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIUserAuthDataModel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */