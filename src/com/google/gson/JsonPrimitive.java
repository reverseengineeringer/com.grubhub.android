package com.google.gson;

import com.google.gson.internal..Gson.Preconditions;
import com.google.gson.internal.LazilyParsedNumber;
import java.math.BigDecimal;
import java.math.BigInteger;

public final class JsonPrimitive
  extends JsonElement
{
  private static final Class<?>[] PRIMITIVE_TYPES = { Integer.TYPE, Long.TYPE, Short.TYPE, Float.TYPE, Double.TYPE, Byte.TYPE, Boolean.TYPE, Character.TYPE, Integer.class, Long.class, Short.class, Float.class, Double.class, Byte.class, Boolean.class, Character.class };
  private Object value;
  
  public JsonPrimitive(Boolean paramBoolean)
  {
    setValue(paramBoolean);
  }
  
  public JsonPrimitive(Character paramCharacter)
  {
    setValue(paramCharacter);
  }
  
  public JsonPrimitive(Number paramNumber)
  {
    setValue(paramNumber);
  }
  
  JsonPrimitive(Object paramObject)
  {
    setValue(paramObject);
  }
  
  public JsonPrimitive(String paramString)
  {
    setValue(paramString);
  }
  
  private static boolean isIntegral(JsonPrimitive paramJsonPrimitive)
  {
    if ((value instanceof Number))
    {
      paramJsonPrimitive = (Number)value;
      return ((paramJsonPrimitive instanceof BigInteger)) || ((paramJsonPrimitive instanceof Long)) || ((paramJsonPrimitive instanceof Integer)) || ((paramJsonPrimitive instanceof Short)) || ((paramJsonPrimitive instanceof Byte));
    }
    return false;
  }
  
  private static boolean isPrimitiveOrString(Object paramObject)
  {
    if ((paramObject instanceof String)) {
      return true;
    }
    paramObject = paramObject.getClass();
    Class[] arrayOfClass = PRIMITIVE_TYPES;
    int j = arrayOfClass.length;
    int i = 0;
    for (;;)
    {
      if (i >= j) {
        break label45;
      }
      if (arrayOfClass[i].isAssignableFrom((Class)paramObject)) {
        break;
      }
      i += 1;
    }
    label45:
    return false;
  }
  
  JsonPrimitive deepCopy()
  {
    return this;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    if (this == paramObject) {}
    do
    {
      do
      {
        return true;
        if ((paramObject == null) || (getClass() != paramObject.getClass())) {
          return false;
        }
        paramObject = (JsonPrimitive)paramObject;
        if (value != null) {
          break;
        }
      } while (value == null);
      return false;
      if ((!isIntegral(this)) || (!isIntegral((JsonPrimitive)paramObject))) {
        break;
      }
    } while (getAsNumber().longValue() == ((JsonPrimitive)paramObject).getAsNumber().longValue());
    return false;
    if (((value instanceof Number)) && ((value instanceof Number)))
    {
      double d1 = getAsNumber().doubleValue();
      double d2 = ((JsonPrimitive)paramObject).getAsNumber().doubleValue();
      boolean bool1;
      if (d1 != d2)
      {
        bool1 = bool2;
        if (Double.isNaN(d1))
        {
          bool1 = bool2;
          if (!Double.isNaN(d2)) {}
        }
      }
      else
      {
        bool1 = true;
      }
      return bool1;
    }
    return value.equals(value);
  }
  
  public BigDecimal getAsBigDecimal()
  {
    if ((value instanceof BigDecimal)) {
      return (BigDecimal)value;
    }
    return new BigDecimal(value.toString());
  }
  
  public BigInteger getAsBigInteger()
  {
    if ((value instanceof BigInteger)) {
      return (BigInteger)value;
    }
    return new BigInteger(value.toString());
  }
  
  public boolean getAsBoolean()
  {
    if (isBoolean()) {
      return getAsBooleanWrapper().booleanValue();
    }
    return Boolean.parseBoolean(getAsString());
  }
  
  Boolean getAsBooleanWrapper()
  {
    return (Boolean)value;
  }
  
  public byte getAsByte()
  {
    if (isNumber()) {
      return getAsNumber().byteValue();
    }
    return Byte.parseByte(getAsString());
  }
  
  public char getAsCharacter()
  {
    return getAsString().charAt(0);
  }
  
  public double getAsDouble()
  {
    if (isNumber()) {
      return getAsNumber().doubleValue();
    }
    return Double.parseDouble(getAsString());
  }
  
  public float getAsFloat()
  {
    if (isNumber()) {
      return getAsNumber().floatValue();
    }
    return Float.parseFloat(getAsString());
  }
  
  public int getAsInt()
  {
    if (isNumber()) {
      return getAsNumber().intValue();
    }
    return Integer.parseInt(getAsString());
  }
  
  public long getAsLong()
  {
    if (isNumber()) {
      return getAsNumber().longValue();
    }
    return Long.parseLong(getAsString());
  }
  
  public Number getAsNumber()
  {
    if ((value instanceof String)) {
      return new LazilyParsedNumber((String)value);
    }
    return (Number)value;
  }
  
  public short getAsShort()
  {
    if (isNumber()) {
      return getAsNumber().shortValue();
    }
    return Short.parseShort(getAsString());
  }
  
  public String getAsString()
  {
    if (isNumber()) {
      return getAsNumber().toString();
    }
    if (isBoolean()) {
      return getAsBooleanWrapper().toString();
    }
    return (String)value;
  }
  
  public int hashCode()
  {
    if (value == null) {
      return 31;
    }
    long l;
    if (isIntegral(this))
    {
      l = getAsNumber().longValue();
      return (int)(l ^ l >>> 32);
    }
    if ((value instanceof Number))
    {
      l = Double.doubleToLongBits(getAsNumber().doubleValue());
      return (int)(l ^ l >>> 32);
    }
    return value.hashCode();
  }
  
  public boolean isBoolean()
  {
    return value instanceof Boolean;
  }
  
  public boolean isNumber()
  {
    return value instanceof Number;
  }
  
  public boolean isString()
  {
    return value instanceof String;
  }
  
  void setValue(Object paramObject)
  {
    if ((paramObject instanceof Character))
    {
      value = String.valueOf(((Character)paramObject).charValue());
      return;
    }
    if (((paramObject instanceof Number)) || (isPrimitiveOrString(paramObject))) {}
    for (boolean bool = true;; bool = false)
    {
      .Gson.Preconditions.checkArgument(bool);
      value = paramObject;
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.gson.JsonPrimitive
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */