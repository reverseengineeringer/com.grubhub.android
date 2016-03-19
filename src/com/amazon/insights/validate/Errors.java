package com.amazon.insights.validate;

public abstract interface Errors
{
  public abstract void reject(String paramString);
  
  public abstract void reject(String paramString, Exception paramException);
}

/* Location:
 * Qualified Name:     com.amazon.insights.validate.Errors
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */