package com.grubhub.AppBaseLibrary.android.dataServices.interfaces;

public abstract interface GHSIUserAuthDataModel$GHSISession
{
  public abstract String getAccess_token();
  
  public abstract long getExpire_in();
  
  public abstract String getGrubhub_token();
  
  public abstract long getRefresh_expire_in();
  
  public abstract String getRefresh_token();
  
  public abstract String getRefresh_token_created();
  
  public abstract long getRefresh_token_created_time();
  
  public abstract long getRefresh_token_expire_time();
  
  public abstract String getToken_created();
  
  public abstract long getToken_created_time();
  
  public abstract long getToken_expire_time();
  
  public abstract String getToken_type();
  
  public abstract void setRefresh_token_expire_time(long paramLong);
  
  public abstract void setToken_expire_time(long paramLong);
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIUserAuthDataModel.GHSISession
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */