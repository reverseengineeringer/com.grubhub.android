package com.amazon.insights.core.system;

public abstract interface Connectivity
{
  public abstract boolean hasWAN();
  
  public abstract boolean hasWifi();
  
  public abstract boolean hasWired();
  
  public abstract boolean isConnected();
}

/* Location:
 * Qualified Name:     com.amazon.insights.core.system.Connectivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */