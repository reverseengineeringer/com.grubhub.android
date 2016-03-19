package com.taplytics;

import com.taplytics.sdk.CodeBlockListener;
import org.json.JSONObject;

public class fe
{
  private static fe a;
  
  public static fe a()
  {
    if (a != null) {
      return a;
    }
    a = new fe();
    return a;
  }
  
  private void a(String paramString)
  {
    if (fy.e().g()) {
      im.a().b().a(new fg(this, paramString));
    }
  }
  
  private boolean a(String paramString, CodeBlockListener paramCodeBlockListener, boolean paramBoolean)
  {
    try
    {
      en localen = fy.e().k().h();
      if ((localen != null) && (localen.has(paramString)))
      {
        paramString = localen.getJSONObject(paramString);
        if ((paramString.has("variableType")) && (paramString.getString("variableType").equals("Code Block")))
        {
          paramCodeBlockListener.run();
          return true;
        }
      }
      else if (paramBoolean)
      {
        a(paramString);
      }
    }
    catch (Exception paramString)
    {
      for (;;)
      {
        ck.b("Problem running code block sync", paramString);
      }
    }
    return false;
  }
  
  private void c(String paramString, CodeBlockListener paramCodeBlockListener)
  {
    try
    {
      fy.e().d().a(new ff(this, paramString, paramCodeBlockListener));
      return;
    }
    catch (Exception paramString)
    {
      ck.b("Problem running code block sync", paramString);
    }
  }
  
  public void a(String paramString, CodeBlockListener paramCodeBlockListener)
  {
    a(paramString, paramCodeBlockListener, true);
  }
  
  public void b(String paramString, CodeBlockListener paramCodeBlockListener)
  {
    if (!a(paramString, paramCodeBlockListener, true)) {
      c(paramString, paramCodeBlockListener);
    }
  }
}

/* Location:
 * Qualified Name:     com.taplytics.fe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */