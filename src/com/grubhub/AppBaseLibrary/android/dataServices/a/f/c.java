package com.grubhub.AppBaseLibrary.android.dataServices.a.f;

import android.content.Context;
import com.grubhub.AppBaseLibrary.android.dataServices.a.i;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIGetPaymentsModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIUserAuthDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIVaultedCreditCardModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIVaultedPayPalModel;
import java.util.ArrayList;
import java.util.List;

public class c
  extends com.grubhub.AppBaseLibrary.android.dataServices.a.a<GHSIGetPaymentsModel>
{
  private boolean b;
  
  public c(Context paramContext, i parami1, i parami2)
  {
    super(paramContext, parami1, parami2);
  }
  
  public c(Context paramContext, boolean paramBoolean, i parami1, i parami2)
  {
    super(paramContext, parami1, parami2);
    b = paramBoolean;
  }
  
  private void a(com.grubhub.AppBaseLibrary.android.dataServices.b.b paramb, ArrayList<GHSIVaultedCreditCardModel> paramArrayList)
  {
    if (paramArrayList == null)
    {
      paramb.a(null);
      return;
    }
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    while (i < paramArrayList.size())
    {
      if (!((GHSIVaultedCreditCardModel)paramArrayList.get(i)).isExpired().booleanValue()) {
        localArrayList.add(paramArrayList.get(i));
      }
      i += 1;
    }
    paramArrayList = paramb.G();
    if (paramArrayList != null)
    {
      i = paramArrayList.size() - 1;
      while (i >= 0)
      {
        if (((GHSIVaultedCreditCardModel)paramArrayList.get(i)).isSingleUse()) {
          localArrayList.add(0, paramArrayList.get(i));
        }
        i -= 1;
      }
    }
    paramb.a(localArrayList);
  }
  
  private void b(com.grubhub.AppBaseLibrary.android.dataServices.b.b paramb, ArrayList<GHSIVaultedPayPalModel> paramArrayList)
  {
    paramb.e(paramArrayList);
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
      locala.a((String)localObject, bool, this, this, f());
      return;
      localObject = null;
      break;
    }
  }
  
  public void a(com.grubhub.AppBaseLibrary.android.b.b paramb)
  {
    super.a(paramb);
  }
  
  public void a(GHSIGetPaymentsModel paramGHSIGetPaymentsModel)
  {
    if (paramGHSIGetPaymentsModel != null)
    {
      com.grubhub.AppBaseLibrary.android.dataServices.b.b localb = c();
      a(localb, paramGHSIGetPaymentsModel.getCreditCards());
      b(localb, paramGHSIGetPaymentsModel.getPayPals());
    }
    super.onResponse(paramGHSIGetPaymentsModel);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.a.f.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */