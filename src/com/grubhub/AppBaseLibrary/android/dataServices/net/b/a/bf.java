package com.grubhub.AppBaseLibrary.android.dataServices.net.b.a;

import android.content.Context;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantAvailabilityDataModel;
import java.util.List;

public class bf
  extends c<bf, be, GHSIRestaurantAvailabilityDataModel, Void>
{
  private List<String> j;
  private String k;
  private String l;
  
  public bf(Context paramContext)
  {
    super(paramContext);
  }
  
  public bf a(List<String> paramList)
  {
    j = paramList;
    return this;
  }
  
  public be b()
  {
    return new be(this, null);
  }
  
  protected bf c()
  {
    return this;
  }
  
  public bf e(String paramString)
  {
    k = paramString;
    return this;
  }
  
  public bf f(String paramString)
  {
    l = paramString;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.bf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */