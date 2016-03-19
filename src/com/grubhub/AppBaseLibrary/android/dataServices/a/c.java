package com.grubhub.AppBaseLibrary.android.dataServices.a;

import android.content.Context;
import com.grubhub.AppBaseLibrary.android.dataServices.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSFilterSortCriteria;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAddressDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIFoodMenuDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantDataModel;
import com.grubhub.AppBaseLibrary.android.order.l;

public class c
  extends a<GHSIRestaurantDataModel>
  implements i
{
  private String b;
  private String c;
  private String d;
  private Long e;
  private boolean f;
  private boolean g;
  private l h;
  
  public c(Context paramContext, String paramString1, String paramString2, String paramString3, l paraml, Long paramLong, boolean paramBoolean, i parami1, i parami2)
  {
    this(paramContext, paramString1, paramString2, paramString3, paraml, paramLong, paramBoolean, true, parami1, parami2);
  }
  
  public c(Context paramContext, String paramString1, String paramString2, String paramString3, l paraml, Long paramLong, boolean paramBoolean1, boolean paramBoolean2, i parami1, i parami2)
  {
    super(paramContext, parami1, parami2);
    b = paramString1;
    c = paramString2;
    d = paramString3;
    f = paramBoolean1;
    h = paraml;
    e = paramLong;
    g = paramBoolean2;
  }
  
  private boolean a(GHSIFoodMenuDataModel paramGHSIFoodMenuDataModel)
  {
    return paramGHSIFoodMenuDataModel.getGenerationDate() == null;
  }
  
  public void a()
  {
    super.a();
    b localb = c();
    GHSIRestaurantDataModel localGHSIRestaurantDataModel = localb.T();
    GHSIFoodMenuDataModel localGHSIFoodMenuDataModel = localb.P();
    if (localGHSIRestaurantDataModel != null)
    {
      localObject = localGHSIRestaurantDataModel.getRestaurantId();
      if (localGHSIFoodMenuDataModel == null) {
        break label109;
      }
    }
    label109:
    for (String str = localGHSIFoodMenuDataModel.getRestaurantId();; str = null)
    {
      if ((f) || (localObject == null) || (!((String)localObject).equals(b)) || (str == null) || (!str.equals(b)) || (a(localGHSIFoodMenuDataModel))) {
        break label114;
      }
      a(localGHSIRestaurantDataModel);
      return;
      localObject = null;
      break;
    }
    label114:
    if ((c == null) || (d == null))
    {
      localObject = localb.z();
      if ((localObject != null) && (((GHSFilterSortCriteria)localObject).getAddress() != null))
      {
        localObject = ((GHSFilterSortCriteria)localObject).getAddress();
        c = ((GHSIAddressDataModel)localObject).getLatitude();
        d = ((GHSIAddressDataModel)localObject).getLongitude();
      }
    }
    Object localObject = e;
    if (h != l.FUTURE) {
      localObject = null;
    }
    b().a(b, c, d, h, (Long)localObject, this, this, f());
  }
  
  public void a(GHSIRestaurantDataModel paramGHSIRestaurantDataModel)
  {
    if (g) {
      c().a(paramGHSIRestaurantDataModel);
    }
    super.onResponse(paramGHSIRestaurantDataModel);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.a.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */