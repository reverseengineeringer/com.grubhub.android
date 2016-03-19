package com.urbanairship.richpush;

import com.urbanairship.Logger;
import com.urbanairship.PreferenceDataStore;
import com.urbanairship.util.UAStringUtil;
import java.io.UnsupportedEncodingException;

class RichPushUserPreferences
{
  private static final String KEY_PREFIX = "com.urbanairship.user";
  private static final String USER_ID_KEY = "com.urbanairship.user.ID";
  private static final String USER_PASSWORD_KEY = "com.urbanairship.user.PASSWORD";
  private static final String USER_TOKEN_KEY = "com.urbanairship.user.USER_TOKEN";
  private final PreferenceDataStore preferenceDataStore;
  
  RichPushUserPreferences(PreferenceDataStore paramPreferenceDataStore)
  {
    preferenceDataStore = paramPreferenceDataStore;
    String str = paramPreferenceDataStore.getString("com.urbanairship.user.PASSWORD", null);
    if ((!UAStringUtil.isEmpty(str)) && (paramPreferenceDataStore.putSync("com.urbanairship.user.USER_TOKEN", encode(str, paramPreferenceDataStore.getString("com.urbanairship.user.ID", null))))) {
      paramPreferenceDataStore.remove("com.urbanairship.user.PASSWORD");
    }
  }
  
  private String decode(String paramString1, String paramString2)
  {
    if ((UAStringUtil.isEmpty(paramString1)) || (UAStringUtil.isEmpty(paramString2))) {}
    int j;
    do
    {
      return null;
      j = paramString1.length();
    } while (j % 2 != 0);
    try
    {
      byte[] arrayOfByte = new byte[j / 2];
      int i = 0;
      while (i < j)
      {
        arrayOfByte[(i / 2)] = Byte.parseByte(paramString1.substring(i, i + 2), 16);
        i += 2;
      }
      paramString1 = new String(xor(arrayOfByte, paramString2.getBytes()), "UTF-8");
      return paramString1;
    }
    catch (UnsupportedEncodingException paramString1)
    {
      Logger.error("RichPushUserPreferences - Unable to decode string. " + paramString1.getMessage());
      return null;
    }
    catch (NumberFormatException paramString1)
    {
      Logger.error("RichPushUserPreferences - String contains invalid hex numbers. " + paramString1.getMessage());
    }
    return null;
  }
  
  private String encode(String paramString1, String paramString2)
  {
    if ((UAStringUtil.isEmpty(paramString1)) || (UAStringUtil.isEmpty(paramString2))) {
      return null;
    }
    paramString1 = xor(paramString1.getBytes(), paramString2.getBytes());
    paramString2 = new StringBuilder();
    int j = paramString1.length;
    int i = 0;
    while (i < j)
    {
      paramString2.append(String.format("%02x", new Object[] { Byte.valueOf(paramString1[i]) }));
      i += 1;
    }
    return paramString2.toString();
  }
  
  private byte[] xor(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    byte[] arrayOfByte = new byte[paramArrayOfByte1.length];
    int i = 0;
    while (i < paramArrayOfByte1.length)
    {
      arrayOfByte[i] = ((byte)(paramArrayOfByte1[i] ^ paramArrayOfByte2[(i % paramArrayOfByte2.length)]));
      i += 1;
    }
    return arrayOfByte;
  }
  
  public String getUserId()
  {
    return preferenceDataStore.getString("com.urbanairship.user.ID", null);
  }
  
  public String getUserToken()
  {
    return decode(preferenceDataStore.getString("com.urbanairship.user.USER_TOKEN", null), getUserId());
  }
  
  public void setUserCredentials(String paramString1, String paramString2)
  {
    preferenceDataStore.put("com.urbanairship.user.ID", paramString1);
    preferenceDataStore.put("com.urbanairship.user.USER_TOKEN", encode(paramString2, paramString1));
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.richpush.RichPushUserPreferences
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */