package com.paypal.android.sdk;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

public class fb
  extends SimpleDateFormat
{
  private static final String a = fb.class.getSimpleName();
  private static final long serialVersionUID = 5709634976027470847L;
  
  public fb()
  {
    this(TimeZone.getTimeZone("UTC"));
  }
  
  private fb(TimeZone paramTimeZone)
  {
    super("yyyy-MM-dd'T'HH:mm:ssZ", Locale.US);
    setTimeZone(paramTimeZone);
  }
  
  public static Date a(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    int i = 0;
    while (i < 4)
    {
      String str = new String[] { "yyyy-MM-dd'T'HH:mm:ssZ", "yyyy-MM-dd'T'HH:mm:ss.SSSZ", "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", "yyyy-MM-dd'T'HH:mm:ss'Z'" }[i];
      Object localObject = new SimpleDateFormat(str, Locale.US);
      ((SimpleDateFormat)localObject).setLenient(true);
      try
      {
        localObject = ((SimpleDateFormat)localObject).parse(paramString);
        if (localObject != null) {
          return (Date)localObject;
        }
      }
      catch (ParseException localParseException)
      {
        new StringBuilder("unsuccessful attempt to parse date '").append(paramString).append("': ").append(localParseException.getMessage()).append(" while using format:'").append(str).append("'");
        i += 1;
      }
    }
    new StringBuilder("couldn't parse '").append(paramString).append("'");
    return null;
  }
}

/* Location:
 * Qualified Name:     com.paypal.android.sdk.fb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */