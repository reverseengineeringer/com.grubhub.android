package com.taplytics;

import android.graphics.Color;
import org.json.JSONObject;

public class jx
{
  public static Integer a(Object paramObject)
  {
    if ((paramObject instanceof JSONObject))
    {
      paramObject = (JSONObject)paramObject;
      int i = ((JSONObject)paramObject).optInt("r", -1);
      int j = ((JSONObject)paramObject).optInt("g", -1);
      int k = ((JSONObject)paramObject).optInt("b", -1);
      int m = ((JSONObject)paramObject).optInt("a", -1);
      if ((i != -1) && (j != -1) && (k != -1) && (m != -1)) {
        return Integer.valueOf(Color.argb(m * 255, i, j, k));
      }
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.taplytics.jx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */