package com.amazon.insights.core.http;

import android.util.Log;
import org.json.JSONException;
import org.json.JSONObject;

final class ClientInfoInterceptor$ClientInfo
{
  private static final String TAG = "ClientInfo";
  private String carrier;
  private String manufacturer;
  private String model;
  private String networkType;
  private String os;
  private String osVersion;
  
  public ClientInfoInterceptor$ClientInfo()
  {
    this("Unknown", "Unknown", "Unknown", "Unknown", "Unknown", "Unknown");
  }
  
  public ClientInfoInterceptor$ClientInfo(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6)
  {
    setOS(paramString1);
    setOSVersion(paramString2);
    setModel(paramString3);
    setManufacturer(paramString4);
    setNetworkType(paramString5);
    setCarrier(paramString6);
  }
  
  public String getCarrier()
  {
    return carrier;
  }
  
  public String getManufacturer()
  {
    return manufacturer;
  }
  
  public String getModel()
  {
    return model;
  }
  
  public String getNetworkType()
  {
    return networkType;
  }
  
  public String getOS()
  {
    return os;
  }
  
  public String getOSVersion()
  {
    return osVersion;
  }
  
  public void setCarrier(String paramString)
  {
    carrier = paramString;
  }
  
  public void setManufacturer(String paramString)
  {
    manufacturer = paramString;
  }
  
  public void setModel(String paramString)
  {
    model = paramString;
  }
  
  public void setNetworkType(String paramString)
  {
    networkType = paramString;
  }
  
  public void setOS(String paramString)
  {
    os = paramString;
  }
  
  public void setOSVersion(String paramString)
  {
    osVersion = paramString;
  }
  
  protected JSONObject toJsonObject()
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("os", getOS());
      localJSONObject.put("osVersion", getOSVersion());
      localJSONObject.put("model", getModel());
      localJSONObject.put("manufacturer", getManufacturer());
      localJSONObject.put("networkType", getNetworkType());
      localJSONObject.put("carrier", getCarrier());
      return localJSONObject;
    }
    catch (JSONException localJSONException)
    {
      Log.w("ClientInfo", "Couldn't serialize clientInfo to a JSONObject");
    }
    return localJSONObject;
  }
  
  public String toString()
  {
    return toJsonObject().toString();
  }
}

/* Location:
 * Qualified Name:     com.amazon.insights.core.http.ClientInfoInterceptor.ClientInfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */