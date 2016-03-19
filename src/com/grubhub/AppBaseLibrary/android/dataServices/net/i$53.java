package com.grubhub.AppBaseLibrary.android.dataServices.net;

import com.android.volley.VolleyError;
import com.android.volley.toolbox.RequestFuture;
import com.grubhub.AppBaseLibrary.android.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.by;
import com.grubhub.AppBaseLibrary.android.utils.e.a;
import java.util.concurrent.TimeUnit;

class i$53
  extends by
{
  i$53(i parami) {}
  
  public Boolean a(final com.grubhub.AppBaseLibrary.android.dataServices.net.b.f paramf, final RequestFuture<Void> paramRequestFuture, final int paramInt)
  {
    paramf = new j(paramf, paramRequestFuture)
    {
      public Boolean a()
      {
        try
        {
          if (com.grubhub.AppBaseLibrary.android.utils.f.b(e)) {
            paramf.a(e);
          }
          a.a(paramf);
          paramRequestFuture.get(paramInt, TimeUnit.MILLISECONDS);
          return Boolean.valueOf(true);
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
        return Boolean.valueOf(false);
      }
    };
    return (Boolean)i.b(a, "quitOrderReviewSurvey", paramf);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.i.53
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */