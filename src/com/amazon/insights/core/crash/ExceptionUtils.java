package com.amazon.insights.core.crash;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;

public abstract class ExceptionUtils
{
  public static String getStackTraceString(Throwable paramThrowable)
  {
    if (paramThrowable == null) {
      return "";
    }
    StringWriter localStringWriter = new StringWriter();
    paramThrowable.printStackTrace(new PrintWriter(localStringWriter));
    return localStringWriter.toString();
  }
  
  public static List<Throwable> getThrowableList(Throwable paramThrowable)
  {
    LinkedHashSet localLinkedHashSet = new LinkedHashSet();
    while ((paramThrowable != null) && (!localLinkedHashSet.contains(paramThrowable)))
    {
      localLinkedHashSet.add(paramThrowable);
      paramThrowable = paramThrowable.getCause();
    }
    return new ArrayList(localLinkedHashSet);
  }
}

/* Location:
 * Qualified Name:     com.amazon.insights.core.crash.ExceptionUtils
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */