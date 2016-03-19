package org.a.a;

public class c
  extends a
{
  static Class c;
  private static final String d;
  
  static
  {
    Class localClass;
    if (c == null)
    {
      localClass = c("org.a.a.c");
      c = localClass;
    }
    for (;;)
    {
      d = localClass.getName();
      return;
      localClass = c;
    }
  }
  
  c(String paramString)
  {
    super(paramString);
  }
  
  public static c a(Class paramClass)
  {
    return b(paramClass.getName());
  }
  
  public static c b(String paramString)
  {
    return b.a(paramString);
  }
  
  static Class c(String paramString)
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
}

/* Location:
 * Qualified Name:     org.a.a.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */