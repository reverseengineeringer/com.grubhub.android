package com.taplytics;

import java.util.Date;
import org.json.JSONObject;

class fg
  extends h
{
  fg(fe paramfe, String paramString) {}
  
  public void e()
  {
    super.e();
    try
    {
      if ((fy.e().j()) && (fy.e().g()))
      {
        new JSONObject();
        JSONObject localJSONObject = new JSONObject();
        localJSONObject.put("name", a);
        localJSONObject.put("variableType", "Code Block");
        localJSONObject.put("created_at", new Date());
        im.a().a("newCodeBlock", localJSONObject);
      }
      return;
    }
    catch (Exception localException)
    {
      ck.b("error pushing codeBlock to server", localException);
    }
  }
}

/* Location:
 * Qualified Name:     com.taplytics.fg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */