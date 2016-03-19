package com.grubhub.AppBaseLibrary.android.dataServices.a;

import android.content.Context;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSIAutoCompleteDataModel;
import com.grubhub.AppBaseLibrary.android.order.l;

public class g
  extends a<GHSIAutoCompleteDataModel>
  implements i
{
  private String b;
  private String[] c;
  private Double d;
  private Double e;
  private com.grubhub.AppBaseLibrary.android.order.g f;
  private l g;
  private Long h;
  
  public g(Context paramContext, String paramString, String[] paramArrayOfString, Double paramDouble1, Double paramDouble2, com.grubhub.AppBaseLibrary.android.order.g paramg, l paraml, Long paramLong, i parami1, i parami2)
  {
    super(paramContext, parami1, parami2);
    b = paramString;
    c = paramArrayOfString;
    d = paramDouble1;
    e = paramDouble2;
    f = paramg;
    g = paraml;
    h = paramLong;
  }
  
  public void a()
  {
    super.a();
    b().a(b, c, d, e, f, g, h, this, this, f());
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.a.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */