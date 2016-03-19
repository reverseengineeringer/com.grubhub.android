package com.urbanairship;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import com.urbanairship.util.UAStringUtil;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Properties;
import java.util.Set;

public class AirshipConfigOptions
{
  public static final String ADM_TRANSPORT = "ADM";
  private static final int DEFAULT_DEVELOPMENT_LOG_LEVEL = 3;
  private static final int DEFAULT_PRODUCTION_LOG_LEVEL = 6;
  private static final String DEFAULT_PROPERTIES_FILENAME = "airshipconfig.properties";
  public static final String GCM_TRANSPORT = "GCM";
  private static final int MAX_BG_REPORTING_INTERVAL_MS = 86400000;
  private static final int MIN_BG_REPORTING_INTERVAL_MS = 60000;
  @PropertyName(name="additionalGCMSenderIds")
  @Deprecated
  public String[] additionalGCMSenderIds;
  @PropertyName(name="allowedTransports")
  public String[] allowedTransports = { "ADM", "GCM" };
  @PropertyName(name="analyticsEnabled")
  public boolean analyticsEnabled = true;
  @PropertyName(name="analyticsServer")
  public String analyticsServer = "https://combine.urbanairship.com/";
  @PropertyName(name="autoLaunchApplication")
  public boolean autoLaunchApplication = true;
  @PropertyName(name="backgroundReportingIntervalMS")
  public long backgroundReportingIntervalMS = 900000L;
  @PropertyName(name="channelCaptureEnabled")
  public boolean channelCaptureEnabled = true;
  @PropertyName(name="clearNamedUser")
  public boolean clearNamedUser = false;
  @PropertyName(name="developmentAppKey")
  public String developmentAppKey;
  @PropertyName(name="developmentAppSecret")
  public String developmentAppSecret;
  @ConstantClass(name="android.util.Log")
  @PropertyName(name="developmentLogLevel")
  public int developmentLogLevel = 3;
  @PropertyName(name="gcmSender")
  public String gcmSender;
  @PropertyName(name="hostURL")
  public String hostURL = "https://device-api.urbanairship.com/";
  @PropertyName(name="inProduction")
  public boolean inProduction = false;
  @PropertyName(name="landingPageContentURL")
  public String landingPageContentURL = "https://dl.urbanairship.com/aaa/";
  @ConstantClass(name="android.os.Build.VERSION_CODES")
  @PropertyName(name="minSdkVersion")
  public int minSdkVersion = 4;
  @PropertyName(name="productionAppKey")
  public String productionAppKey;
  @PropertyName(name="productionAppSecret")
  public String productionAppSecret;
  @ConstantClass(name="android.util.Log")
  @PropertyName(name="productionLogLevel")
  public int productionLogLevel = 6;
  @PropertyName(name="whitelist")
  public String[] whitelist = null;
  
  private String getPropertyValue(Field paramField, Properties paramProperties)
  {
    PropertyName localPropertyName = (PropertyName)paramField.getAnnotation(PropertyName.class);
    if (localPropertyName != null)
    {
      paramProperties = paramProperties.getProperty(localPropertyName.name());
      Logger.verbose("AirshipConfigOptions - Found PropertyAnnotation for " + localPropertyName.name() + " matching " + paramField.getName());
      return paramProperties;
    }
    return null;
  }
  
  private boolean isLogLevelValid(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return false;
    }
    return true;
  }
  
  public static AirshipConfigOptions loadDefaultOptions(Context paramContext)
  {
    AirshipConfigOptions localAirshipConfigOptions = new AirshipConfigOptions();
    localAirshipConfigOptions.loadFromProperties(paramContext);
    return localAirshipConfigOptions;
  }
  
  private void setPropertyValue(Field paramField, String paramString)
  {
    try
    {
      if ((paramField.getType() == Boolean.TYPE) || (paramField.getType() == Boolean.class))
      {
        paramField.set(this, Boolean.valueOf(paramString));
        return;
      }
      if ((paramField.getType() == Integer.TYPE) || (paramField.getType() == Integer.class))
      {
        paramField.set(this, Integer.valueOf(parseOptionValues(paramField, paramString)));
        return;
      }
    }
    catch (IllegalAccessException paramString)
    {
      Logger.error("AirshipConfigOptions - Unable to set field '" + paramField.getName() + "' because the field is not visible.", paramString);
      return;
      if ((paramField.getType() == Long.TYPE) || (paramField.getType() == Long.class))
      {
        paramField.set(this, Long.valueOf(paramString));
        return;
      }
    }
    catch (IllegalArgumentException paramString)
    {
      Logger.error("AirshipConfigOptions - Unable to set field '" + paramField.getName() + "' due to invalid configuration value.", paramString);
      return;
      if (paramField.getType().isArray())
      {
        paramField.set(this, paramString.split("[, ]+"));
        return;
      }
      paramField.set(this, paramString.trim());
      return;
    }
    catch (ClassNotFoundException paramString)
    {
      for (;;) {}
    }
  }
  
  public String getAppKey()
  {
    if (inProduction) {
      return productionAppKey;
    }
    return developmentAppKey;
  }
  
  public String getAppSecret()
  {
    if (inProduction) {
      return productionAppSecret;
    }
    return developmentAppSecret;
  }
  
  @Deprecated
  public Set<String> getGCMSenderIds()
  {
    HashSet localHashSet = new HashSet();
    if (!UAStringUtil.isEmpty(gcmSender)) {
      localHashSet.add(gcmSender);
    }
    if (additionalGCMSenderIds != null) {
      localHashSet.addAll(Arrays.asList(additionalGCMSenderIds));
    }
    return localHashSet;
  }
  
  public int getLoggerLevel()
  {
    if (inProduction) {
      return productionLogLevel;
    }
    return developmentLogLevel;
  }
  
  public boolean isTransportAllowed(String paramString)
  {
    if ((allowedTransports == null) || (paramString == null)) {}
    for (;;)
    {
      return false;
      String[] arrayOfString = allowedTransports;
      int j = arrayOfString.length;
      int i = 0;
      while (i < j)
      {
        if (paramString.equalsIgnoreCase(arrayOfString[i])) {
          return true;
        }
        i += 1;
      }
    }
  }
  
  public boolean isValid()
  {
    int i = 0;
    boolean bool1 = true;
    String str;
    boolean bool2;
    if (inProduction)
    {
      str = "production";
      if ((getAppKey() == null) || (getAppKey().length() == 0) || (getAppKey().indexOf(' ') > 0))
      {
        Logger.error("AirshipConfigOptions: " + getAppKey() + " is not a valid " + str + " app key");
        bool1 = false;
      }
      if ((getAppSecret() == null) || (getAppSecret().length() == 0) || (getAppSecret().indexOf(' ') > 0))
      {
        Logger.error("AirshipConfigOptions: " + getAppSecret() + " is not a valid " + str + " app secret");
        bool1 = false;
      }
      bool2 = bool1;
      if (analyticsEnabled)
      {
        bool2 = bool1;
        if (UAStringUtil.isEmpty(analyticsServer))
        {
          Logger.error("Invalid config - analyticsServer is empty or null.");
          bool2 = false;
        }
      }
      if (!UAStringUtil.isEmpty(hostURL)) {
        break label539;
      }
      Logger.error("Invalid config - hostURL is empty or null.");
    }
    label231:
    label368:
    label421:
    label483:
    label539:
    for (bool1 = false;; bool1 = bool2)
    {
      if (!bool1) {}
      try
      {
        Field[] arrayOfField = getClass().getFields();
        int j = arrayOfField.length;
        if (i >= j) {
          continue;
        }
        str = arrayOfField[i];
        if ((str.getModifiers() & 0x10) != 0) {
          break label421;
        }
      }
      catch (SecurityException localSecurityException)
      {
        for (;;)
        {
          continue;
          Object localObject = null;
        }
      }
      if ((str != null) && (!str.isAnnotationPresent(PropertyName.class)))
      {
        Logger.error("AirshipConfigOptions - The public field '" + str.getName() + "' is missing an annotation");
        Logger.error("AirshipConfigOptions appears to be obfuscated. If using Proguard, add the following to your proguard.cfg: \n\t-keepattributes *Annotation*");
      }
      if (inProduction)
      {
        if (!isLogLevelValid(productionLogLevel))
        {
          Logger.error(productionLogLevel + " is not a valid log level. Falling back to " + 6 + " ERROR.");
          productionLogLevel = 6;
        }
        if (backgroundReportingIntervalMS >= 60000L) {
          break label483;
        }
        Logger.warn("AirshipConfigOptions - The backgroundReportingIntervalMS " + backgroundReportingIntervalMS + " may decrease battery life.");
      }
      while (backgroundReportingIntervalMS <= 86400000L)
      {
        return bool1;
        str = "development";
        break;
        i += 1;
        break label231;
        if (isLogLevelValid(developmentLogLevel)) {
          break label368;
        }
        Logger.error(developmentLogLevel + " is not a valid log level. Falling back to " + 3 + " DEBUG.");
        developmentLogLevel = 3;
        break label368;
      }
      Logger.warn("AirshipConfigOptions - The backgroundReportingIntervalMS " + backgroundReportingIntervalMS + " may provide less detailed analytic reports.");
      return bool1;
    }
  }
  
  public void loadFromProperties(Context paramContext)
  {
    loadFromProperties(paramContext, "airshipconfig.properties");
  }
  
  public void loadFromProperties(Context paramContext, String paramString)
  {
    Object localObject2 = paramContext.getResources().getAssets();
    try
    {
      if (!Arrays.asList(((AssetManager)localObject2).list("")).contains(paramString))
      {
        Logger.verbose("AirshipConfigOptions - Couldn't find " + paramString);
        return;
      }
    }
    catch (IOException paramContext)
    {
      Logger.error(paramContext);
      return;
    }
    Properties localProperties = new Properties();
    Object localObject1 = null;
    paramContext = null;
    for (;;)
    {
      int i;
      try
      {
        localObject2 = ((AssetManager)localObject2).open(paramString);
        paramContext = (Context)localObject2;
        localObject1 = localObject2;
        localProperties.load((InputStream)localObject2);
        paramContext = (Context)localObject2;
        localObject1 = localObject2;
        Field[] arrayOfField = getClass().getDeclaredFields();
        paramContext = (Context)localObject2;
        localObject1 = localObject2;
        int j = arrayOfField.length;
        i = 0;
        if (i < j)
        {
          Field localField = arrayOfField[i];
          paramContext = (Context)localObject2;
          localObject1 = localObject2;
          if (AirshipConfigOptions.class.isAssignableFrom(localField.getType())) {
            break label292;
          }
          paramContext = (Context)localObject2;
          localObject1 = localObject2;
          String str = getPropertyValue(localField, localProperties);
          if (str == null) {
            break label292;
          }
          paramContext = (Context)localObject2;
          localObject1 = localObject2;
          setPropertyValue(localField, str);
        }
      }
      catch (IOException localIOException)
      {
        localObject1 = paramContext;
        Logger.error("AirshipConfigOptions - Unable to load properties file " + paramString, localIOException);
        if (paramContext == null) {
          break;
        }
        try
        {
          paramContext.close();
          return;
        }
        catch (IOException paramContext)
        {
          Logger.error("AirshipConfigOptions - Failed to close input stream.", paramContext);
          return;
        }
        if (localIOException == null) {
          break;
        }
        try
        {
          localIOException.close();
          return;
        }
        catch (IOException paramContext)
        {
          Logger.error("AirshipConfigOptions - Failed to close input stream.", paramContext);
          return;
        }
      }
      finally
      {
        if (localObject1 == null) {}
      }
      try
      {
        ((InputStream)localObject1).close();
        throw paramContext;
      }
      catch (IOException paramString)
      {
        for (;;)
        {
          Logger.error("AirshipConfigOptions - Failed to close input stream.", paramString);
        }
      }
      label292:
      i += 1;
    }
  }
  
  int parseOptionValues(Field paramField, String paramString)
    throws ClassNotFoundException, IllegalAccessException, IllegalArgumentException
  {
    try
    {
      i = Integer.valueOf(paramString).intValue();
      return i;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      Object localObject1 = (ConstantClass)paramField.getAnnotation(ConstantClass.class);
      if (localObject1 == null) {
        throw new IllegalArgumentException("The field '" + paramField.getName() + "' has a type mismatch or missing annotation.");
      }
      localObject1 = Class.forName(((ConstantClass)localObject1).name()).getDeclaredFields();
      int j = localObject1.length;
      int i = 0;
      while (i < j)
      {
        Object localObject2 = localObject1[i];
        if (((Field)localObject2).getName().equalsIgnoreCase(paramString)) {
          try
          {
            i = ((Field)localObject2).getInt(this);
            return i;
          }
          catch (IllegalArgumentException paramString)
          {
            throw new IllegalArgumentException("The field '" + paramField.getName() + "' is incompatible with specified class", paramString);
          }
        }
        i += 1;
      }
      throw new IllegalArgumentException("Unable to match class for field '" + paramField.getName() + "'");
    }
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.AirshipConfigOptions
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */