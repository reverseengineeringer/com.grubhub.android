package org.c.b;

import java.util.HashMap;
import java.util.Map;

public class b
  implements org.c.a
{
  private final Map<String, a> a = new HashMap();
  
  public a b(String paramString)
  {
    try
    {
      a locala2 = (a)a.get(paramString);
      a locala1 = locala2;
      if (locala2 == null)
      {
        locala1 = new a(paramString);
        a.put(paramString, locala1);
      }
      return locala1;
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     org.c.b.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */