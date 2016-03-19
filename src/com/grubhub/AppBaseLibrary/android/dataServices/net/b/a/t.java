package com.grubhub.AppBaseLibrary.android.dataServices.net.b.a;

import android.content.Context;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSIAutoCompleteDataModel;
import com.grubhub.AppBaseLibrary.android.order.g;
import com.grubhub.AppBaseLibrary.android.order.l;

public class t
  extends c<t, s, GHSIAutoCompleteDataModel, Void>
{
  protected String j;
  protected String[] k;
  protected Double l;
  protected Double m;
  protected g n;
  protected Long o;
  protected l p;
  
  public t(Context paramContext)
  {
    super(paramContext);
  }
  
  public t a(g paramg)
  {
    n = paramg;
    return this;
  }
  
  public t a(l paraml)
  {
    p = paraml;
    return this;
  }
  
  public t a(Double paramDouble)
  {
    l = paramDouble;
    return this;
  }
  
  public t a(Long paramLong)
  {
    o = paramLong;
    return this;
  }
  
  public t a(String[] paramArrayOfString)
  {
    k = paramArrayOfString;
    return this;
  }
  
  public s b()
  {
    return new s(this, null);
  }
  
  public t b(Double paramDouble)
  {
    m = paramDouble;
    return this;
  }
  
  protected t c()
  {
    return this;
  }
  
  public t e(String paramString)
  {
    j = paramString;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */