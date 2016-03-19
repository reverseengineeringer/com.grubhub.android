package com.grubhub.AppBaseLibrary.android.dataServices.net;

import com.android.volley.VolleyError;
import com.android.volley.toolbox.RequestFuture;
import com.grubhub.AppBaseLibrary.android.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIOrderReviewDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.cz;
import com.grubhub.AppBaseLibrary.android.utils.e.a;
import java.util.ArrayList;
import java.util.concurrent.TimeUnit;

class i$50
  extends cz
{
  i$50(i parami) {}
  
  public ArrayList<GHSIOrderReviewDataModel> a(final com.grubhub.AppBaseLibrary.android.dataServices.net.b.f paramf, final RequestFuture<ArrayList<GHSIOrderReviewDataModel>> paramRequestFuture, final int paramInt)
  {
    paramf = new j(paramf, paramRequestFuture)
    {
      public ArrayList<GHSIOrderReviewDataModel> a()
      {
        try
        {
          if (com.grubhub.AppBaseLibrary.android.utils.f.b(e)) {
            paramf.a(e);
          }
          a.a(paramf);
          ArrayList localArrayList = (ArrayList)paramRequestFuture.get(paramInt, TimeUnit.MILLISECONDS);
          return localArrayList;
        }
        catch (Exception localException)
        {
          a.b(i.e(), localException.getMessage());
          if ((localException.getCause() instanceof VolleyError))
          {
            b localb = new b((VolleyError)localException.getCause());
            if ("AuthFailureError".equals(localb.b())) {
              new c(a, localb).a(a.b, null, f.USER, false, false);
            }
          }
        }
        return null;
      }
    };
    return (ArrayList)i.b(a, "validateOrdersReviewedSync", paramf);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.i.50
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */