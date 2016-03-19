package com.grubhub.AppBaseLibrary.android.dataServices.a.e;

import android.content.Context;
import com.grubhub.AppBaseLibrary.android.dataServices.a.i;
import com.grubhub.AppBaseLibrary.android.dataServices.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIDeliveryDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIDeliveryLookupDataModel;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;

public class a
  extends com.grubhub.AppBaseLibrary.android.dataServices.a.a<GHSIDeliveryLookupDataModel>
{
  private String b;
  
  public a(Context paramContext, String paramString, i parami1, i parami2)
  {
    super(paramContext, parami1, parami2);
    b = paramString;
  }
  
  public void a()
  {
    super.a();
    b().i(b, this, this, f());
  }
  
  public void a(GHSIDeliveryLookupDataModel paramGHSIDeliveryLookupDataModel)
  {
    if (paramGHSIDeliveryLookupDataModel != null)
    {
      LinkedHashMap localLinkedHashMap = new LinkedHashMap();
      Iterator localIterator = paramGHSIDeliveryLookupDataModel.getDeliveries().iterator();
      while (localIterator.hasNext())
      {
        GHSIDeliveryDataModel localGHSIDeliveryDataModel = (GHSIDeliveryDataModel)localIterator.next();
        String str = localGHSIDeliveryDataModel.getOrderId();
        if (!localLinkedHashMap.containsKey(str)) {
          localLinkedHashMap.put(str, localGHSIDeliveryDataModel);
        }
      }
      c().a(localLinkedHashMap);
    }
    super.onResponse(paramGHSIDeliveryLookupDataModel);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.a.e.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */