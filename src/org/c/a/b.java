package org.c.a;

import java.util.HashMap;
import java.util.Map;
import org.c.e;

public class b
  implements org.c.b
{
  Map a = new HashMap();
  
  public e a(String paramString)
  {
    if (paramString == null) {
      try
      {
        throw new IllegalArgumentException("Marker name cannot be null");
      }
      finally {}
    }
    e locale = (e)a.get(paramString);
    Object localObject = locale;
    if (locale == null)
    {
      localObject = new a(paramString);
      a.put(paramString, localObject);
    }
    return (e)localObject;
  }
}

/* Location:
 * Qualified Name:     org.c.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */