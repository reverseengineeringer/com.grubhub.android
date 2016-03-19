package com.urbanairship.js;

import android.net.Uri;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

class Whitelist$UriPattern
{
  private final Pattern host;
  private final Pattern path;
  private final Pattern scheme;
  
  Whitelist$UriPattern(Whitelist paramWhitelist, Pattern paramPattern1, Pattern paramPattern2, Pattern paramPattern3)
  {
    scheme = paramPattern1;
    host = paramPattern2;
    path = paramPattern3;
  }
  
  boolean matches(Uri paramUri)
  {
    if ((scheme != null) && ((paramUri.getScheme() == null) || (!scheme.matcher(paramUri.getScheme()).matches()))) {}
    while (((host != null) && ((paramUri.getHost() == null) || (!host.matcher(paramUri.getHost()).matches()))) || ((path != null) && ((paramUri.getPath() == null) || (!path.matcher(paramUri.getPath()).matches())))) {
      return false;
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.js.Whitelist.UriPattern
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */