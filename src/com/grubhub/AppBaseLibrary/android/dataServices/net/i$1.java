package com.grubhub.AppBaseLibrary.android.dataServices.net;

import com.android.volley.VolleyError;
import com.android.volley.toolbox.RequestFuture;
import com.grubhub.AppBaseLibrary.android.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.q;
import com.grubhub.AppBaseLibrary.android.utils.e.a;
import java.util.ArrayList;
import java.util.concurrent.TimeUnit;

class i$1
  extends q
{
  i$1(i parami) {}
  
  public ArrayList<String> a(final com.grubhub.AppBaseLibrary.android.dataServices.net.b.f paramf, final RequestFuture<ArrayList<String>> paramRequestFuture, final int paramInt)
  {
    paramf = new j(paramf, paramRequestFuture)
    {
      public ArrayList<String> a()
      {
        ArrayList localArrayList1 = new ArrayList();
        try
        {
          if (com.grubhub.AppBaseLibrary.android.utils.f.b(e)) {
            paramf.a(e);
          }
          a.a(paramf);
          ArrayList localArrayList2 = (ArrayList)paramRequestFuture.get(paramInt, TimeUnit.MILLISECONDS);
          if (localArrayList2 != null) {
            localArrayList1.addAll(localArrayList2);
          }
        }
        catch (Exception localException)
        {
          b localb;
          do
          {
            do
            {
              a.b(i.e(), localException.getMessage());
            } while (!(localException.getCause() instanceof VolleyError));
            localb = new b((VolleyError)localException.getCause());
          } while (!"AuthFailureError".equals(localb.b()));
          new c(a, localb).a(a.b, null, f.ANONYMOUS_USER);
        }
        return localArrayList1;
        return localArrayList1;
      }
    };
    return (ArrayList)i.a(a, "autoCompleteAddress", paramf);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.i.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */