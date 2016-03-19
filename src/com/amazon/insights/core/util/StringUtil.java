package com.amazon.insights.core.util;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.Charset;
import java.util.Iterator;
import java.util.Set;

public final class StringUtil
{
  public static final String UTF_8 = "UTF-8";
  
  public static String clipString(String paramString, int paramInt, boolean paramBoolean)
  {
    String str2 = paramString.substring(0, Math.min(paramInt, paramString.length()));
    String str1 = str2;
    if (paramBoolean)
    {
      str1 = str2;
      if (str2.length() < paramString.length()) {
        str1 = str2 + "...";
      }
    }
    return str1;
  }
  
  public static String convertArrayToString(String[] paramArrayOfString)
  {
    if (paramArrayOfString == null) {
      return "";
    }
    StringBuilder localStringBuilder = new StringBuilder();
    int i = 0;
    while (i < paramArrayOfString.length)
    {
      if (i > 0) {
        localStringBuilder.append(",");
      }
      localStringBuilder.append("'" + paramArrayOfString[i] + "'");
      i += 1;
    }
    return localStringBuilder.toString();
  }
  
  public static String convertSetToString(Set<String> paramSet)
  {
    if (paramSet == null) {
      return "";
    }
    StringBuilder localStringBuilder = new StringBuilder();
    paramSet = paramSet.iterator();
    while (paramSet.hasNext())
    {
      String str = (String)paramSet.next();
      if (localStringBuilder.length() > 0) {
        localStringBuilder.append(",");
      }
      localStringBuilder.append("'" + str + "'");
    }
    return localStringBuilder.toString();
  }
  
  public static String convertStreamToString(InputStream paramInputStream, Charset paramCharset)
    throws IOException
  {
    paramInputStream = new BufferedReader(new InputStreamReader(paramInputStream, paramCharset));
    paramCharset = new StringBuilder();
    for (;;)
    {
      String str = paramInputStream.readLine();
      if (str == null) {
        break;
      }
      paramCharset.append(str + "\n");
    }
    paramInputStream.close();
    return paramCharset.toString();
  }
  
  public static String convertStreamToUTF8String(InputStream paramInputStream)
    throws IOException
  {
    return convertStreamToString(paramInputStream, Charset.forName("UTF-8"));
  }
  
  public static boolean isBlank(String paramString)
  {
    return (paramString == null) || (paramString.trim().length() == 0);
  }
  
  public static boolean isNullOrEmpty(String paramString)
  {
    return (paramString == null) || (paramString.length() == 0);
  }
  
  public static String trimOrPadString(String paramString, int paramInt, char paramChar)
  {
    int j = 0;
    int i = paramInt;
    if (paramInt < 0) {
      i = 0;
    }
    String str = paramString;
    if (paramString == null) {
      str = "";
    }
    paramString = new StringBuffer();
    paramInt = j;
    if (str.length() > i - 1) {
      paramString.append(str.substring(str.length() - i));
    }
    for (;;)
    {
      return paramString.toString();
      while (paramInt < i - str.length())
      {
        paramString.append(paramChar);
        paramInt += 1;
      }
      paramString.append(str);
    }
  }
}

/* Location:
 * Qualified Name:     com.amazon.insights.core.util.StringUtil
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */