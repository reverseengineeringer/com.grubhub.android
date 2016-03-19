package com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.a;

import com.grubhub.AppBaseLibrary.android.dataServices.dto.yummyRummy.GHSYummyRummyStatusModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.yummyRummy.GHSIYummyRummyStatusModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.k;

public class c
  extends com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.a<c, GHSIYummyRummyStatusModel, Void>
{
  protected String l;
  
  private c(d paramd)
  {
    super(paramd);
    l = j;
  }
  
  protected void b()
  {
    if (g == null) {
      g = new com.grubhub.AppBaseLibrary.android.dataServices.net.a.a(l);
    }
  }
  
  protected void c()
  {
    com.grubhub.AppBaseLibrary.android.dataServices.net.b.c localc = new com.grubhub.AppBaseLibrary.android.dataServices.net.b.c(g.toString(), new k(), GHSYummyRummyStatusModel.class, a, i, j);
    localc.setTag(c);
    h = localc;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.a.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */