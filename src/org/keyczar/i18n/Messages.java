package org.keyczar.i18n;

import java.text.MessageFormat;
import java.util.Locale;
import java.util.MissingResourceException;
import java.util.ResourceBundle;
import org.keyczar.annotations.ForTesting;

public class Messages
{
  private static final String BUNDLE_NAME = "org.keyczar.i18n.messages";
  private static ResourceBundle RESOURCE_BUNDLE = ResourceBundle.getBundle("org.keyczar.i18n.messages");
  
  @ForTesting
  public static void changeLocale(Locale paramLocale)
  {
    RESOURCE_BUNDLE = ResourceBundle.getBundle("org.keyczar.i18n.messages", paramLocale);
  }
  
  public static String getString(String paramString, Object... paramVarArgs)
  {
    try
    {
      paramVarArgs = MessageFormat.format(RESOURCE_BUNDLE.getString(paramString), paramVarArgs);
      return paramVarArgs;
    }
    catch (MissingResourceException paramVarArgs) {}
    return '!' + paramString + '!';
  }
}

/* Location:
 * Qualified Name:     org.keyczar.i18n.Messages
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */