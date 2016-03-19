package com.a.a;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Build.VERSION;
import android.provider.Settings.Secure;
import android.util.Log;
import com.a.b.a;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.SortedSet;
import java.util.TreeSet;
import java.util.UUID;

public class d
{
  private com.a.d a;
  private Context b;
  
  public d(Activity paramActivity, com.a.d paramd)
  {
    a = paramd;
    b = paramActivity.getApplicationContext();
  }
  
  private void a(String paramString)
  {
    SharedPreferences.Editor localEditor = b.getSharedPreferences("k_prefs", 0).edit();
    localEditor.putString("lic", paramString);
    localEditor.commit();
  }
  
  private String e()
  {
    String str = null;
    SharedPreferences localSharedPreferences = b.getSharedPreferences("k_prefs", 0);
    if (localSharedPreferences != null) {
      str = localSharedPreferences.getString("lic", null);
    }
    return str;
  }
  
  private HashMap<String, String> f()
  {
    HashMap localHashMap = new HashMap();
    try
    {
      WifiInfo localWifiInfo = ((WifiManager)b.getSystemService("wifi")).getConnectionInfo();
      if ((localWifiInfo != null) && (localWifiInfo.getMacAddress() != null))
      {
        localHashMap.put("wifi_mac", localWifiInfo.getMacAddress().replace(":", ""));
        return localHashMap;
      }
      Log.d("wifi_mac", "[LocalCollector]WIFI not enabled, skipping");
      return localHashMap;
    }
    catch (SecurityException localSecurityException)
    {
      Log.d("wifi_mac", "[LocalCollector]WIFI PERMISSION DENIED");
    }
    return localHashMap;
  }
  
  @SuppressLint({"NewApi"})
  private HashMap<String, String> g()
  {
    localHashMap = new HashMap();
    if (Build.VERSION.SDK_INT > 8) {
      Log.d("PROXY_PEIRCE", "[LocalCollector]Newer API...");
    }
    try
    {
      Enumeration localEnumeration = NetworkInterface.getNetworkInterfaces();
      while (localEnumeration.hasMoreElements())
      {
        NetworkInterface localNetworkInterface = (NetworkInterface)localEnumeration.nextElement();
        if (localNetworkInterface.isUp())
        {
          Log.d("NETWORK", "[LocalCollector]NETWORK:" + localNetworkInterface.getName() + ":" + localNetworkInterface.isVirtual());
          byte[] arrayOfByte = localNetworkInterface.getHardwareAddress();
          if (arrayOfByte != null)
          {
            StringBuffer localStringBuffer = new StringBuffer();
            int j = arrayOfByte.length;
            int i = 0;
            while (i < j)
            {
              localStringBuffer.append(String.format("%02X", new Object[] { Byte.valueOf(arrayOfByte[i]) }));
              i += 1;
            }
            localHashMap.put(localNetworkInterface.getName(), localStringBuffer.toString());
          }
        }
      }
      return localHashMap;
    }
    catch (SocketException localSocketException)
    {
      a.a(b.MAC_ADDRESS, g.SERVICE_UNAVAILABLE);
      Log.d("network_mac", "[LocalCollector]Bad socket connection, skipping");
      return localHashMap;
    }
    catch (SecurityException localSecurityException)
    {
      a.a(b.MAC_ADDRESS, g.PERMISSION_DENIED);
      Log.d("network_mac", "[LocalCollector]Permission Denied, skipping");
    }
  }
  
  public void a()
  {
    a.a(com.a.e.SDK_TYPE, "A");
    a.a(com.a.e.SDK_VERSION, "2.5");
    a.a(com.a.e.MOBILE_MODEL, Build.FINGERPRINT);
  }
  
  public void b()
  {
    a.a(com.a.e.OS_VERSION, Build.VERSION.RELEASE);
  }
  
  @SuppressLint({"NewApi"})
  public void c()
  {
    String str = e();
    HashMap localHashMap = new HashMap();
    Object localObject1 = Settings.Secure.getString(b.getContentResolver(), "android_id");
    Log.d("LocalCollector", "ANDROID_ID:" + (String)localObject1);
    localHashMap.put(e.ANDROID_ID.name(), a.a(e.ANDROID_ID.name() + (String)localObject1));
    if (Build.VERSION.SDK_INT > 8) {
      localHashMap.put(e.ANDROID_SERIAL.name(), a.a(e.ANDROID_SERIAL.name() + Build.SERIAL));
    }
    localObject1 = d();
    if (localObject1 != null) {
      localHashMap.put(e.MAC_HASH.name(), a.a(e.MAC_HASH.name() + (String)localObject1));
    }
    Object localObject3 = null;
    localObject1 = localObject3;
    if (str != null)
    {
      localObject1 = localObject3;
      if (!str.contains(e.UID.name())) {}
    }
    try
    {
      int i = str.indexOf(e.UID.name()) + e.UID.name().length() + 3;
      localObject1 = str.substring(i, str.indexOf('"', i));
      localObject3 = localObject1;
      if (localObject1 == null) {
        localObject3 = a.a(e.UID.name() + UUID.randomUUID().toString());
      }
      localHashMap.put(e.UID.name(), localObject3);
      if (localHashMap.size() == 0)
      {
        a.a(b.DEVICE_COOKIE, g.UNEXPECTED);
        return;
      }
      localObject1 = com.a.b.b.a(localHashMap);
      a.a(com.a.e.DEVICE_COOKIE, (String)localObject1);
      if ((str != null) && (str.length() > 0)) {
        a.a(com.a.e.OLD_DEVICE_COOKIE, str);
      }
      a((String)localObject1);
      return;
    }
    catch (IndexOutOfBoundsException localIndexOutOfBoundsException)
    {
      for (;;)
      {
        Object localObject2 = localObject3;
      }
    }
  }
  
  public String d()
  {
    Object localObject1 = f();
    ((HashMap)localObject1).putAll(g());
    Object localObject2 = new TreeSet(((HashMap)localObject1).values());
    if (((SortedSet)localObject2).size() > 0)
    {
      localObject1 = new StringBuilder("{");
      localObject2 = ((SortedSet)localObject2).iterator();
      while (((Iterator)localObject2).hasNext())
      {
        String str = (String)((Iterator)localObject2).next();
        ((StringBuilder)localObject1).append(str + ",");
      }
      ((StringBuilder)localObject1).append("}");
      return ((StringBuilder)localObject1).toString();
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.a.a.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */