package com.android.volley;

import java.util.Collections;
import java.util.Map;

public class NetworkResponse
{
  public final byte[] data;
  public final Map<String, String> headers;
  public final boolean notModified;
  public final int statusCode;
  
  public NetworkResponse(int paramInt, byte[] paramArrayOfByte, Map<String, String> paramMap, boolean paramBoolean)
  {
    statusCode = paramInt;
    data = paramArrayOfByte;
    headers = paramMap;
    notModified = paramBoolean;
  }
  
  public NetworkResponse(byte[] paramArrayOfByte)
  {
    this(200, paramArrayOfByte, Collections.emptyMap(), false);
  }
  
  public NetworkResponse(byte[] paramArrayOfByte, Map<String, String> paramMap)
  {
    this(200, paramArrayOfByte, paramMap, false);
  }
}

/* Location:
 * Qualified Name:     com.android.volley.NetworkResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */