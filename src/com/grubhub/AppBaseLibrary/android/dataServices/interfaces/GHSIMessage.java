package com.grubhub.AppBaseLibrary.android.dataServices.interfaces;

public abstract interface GHSIMessage
{
  public abstract boolean appliesToVersion(String paramString);
  
  public abstract String getBody();
  
  public abstract long getCreationTime();
  
  public abstract String getETag();
  
  public abstract long getExpirationTime();
  
  public abstract String getNegativeButtonText();
  
  public abstract String getPositiveButtonText();
  
  public abstract String getTitle();
  
  public abstract String getUrl();
  
  public abstract boolean isRepeat();
  
  public abstract boolean isWebView();
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIMessage
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */