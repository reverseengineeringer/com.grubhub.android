package com.taplytics;

public enum dd
{
  private final String antelope;
  
  static
  {
    jdField_albatross_of_type_ComTaplyticsDd = new dd("EVENTS", 0, "events");
    alligator = new dd("PEOPLE", 1, "people");
    jdField_albatross_of_type_ArrayOfComTaplyticsDd = new dd[] { jdField_albatross_of_type_ComTaplyticsDd, alligator };
  }
  
  private dd(String paramString)
  {
    antelope = paramString;
  }
  
  public String getName()
  {
    return antelope.toUpperCase();
  }
}

/* Location:
 * Qualified Name:     com.taplytics.dd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */