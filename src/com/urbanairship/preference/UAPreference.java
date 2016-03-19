package com.urbanairship.preference;

public abstract interface UAPreference
{
  public abstract UAPreference.PreferenceType getPreferenceType();
  
  public abstract void setValue(Object paramObject);
}

/* Location:
 * Qualified Name:     com.urbanairship.preference.UAPreference
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */