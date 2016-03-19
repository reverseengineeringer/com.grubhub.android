package com.taplytics;

public class ep
  implements Comparable<ep>
{
  private String a;
  
  public ep(String paramString)
  {
    if (paramString == null) {
      try
      {
        throw new IllegalArgumentException("Version can not be null");
      }
      catch (Exception paramString)
      {
        ck.b("Version number invalid, defaulting to 0", paramString);
        a = "0";
        return;
      }
    }
    if (!paramString.matches("[0-9]+(\\.[0-9]+)*")) {
      throw new IllegalArgumentException("Invalid version format");
    }
    a = paramString;
  }
  
  public int a(ep paramep)
  {
    if (paramep == null) {}
    for (;;)
    {
      return 1;
      try
      {
        String[] arrayOfString = a().split("\\.");
        paramep = paramep.a().split("\\.");
        int m = Math.max(arrayOfString.length, paramep.length);
        int i = 0;
        for (;;)
        {
          if (i >= m) {
            break label106;
          }
          int j;
          if (i < arrayOfString.length)
          {
            j = Integer.parseInt(arrayOfString[i]);
            if (i >= paramep.length) {
              break label87;
            }
          }
          label87:
          for (int k = Integer.parseInt(paramep[i]);; k = 0)
          {
            if (j >= k) {
              break label93;
            }
            return -1;
            j = 0;
            break;
          }
          label93:
          if (j > k) {
            break;
          }
          i += 1;
        }
        label106:
        return 0;
      }
      catch (Exception paramep) {}
    }
    return 0;
  }
  
  public final String a()
  {
    return a;
  }
  
  public boolean equals(Object paramObject)
  {
    return (this == paramObject) || ((paramObject != null) && (getClass() == paramObject.getClass()) && (a((ep)paramObject) == 0));
  }
}

/* Location:
 * Qualified Name:     com.taplytics.ep
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */