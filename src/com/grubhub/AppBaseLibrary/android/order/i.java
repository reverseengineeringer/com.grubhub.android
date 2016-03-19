package com.grubhub.AppBaseLibrary.android.order;

public enum i
{
  ADD_ITEM("ADD_ITEM"),  ORDER("ORDER");
  
  private String stringValue;
  
  private i(String paramString)
  {
    stringValue = paramString;
  }
  
  public String toString()
  {
    return stringValue;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */