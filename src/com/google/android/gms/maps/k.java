package com.google.android.gms.maps;

import android.app.Activity;
import android.os.RemoteException;
import android.support.v4.app.Fragment;
import com.google.android.gms.c.b;
import com.google.android.gms.common.c;
import com.google.android.gms.maps.internal.ak;
import com.google.android.gms.maps.internal.cw;
import com.google.android.gms.maps.internal.v;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class k
  extends b<j>
{
  protected com.google.android.gms.c.k<j> a;
  private final Fragment b;
  private Activity c;
  private final List<f> d = new ArrayList();
  
  k(Fragment paramFragment)
  {
    b = paramFragment;
  }
  
  private void a(Activity paramActivity)
  {
    c = paramActivity;
    i();
  }
  
  protected void a(com.google.android.gms.c.k<j> paramk)
  {
    a = paramk;
    i();
  }
  
  public void i()
  {
    if ((c != null) && (a != null) && (a() == null)) {}
    try
    {
      d.a(c);
      Object localObject = cw.a(c).c(com.google.android.gms.c.j.a(c));
      a.a(new j(b, (v)localObject));
      localObject = d.iterator();
      while (((Iterator)localObject).hasNext())
      {
        f localf = (f)((Iterator)localObject).next();
        ((j)a()).a(localf);
      }
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new com.google.android.gms.maps.model.f(localRemoteException);
      d.clear();
      return;
    }
    catch (c localc) {}
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */