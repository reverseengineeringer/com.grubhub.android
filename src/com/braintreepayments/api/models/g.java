package com.braintreepayments.api.models;

import android.util.Base64;
import com.google.gson.Gson;
import com.google.gson.annotations.SerializedName;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class g
{
  private static final Pattern a = Pattern.compile("([A-Za-z0-9+/]{4})*([A-Za-z0-9+/]{4}|[A-Za-z0-9+/]{3}=|[A-Za-z0-9+/]{2}==)");
  @SerializedName("configUrl")
  private String b;
  @SerializedName("authorizationFingerprint")
  private String c;
  
  public static g a(String paramString)
  {
    String str = paramString;
    if (a.matcher(paramString).matches()) {
      str = new String(Base64.decode(paramString, 0));
    }
    return (g)new Gson().fromJson(str, g.class);
  }
  
  public String a()
  {
    return b;
  }
  
  public String b()
  {
    return c;
  }
}

/* Location:
 * Qualified Name:     com.braintreepayments.api.models.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */