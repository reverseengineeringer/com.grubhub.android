package com.grubhub.AppBaseLibrary.android.dataServices.a.d;

import android.content.Context;
import com.grubhub.AppBaseLibrary.android.dataServices.a.i;
import com.grubhub.AppBaseLibrary.android.dataServices.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIMessage;
import java.util.Date;

public class a
  extends com.grubhub.AppBaseLibrary.android.dataServices.a.a<GHSIMessage>
{
  public a(Context paramContext, i parami1, i parami2)
  {
    super(paramContext, parami1, parami2);
  }
  
  public void a()
  {
    super.a();
    b().b(null, this, this, f());
  }
  
  public void a(GHSIMessage paramGHSIMessage)
  {
    b localb = c();
    localb.a(new Date().getTime());
    if (paramGHSIMessage != null) {
      localb.a(paramGHSIMessage);
    }
    super.onResponse(paramGHSIMessage);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.a.d.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */