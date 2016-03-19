package com.grubhub.AppBaseLibrary.android.dataServices.a.i;

import android.content.Context;
import com.grubhub.AppBaseLibrary.android.dataServices.a.i;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAddressDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIUserAuthDataModel;
import java.util.ArrayList;

public class b
  extends com.grubhub.AppBaseLibrary.android.dataServices.a.a<ArrayList<GHSIAddressDataModel>>
{
  private boolean b;
  
  public b(Context paramContext, i parami1, i parami2)
  {
    super(paramContext, parami1, parami2);
  }
  
  public b(Context paramContext, boolean paramBoolean, i parami1, i parami2)
  {
    super(paramContext, parami1, parami2);
    b = paramBoolean;
  }
  
  public void a()
  {
    super.a();
    Object localObject = c().N();
    com.grubhub.AppBaseLibrary.android.dataServices.net.a locala;
    if (localObject != null)
    {
      localObject = ((GHSIUserAuthDataModel)localObject).getUdid();
      locala = b();
      if (b) {
        break label57;
      }
    }
    label57:
    for (boolean bool = true;; bool = false)
    {
      locala.b((String)localObject, bool, this, this, f());
      return;
      localObject = null;
      break;
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
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.a.i.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */