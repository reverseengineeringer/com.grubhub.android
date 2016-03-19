package com.amazon.insights.core.util;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

public class DateUtil
{
  private static final String DATE_FORMAT_STRING = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'";
  private static final DateFormat ISO_DATE_FORMATTER_UTC = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", Locale.US);
  
  static
  {
    ISO_DATE_FORMATTER_UTC.setTimeZone(TimeZone.getTimeZone("UTC"));
  }
  
  public static DateFormat createLocaleIndependentDateFormatter(String paramString)
  {
    return new SimpleDateFormat(paramString, Locale.US);
  }
  
  private static DateFormat getDateFormat()
  {
    try
    {
      DateFormat localDateFormat = ISO_DATE_FORMATTER_UTC;
      return localDateFormat;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public static String isoDateFromMillis(long paramLong)
  {
    try
    {
      String str = getDateFormat().format(new Date(paramLong));
      return str;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
}

/* Location:
 * Qualified Name:     com.amazon.insights.core.util.DateUtil
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */