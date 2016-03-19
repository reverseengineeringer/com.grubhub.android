package com.amazon.insights;

public abstract interface InsightsCredentials
{
  public abstract boolean equals(Object paramObject);
  
  public abstract String getApplicationKey();
  
  public abstract String getPrivateKey();
  
  public abstract int hashCode();
}

/* Location:
 * Qualified Name:     com.amazon.insights.InsightsCredentials
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */