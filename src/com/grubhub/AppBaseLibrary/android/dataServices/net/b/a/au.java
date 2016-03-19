package com.grubhub.AppBaseLibrary.android.dataServices.net.b.a;

import android.content.Context;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIMessage;

public class au
  extends c<au, at, GHSIMessage, Void>
{
  protected String j;
  protected String k;
  
  public au(Context paramContext)
  {
    super(paramContext);
  }
  
  public at b()
  {
    return new at(this, null);
  }
  
  protected au c()
  {
    return this;
  }
  
  public au e(String paramString)
  {
    j = paramString;
    return this;
  }
  
  public au f(String paramString)
  {
    k = paramString;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.au
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */