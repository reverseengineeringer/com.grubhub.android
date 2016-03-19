package com.facebook.share.widget;

public enum a
{
  BOTTOM("bottom", 0),  INLINE("inline", 1),  TOP("top", 2);
  
  static a DEFAULT = BOTTOM;
  private int intValue;
  private String stringValue;
  
  private a(String paramString, int paramInt)
  {
    stringValue = paramString;
    intValue = paramInt;
  }
  
  static a fromInt(int paramInt)
  {
    a[] arrayOfa = values();
    int j = arrayOfa.length;
    int i = 0;
    while (i < j)
    {
      a locala = arrayOfa[i];
      if (locala.getValue() == paramInt) {
        return locala;
      }
      i += 1;
    }
    return null;
  }
  
  private int getValue()
  {
    return intValue;
  }
  
  public String toString()
  {
    return stringValue;
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.widget.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */