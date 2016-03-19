package com.amazon.insights.validate;

import android.content.Context;
import com.amazon.insights.impl.InitializationException;

public class PermissionValidator
{
  private final String permission;
  
  public PermissionValidator(String paramString)
  {
    permission = paramString;
  }
  
  private boolean hasPermission(Context paramContext, String paramString)
  {
    return paramContext.checkCallingOrSelfPermission(paramString) == 0;
  }
  
  public void validate(Context paramContext)
  {
    if (!hasPermission(paramContext, permission)) {
      throw new InitializationException(permission + " permission is not granted.");
    }
  }
}

/* Location:
 * Qualified Name:     com.amazon.insights.validate.PermissionValidator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */