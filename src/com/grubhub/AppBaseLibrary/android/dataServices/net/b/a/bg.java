package com.grubhub.AppBaseLibrary.android.dataServices.net.b.a;

import com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2ReviewsDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIReviewsDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.c;
import com.grubhub.AppBaseLibrary.android.dataServices.net.k;
import com.grubhub.AppBaseLibrary.android.utils.f;

public class bg
  extends a<bg, GHSIReviewsDataModel, Void>
{
  protected String l;
  protected int m;
  protected String n;
  
  private bg(bh parambh)
  {
    super(parambh);
    l = j;
    m = k;
    n = l;
  }
  
  protected void b()
  {
    if (g == null) {
      g = new com.grubhub.AppBaseLibrary.android.dataServices.net.a.a(d, e);
    }
    g.a("ratings");
    g.a("restaurants");
    g.a(l);
    g.a("reviews");
    com.grubhub.AppBaseLibrary.android.dataServices.net.a.a locala = g;
    if (m > 0) {}
    for (String str = String.valueOf(m);; str = "")
    {
      locala.a("limit", str);
      g.a("rel", "1");
      g.a("refId", n);
      return;
    }
  }
  
  protected void c()
  {
    c localc = new c(g.toString(), new k(), V2ReviewsDataModel.class, a, i, j);
    localc.setTag(c);
    h = localc;
  }
  
  protected boolean d()
  {
    return (super.d()) && (f.b(l));
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.bg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */