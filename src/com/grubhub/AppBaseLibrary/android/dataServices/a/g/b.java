package com.grubhub.AppBaseLibrary.android.dataServices.a.g;

import android.content.Context;
import com.grubhub.AppBaseLibrary.android.dataServices.a.i;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAddressDataModel;
import java.util.ArrayList;

public class b
  extends com.grubhub.AppBaseLibrary.android.dataServices.a.a<ArrayList<GHSIAddressDataModel>>
{
  private final String b;
  
  public b(Context paramContext, String paramString, i parami1, i parami2)
  {
    super(paramContext, parami1, parami2);
    b = paramString;
  }
  
  public void a()
  {
    super.a();
    b().a(b, this, this, f());
  }
  
  public void a(ArrayList<GHSIAddressDataModel> paramArrayList)
  {
    if (paramArrayList != null)
    {
      super.onResponse(paramArrayList);
      return;
    }
    super.a(new com.grubhub.AppBaseLibrary.android.b.b(com.grubhub.AppBaseLibrary.android.b.a.ERROR_CODE_ADDRESS_LOOKUP));
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.a.g.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */