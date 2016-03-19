package org.a.a;

import org.c.c;
import org.c.d;
import org.c.e;
import org.c.f;

public class a
{
  static Class b;
  private static final String c;
  private static e f;
  protected c a;
  private String d;
  private org.c.c.a e;
  
  static
  {
    Class localClass;
    if (b == null)
    {
      localClass = a("org.a.a.a");
      b = localClass;
    }
    for (;;)
    {
      c = localClass.getName();
      f = f.a("FATAL");
      return;
      localClass = b;
    }
  }
  
  a(String paramString)
  {
    d = paramString;
    a = d.a(paramString);
    if ((a instanceof org.c.c.a)) {
      e = ((org.c.c.a)a);
    }
  }
  
  static Class a(String paramString)
  {
    try
    {
      paramString = Class.forName(paramString);
      return paramString;
    }
    catch (ClassNotFoundException paramString)
    {
      throw new NoClassDefFoundError(paramString.getMessage());
    }
  }
  
  public void a(Object paramObject)
  {
    a(null, c, 10, paramObject, null);
  }
  
  void a(e parame, String paramString, int paramInt, Object paramObject, Throwable paramThrowable)
  {
    paramObject = b(paramObject);
    if (e != null)
    {
      e.a(parame, paramString, paramInt, (String)paramObject, paramThrowable);
      return;
    }
    switch (paramInt)
    {
    default: 
      return;
    case 0: 
      a.a(parame, (String)paramObject);
      return;
    case 10: 
      a.b(parame, (String)paramObject);
      return;
    case 20: 
      a.c(parame, (String)paramObject);
      return;
    case 30: 
      a.d(parame, (String)paramObject);
      return;
    }
    a.e(parame, (String)paramObject);
  }
  
  public boolean a()
  {
    return a.a();
  }
  
  protected final String b(Object paramObject)
  {
    if (paramObject == null) {
      return (String)paramObject;
    }
    return paramObject.toString();
  }
}

/* Location:
 * Qualified Name:     org.a.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */