package com.grubhub.AppBaseLibrary.android.dataServices.net.b.a;

import android.content.Context;
import java.util.ArrayList;

public class r
  extends c<r, p, Void, ArrayList<String>>
{
  protected String j;
  protected Double k;
  protected Double l;
  
  public r(Context paramContext)
  {
    super(paramContext);
  }
  
  public r a(Double paramDouble)
  {
    k = paramDouble;
    return this;
  }
  
  public p b()
  {
    return new p(this, null);
  }
  
  public r b(Double paramDouble)
  {
    l = paramDouble;
    return this;
  }
  
  protected r c()
  {
    return this;
  }
  
  public r e(String paramString)
  {
    j = paramString;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */