package com.amazon.insights.core.idresolver;

public class Id
{
  private static final Id EMPTY_ID = new Id("");
  private final String id;
  
  protected Id(String paramString)
  {
    id = paramString;
  }
  
  public static Id getEmptyId()
  {
    try
    {
      Id localId = EMPTY_ID;
      return localId;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public static Id valueOf(String paramString)
  {
    if ((paramString == null) || (paramString.equals(""))) {
      return getEmptyId();
    }
    return new Id(paramString);
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      do
      {
        return true;
        if (paramObject == null) {
          return false;
        }
        if (getClass() != paramObject.getClass()) {
          return false;
        }
        paramObject = (Id)paramObject;
        if (id != null) {
          break;
        }
      } while (id == null);
      return false;
    } while (id.equals(id));
    return false;
  }
  
  public String getValue()
  {
    return id;
  }
  
  public int hashCode()
  {
    if (id == null) {}
    for (int i = 0;; i = id.hashCode()) {
      return i + 31;
    }
  }
}

/* Location:
 * Qualified Name:     com.amazon.insights.core.idresolver.Id
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */