package com.a.b;

import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class b
{
  public static String a(Map<String, String> paramMap)
  {
    if ((paramMap != null) && (paramMap.size() > 0))
    {
      StringBuffer localStringBuffer = new StringBuffer();
      localStringBuffer.append("{");
      Iterator localIterator = paramMap.keySet().iterator();
      int i = 1;
      if (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        if (i == 0) {
          localStringBuffer.append(", ");
        }
        for (;;)
        {
          localStringBuffer.append("\"" + str + "\":\"" + (String)paramMap.get(str) + "\"");
          break;
          i = 0;
        }
      }
      localStringBuffer.append("}");
      return localStringBuffer.toString();
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.a.b.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */