package com.grubhub.AppBaseLibrary.android.dataServices.interfaces;

public abstract interface GHSIErrorMessage
{
  public abstract String getCode();
  
  public abstract String getField();
  
  public abstract String getMessage();
  
  public abstract String getType();
  
  public abstract void setCode(String paramString);
  
  public abstract void setField(String paramString);
  
  public abstract void setMessage(String paramString);
  
  public abstract void setType(String paramString);
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIErrorMessage
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */