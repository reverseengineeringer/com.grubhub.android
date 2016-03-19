package com.amazon.insights;

public abstract interface Variation
{
  public abstract boolean containsVariable(String paramString);
  
  public abstract String getName();
  
  public abstract String getProjectName();
  
  public abstract boolean getVariableAsBoolean(String paramString, boolean paramBoolean);
  
  public abstract double getVariableAsDouble(String paramString, double paramDouble);
  
  public abstract float getVariableAsFloat(String paramString, float paramFloat);
  
  public abstract int getVariableAsInt(String paramString, int paramInt);
  
  public abstract long getVariableAsLong(String paramString, long paramLong);
  
  public abstract short getVariableAsShort(String paramString, short paramShort);
  
  public abstract String getVariableAsString(String paramString1, String paramString2);
}

/* Location:
 * Qualified Name:     com.amazon.insights.Variation
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */