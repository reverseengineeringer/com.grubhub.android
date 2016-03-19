package com.grubhub.AppBaseLibrary.android.dataServices.a.b;

import android.content.Context;
import com.grubhub.AppBaseLibrary.android.dataServices.a.i;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel.GHSCartState;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIUserCartsDataModel;
import java.util.Map;

public class k
  extends l
{
  public k(Context paramContext, boolean paramBoolean, i parami1, i parami2)
  {
    super(paramContext, paramBoolean, parami1, parami2);
  }
  
  public void a(GHSIUserCartsDataModel paramGHSIUserCartsDataModel)
  {
    GHSIUserCartsDataModel localGHSIUserCartsDataModel = paramGHSIUserCartsDataModel;
    if (paramGHSIUserCartsDataModel != null)
    {
      paramGHSIUserCartsDataModel.retainCarts(GHSICartDataModel.GHSCartState.CHECKOUT_COMPLETE);
      if (paramGHSIUserCartsDataModel.getUserCarts() != null)
      {
        localGHSIUserCartsDataModel = paramGHSIUserCartsDataModel;
        if (!paramGHSIUserCartsDataModel.getUserCarts().isEmpty()) {}
      }
      else
      {
        localGHSIUserCartsDataModel = null;
      }
    }
    super.onResponse(localGHSIUserCartsDataModel);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.a.b.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */