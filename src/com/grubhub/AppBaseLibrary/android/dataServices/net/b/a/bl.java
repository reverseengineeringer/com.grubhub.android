package com.grubhub.AppBaseLibrary.android.dataServices.net.b.a;

import android.content.Context;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2SavedAddressWrapperDTO;

public class bl
  extends c<bl, bk, V2SavedAddressWrapperDTO, Void>
{
  private String j;
  
  public bl(Context paramContext)
  {
    super(paramContext);
  }
  
  public bk b()
  {
    return new bk(this, null);
  }
  
  protected bl c()
  {
    return this;
  }
  
  public bl e(String paramString)
  {
    j = paramString;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.bl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */