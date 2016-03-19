package com.urbanairship.js;

import android.net.Uri;
import com.urbanairship.AirshipConfigOptions;
import com.urbanairship.Logger;
import com.urbanairship.util.UAStringUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Whitelist
{
  private static final String HOST_REGEX = "((\\*)|(\\*\\.[^/\\*]+)|([^/\\*]+))";
  private static final String PATH_REGEX = "(/.*)";
  private static final String PATTERN_REGEX = String.format(Locale.US, "^((\\*)|((%s://%s%s)|(%s://%s)|(file://%s)))", new Object[] { "((\\*)|(http)|(https))", "((\\*)|(\\*\\.[^/\\*]+)|([^/\\*]+))", "(/.*)", "((\\*)|(http)|(https))", "((\\*)|(\\*\\.[^/\\*]+)|([^/\\*]+))", "(/.*)" });
  private static final String REGEX_SPECIAL_CHARACTERS = "\\.[]{}()^$?+|*";
  private static final String SCHEME_REGEX = "((\\*)|(http)|(https))";
  private static final Pattern VALID_PATTERN = Pattern.compile(PATTERN_REGEX, 2);
  private final List<Whitelist.UriPattern> uriPatterns = new ArrayList();
  
  public static Whitelist createDefaultWhitelist(AirshipConfigOptions paramAirshipConfigOptions)
  {
    Whitelist localWhitelist = new Whitelist();
    localWhitelist.addEntry("https://*.urbanairship.com");
    if (whitelist != null)
    {
      paramAirshipConfigOptions = whitelist;
      int j = paramAirshipConfigOptions.length;
      int i = 0;
      while (i < j)
      {
        localWhitelist.addEntry(paramAirshipConfigOptions[i]);
        i += 1;
      }
    }
    return localWhitelist;
  }
  
  private String escapeRegEx(String paramString, boolean paramBoolean)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    paramString = paramString.toCharArray();
    int j = paramString.length;
    int i = 0;
    if (i < j)
    {
      String str = String.valueOf(paramString[i]);
      if ((!paramBoolean) && (str.equals("*"))) {
        if (str.equals("*")) {
          localStringBuilder.append(".");
        }
      }
      for (;;)
      {
        localStringBuilder.append(str);
        i += 1;
        break;
        if ("\\.[]{}()^$?+|*".contains(str)) {
          localStringBuilder.append("\\");
        }
      }
    }
    return localStringBuilder.toString();
  }
  
  public boolean addEntry(String paramString)
  {
    Pattern localPattern = null;
    if ((paramString == null) || (!VALID_PATTERN.matcher(paramString).matches()))
    {
      Logger.warn("Invalid whitelist pattern " + paramString);
      return false;
    }
    if (paramString.equals("*"))
    {
      uriPatterns.add(new Whitelist.UriPattern(this, Pattern.compile("(http)|(https)"), null, null));
      uriPatterns.add(new Whitelist.UriPattern(this, Pattern.compile("file"), null, Pattern.compile("/.*")));
      return true;
    }
    Object localObject2 = Uri.parse(paramString);
    Object localObject1 = ((Uri)localObject2).getScheme();
    paramString = ((Uri)localObject2).getEncodedAuthority();
    localObject2 = ((Uri)localObject2).getPath();
    if ((UAStringUtil.isEmpty((String)localObject1)) || (((String)localObject1).equals("*")))
    {
      localObject1 = Pattern.compile("(http)|(https)");
      if ((!UAStringUtil.isEmpty(paramString)) && (!paramString.equals("*"))) {
        break label212;
      }
      paramString = null;
      label173:
      if (!UAStringUtil.isEmpty((String)localObject2)) {
        break label269;
      }
    }
    for (;;)
    {
      uriPatterns.add(new Whitelist.UriPattern(this, (Pattern)localObject1, paramString, localPattern));
      return true;
      localObject1 = Pattern.compile((String)localObject1);
      break;
      label212:
      if (paramString.startsWith("*."))
      {
        paramString = Pattern.compile("(.*\\.)?" + escapeRegEx(paramString.substring(2), true));
        break label173;
      }
      paramString = Pattern.compile(escapeRegEx(paramString, true));
      break label173;
      label269:
      localPattern = Pattern.compile(escapeRegEx((String)localObject2, false));
    }
  }
  
  public boolean isWhitelisted(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    paramString = Uri.parse(paramString);
    Iterator localIterator = uriPatterns.iterator();
    while (localIterator.hasNext()) {
      if (((Whitelist.UriPattern)localIterator.next()).matches(paramString)) {
        return true;
      }
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.js.Whitelist
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */