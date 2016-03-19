package com.taplytics;

import com.android.volley.AuthFailureError;
import com.android.volley.NetworkResponse;
import com.android.volley.ParseError;
import com.android.volley.Response;
import com.android.volley.Response.ErrorListener;
import com.android.volley.Response.Listener;
import com.android.volley.VolleyError;
import com.android.volley.VolleyLog;
import com.android.volley.toolbox.HttpHeaderParser;
import com.android.volley.toolbox.JsonRequest;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.json.JSONException;
import org.json.JSONObject;

public class hl
  extends JsonRequest<JSONObject>
{
  z a;
  HttpEntity b;
  Response.Listener<JSONObject> c;
  Response.ErrorListener d;
  private Map<String, String> e;
  
  public hl(int paramInt, String paramString, JSONObject paramJSONObject, Map<String, byte[]> paramMap, Response.Listener<JSONObject> paramListener, Response.ErrorListener paramErrorListener) {}
  
  private void a(Map<String, byte[]> paramMap)
  {
    paramMap = paramMap.entrySet().iterator();
    while (paramMap.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramMap.next();
      a.a("image", new ad((byte[])localEntry.getValue(), (String)localEntry.getKey()));
    }
  }
  
  protected void a(JSONObject paramJSONObject)
  {
    c.onResponse(paramJSONObject);
  }
  
  public void deliverError(VolleyError paramVolleyError)
  {
    if (paramVolleyError != null) {
      d.onErrorResponse(paramVolleyError);
    }
    ck.b("Volley error", paramVolleyError);
  }
  
  public byte[] getBody()
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    try
    {
      b = a.c();
      b.writeTo(localByteArrayOutputStream);
      return localByteArrayOutputStream.toByteArray();
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        VolleyLog.e("IOException writing to ByteArrayOutputStream", new Object[0]);
      }
    }
  }
  
  public String getBodyContentType()
  {
    return b.getContentType().getValue();
  }
  
  public Map<String, String> getHeaders()
    throws AuthFailureError
  {
    return e;
  }
  
  protected Response<JSONObject> parseNetworkResponse(NetworkResponse paramNetworkResponse)
  {
    try
    {
      paramNetworkResponse = Response.success(new JSONObject(new String(data, HttpHeaderParser.parseCharset(headers))), HttpHeaderParser.parseCacheHeaders(paramNetworkResponse));
      return paramNetworkResponse;
    }
    catch (UnsupportedEncodingException paramNetworkResponse)
    {
      return Response.error(new ParseError(paramNetworkResponse));
    }
    catch (JSONException paramNetworkResponse) {}
    return Response.error(new ParseError(paramNetworkResponse));
  }
}

/* Location:
 * Qualified Name:     com.taplytics.hl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */