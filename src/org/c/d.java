package org.c;

import java.io.IOException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Enumeration;
import java.util.List;
import org.c.a.f;
import org.c.a.g;

public final class d
{
  static int a = 0;
  static int b = 0;
  static f c = new f();
  private static final String[] d = { "1.5.5", "1.5.6", "1.5.7", "1.5.8" };
  private static String e = "org/slf4j/impl/StaticLoggerBinder.class";
  
  public static a a()
  {
    if (a == 0)
    {
      a = 1;
      b();
    }
    switch (a)
    {
    default: 
      throw new IllegalStateException("Unreachable code");
    case 3: 
      return g().b();
    case 2: 
      throw new IllegalStateException("org.slf4j.LoggerFactory could not be successfully initialized. See also http://www.slf4j.org/codes.html#unsuccessfulInit");
    }
    return c;
  }
  
  public static c a(String paramString)
  {
    return a().a(paramString);
  }
  
  private static final void b()
  {
    c();
    e();
    f();
  }
  
  private static final void c()
  {
    try
    {
      g();
      a = 3;
      d();
      return;
    }
    catch (NoClassDefFoundError localNoClassDefFoundError)
    {
      a = 2;
      String str = localNoClassDefFoundError.getMessage();
      if ((str != null) && (str.indexOf("org/slf4j/impl/StaticLoggerBinder") != -1))
      {
        g.a("Failed to load class \"org.slf4j.impl.StaticLoggerBinder\".");
        g.a("See http://www.slf4j.org/codes.html#StaticLoggerBinder for further details.");
      }
      throw localNoClassDefFoundError;
    }
    catch (Exception localException)
    {
      a = 2;
      g.a("Failed to instantiate logger [" + g().c() + "]", localException);
    }
  }
  
  private static final void d()
  {
    List localList = c.a();
    if (localList.size() == 0) {}
    for (;;)
    {
      return;
      g.a("The following loggers will not work becasue they were created");
      g.a("during the default configuration phase of the underlying logging system.");
      g.a("See also http://www.slf4j.org/codes.html#substituteLogger");
      int i = 0;
      while (i < localList.size())
      {
        g.a((String)localList.get(i));
        i += 1;
      }
    }
  }
  
  private static final void e()
  {
    int j = 0;
    for (;;)
    {
      int i;
      try
      {
        String str = org.c.b.c.a;
        i = 0;
        if (i < d.length)
        {
          if (d[i].equals(str)) {
            j = 1;
          }
        }
        else
        {
          if (j == 0)
          {
            g.a("The requested version " + str + " by your slf4j binding is not compatible with " + Arrays.asList(d).toString());
            g.a("See http://www.slf4j.org/codes.html#version_mismatch for further details.");
          }
          return;
        }
      }
      catch (Throwable localThrowable)
      {
        g.a("Unexpected problem occured during version sanity check", localThrowable);
        return;
      }
      catch (NoSuchFieldError localNoSuchFieldError)
      {
        return;
      }
      i += 1;
    }
  }
  
  private static void f()
  {
    ArrayList localArrayList;
    try
    {
      Enumeration localEnumeration = d.class.getClassLoader().getResources(e);
      localArrayList = new ArrayList();
      while (localEnumeration.hasMoreElements()) {
        localArrayList.add((URL)localEnumeration.nextElement());
      }
      while (localArrayList.size() <= 1) {}
    }
    catch (IOException localIOException)
    {
      g.a("Error getting resources from path", localIOException);
      return;
    }
    g.a("Class path contains multiple SLF4J bindings.");
    int i = 0;
    while (i < localArrayList.size())
    {
      g.a("Found binding in [" + localArrayList.get(i) + "]");
      i += 1;
    }
    g.a("See http://www.slf4j.org/codes.html#multiple_bindings for an explanation.");
  }
  
  private static final org.c.b.c g()
  {
    return org.c.b.c.a();
  }
}

/* Location:
 * Qualified Name:     org.c.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */