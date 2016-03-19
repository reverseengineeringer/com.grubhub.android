package com.urbanairship.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

public class DateUtils
{
  private static final SimpleDateFormat ALT_ISO_DATE_FORMAT;
  private static final SimpleDateFormat ISO_DATE_FORMAT = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss", Locale.US);
  
  static
  {
    ALT_ISO_DATE_FORMAT = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.US);
    ISO_DATE_FORMAT.setTimeZone(TimeZone.getTimeZone("UTC"));
    ALT_ISO_DATE_FORMAT.setTimeZone(TimeZone.getTimeZone("UTC"));
  }
  
  public static String createIso8601TimeStamp(long paramLong)
  {
    return ISO_DATE_FORMAT.format(new Date(paramLong));
  }
  
  public static long parseIso8601(String paramString)
    throws ParseException
  {
    if (paramString == null) {
      throw new ParseException("Unable to parse null timestamp", -1);
    }
    try
    {
      long l = ISO_DATE_FORMAT.parse(paramString).getTime();
      return l;
    }
    catch (ParseException localParseException) {}
    return ALT_ISO_DATE_FORMAT.parse(paramString).getTime();
  }
  
  public static long parseIso8601(String paramString, long paramLong)
  {
    try
    {
      long l = parseIso8601(paramString);
      return l;
    }
    catch (ParseException paramString) {}
    return paramLong;
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.util.DateUtils
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */