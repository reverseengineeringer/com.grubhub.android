package com.paypal.android.sdk;

import android.os.Build;
import android.os.Build.VERSION;
import android.text.TextUtils;
import android.util.Log;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

public class dd
{
  private static final HashMap a = new de();
  private static Map b;
  
  static
  {
    dd.class.getSimpleName();
  }
  
  public static JSONObject a()
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      Iterator localIterator = b.keySet().iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        localJSONObject.put(str, b.get(str));
      }
      return localJSONException;
    }
    catch (JSONException localJSONException)
    {
      Log.e("paypal.sdk", "Error encoding JSON", localJSONException);
      return null;
    }
  }
  
  public static void a(ck paramck)
  {
    if (b == null)
    {
      Object localObject = new HashMap();
      b = (Map)localObject;
      ((Map)localObject).put("device_identifier", ft.a(paramck.e()));
      b.put("device_type", "Android");
      b.put("device_name", ft.a(Build.DEVICE));
      b.put("device_model", ft.a(Build.MODEL));
      localObject = b;
      paramck = (String)a.get(Integer.valueOf(paramck.b()));
      if (TextUtils.isEmpty(paramck)) {
        break label202;
      }
      ((Map)localObject).put("device_key_type", paramck);
      b.put("device_os", "Android");
      b.put("device_os_version", ft.a(Build.VERSION.RELEASE));
      paramck = b;
      if ((!Build.PRODUCT.equals("sdk")) && (!Build.PRODUCT.equals("google_sdk")) && (!Build.FINGERPRINT.contains("generic"))) {
        break label208;
      }
    }
    label202:
    label208:
    for (boolean bool = true;; bool = false)
    {
      paramck.put("is_device_simulator", Boolean.toString(bool));
      return;
      paramck = "ANDROIDGSM_UNDEFINED";
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.paypal.android.sdk.dd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */