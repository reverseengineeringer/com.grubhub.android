package com.facebook.internal;

import android.os.Bundle;
import org.json.JSONException;
import org.json.JSONObject;

final class g$2
  implements h
{
  public void a(Bundle paramBundle, String paramString, Object paramObject)
    throws JSONException
  {
    paramBundle.putInt(paramString, ((Integer)paramObject).intValue());
  }
  
  public void a(JSONObject paramJSONObject, String paramString, Object paramObject)
    throws JSONException
  {
    paramJSONObject.put(paramString, paramObject);
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.g.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */