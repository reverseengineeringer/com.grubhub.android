package org.c.a;

import java.io.PrintStream;

public class g
{
  public static final void a(String paramString)
  {
    System.err.println("SLF4J: " + paramString);
  }
  
  public static final void a(String paramString, Throwable paramThrowable)
  {
    System.err.println(paramString);
    System.err.println("Reported exception:");
    paramThrowable.printStackTrace();
  }
}

/* Location:
 * Qualified Name:     org.c.a.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */