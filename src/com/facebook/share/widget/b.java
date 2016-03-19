package com.facebook.share.widget;

public enum b
{
  CENTER("center", 0),  LEFT("left", 1),  RIGHT("right", 2);
  
  static b DEFAULT = CENTER;
  private int intValue;
  private String stringValue;
  
  private b(String paramString, int paramInt)
  {
    stringValue = paramString;
    intValue = paramInt;
  }
  
  static b fromInt(int paramInt)
  {
    b[] arrayOfb = values();
    int j = arrayOfb.length;
    int i = 0;
    while (i < j)
    {
      b localb = arrayOfb[i];
      if (localb.getValue() == paramInt) {
        return localb;
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
 * Qualified Name:     com.facebook.share.widget.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */