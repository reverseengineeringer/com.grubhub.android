package com.grubhub.AppBaseLibrary.android.dataServices.a.i;

import android.content.Context;
import com.grubhub.AppBaseLibrary.android.dataServices.a.i;
import com.grubhub.AppBaseLibrary.android.dataServices.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAddressDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIUserAuthDataModel;
import java.util.ArrayList;

public class a
  extends com.grubhub.AppBaseLibrary.android.dataServices.a.a<ArrayList<GHSIAddressDataModel>>
{
  private GHSIAddressDataModel b;
  
  public a(Context paramContext, GHSIAddressDataModel paramGHSIAddressDataModel, i parami1, i parami2)
  {
    super(paramContext, parami1, parami2);
    b = paramGHSIAddressDataModel;
  }
  
  public void a()
  {
    super.a();
    Object localObject = c().N();
    if (localObject != null) {}
    for (localObject = ((GHSIUserAuthDataModel)localObject).getUdid();; localObject = null)
    {
      b().a((String)localObject, b, this, this, f());
      return;
    }
  }
  
  public void a(ArrayList<GHSIAddressDataModel> paramArrayList)
  {
    if (paramArrayList != null)
    {
      int i = 0;
      while (i < paramArrayList.size())
      {
        GHSIAddressDataModel localGHSIAddressDataModel = (GHSIAddressDataModel)paramArrayList.get(i);
        if (localGHSIAddressDataModel != null) {
          localGHSIAddressDataModel.setIsSavedAddress(true);
        }
        i += 1;
      }
      c().d(paramArrayList);
    }
    super.onResponse(paramArrayList);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.a.i.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */