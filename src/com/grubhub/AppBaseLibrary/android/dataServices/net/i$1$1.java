package com.grubhub.AppBaseLibrary.android.dataServices.net;

import com.android.volley.VolleyError;
import com.android.volley.toolbox.RequestFuture;
import com.grubhub.AppBaseLibrary.android.b.b;
import com.grubhub.AppBaseLibrary.android.utils.e.a;
import java.util.ArrayList;
import java.util.concurrent.TimeUnit;

class i$1$1
  extends j<ArrayList<String>>
{
  i$1$1(i.1 param1, com.grubhub.AppBaseLibrary.android.dataServices.net.b.f paramf, RequestFuture paramRequestFuture, int paramInt)
  {
    super(a, null);
  }
  
  public ArrayList<String> a()
  {
    ArrayList localArrayList1 = new ArrayList();
    try
    {
      if (com.grubhub.AppBaseLibrary.android.utils.f.b(e)) {
        a.a(e);
      }
      d.a.a(a);
      ArrayList localArrayList2 = (ArrayList)b.get(c, TimeUnit.MILLISECONDS);
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
      new c(d.a, localb).a(d.a.b, null, f.ANONYMOUS_USER);
    }
    return localArrayList1;
    return localArrayList1;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.i.1.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */