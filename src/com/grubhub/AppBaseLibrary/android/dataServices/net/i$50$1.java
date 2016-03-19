package com.grubhub.AppBaseLibrary.android.dataServices.net;

import com.android.volley.VolleyError;
import com.android.volley.toolbox.RequestFuture;
import com.grubhub.AppBaseLibrary.android.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIOrderReviewDataModel;
import com.grubhub.AppBaseLibrary.android.utils.e.a;
import java.util.ArrayList;
import java.util.concurrent.TimeUnit;

class i$50$1
  extends j<ArrayList<GHSIOrderReviewDataModel>>
{
  i$50$1(i.50 param50, com.grubhub.AppBaseLibrary.android.dataServices.net.b.f paramf, RequestFuture paramRequestFuture, int paramInt)
  {
    super(a, null);
  }
  
  public ArrayList<GHSIOrderReviewDataModel> a()
  {
    try
    {
      if (com.grubhub.AppBaseLibrary.android.utils.f.b(e)) {
        a.a(e);
      }
      d.a.a(a);
      ArrayList localArrayList = (ArrayList)b.get(c, TimeUnit.MILLISECONDS);
      return localArrayList;
    }
    catch (Exception localException)
    {
      a.b(i.e(), localException.getMessage());
      if ((localException.getCause() instanceof VolleyError))
      {
        b localb = new b((VolleyError)localException.getCause());
        if ("AuthFailureError".equals(localb.b())) {
          new c(d.a, localb).a(d.a.b, null, f.USER, false, false);
        }
      }
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.i.50.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */