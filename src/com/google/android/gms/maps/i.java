package com.google.android.gms.maps;

import android.app.Activity;
import android.os.RemoteException;
import android.support.v4.app.Fragment;
import com.google.android.gms.c.b;
import com.google.android.gms.c.k;
import com.google.android.gms.common.c;
import com.google.android.gms.maps.internal.ak;
import com.google.android.gms.maps.internal.cw;
import com.google.android.gms.maps.model.f;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class i
  extends b<h>
{
  protected k<h> a;
  private final Fragment b;
  private Activity c;
  private final List<e> d = new ArrayList();
  
  i(Fragment paramFragment)
  {
    b = paramFragment;
  }
  
  private void a(Activity paramActivity)
  {
    c = paramActivity;
    i();
  }
  
  protected void a(k<h> paramk)
  {
    a = paramk;
    i();
  }
  
  public void a(e parame)
  {
    if (a() != null)
    {
      ((h)a()).a(parame);
      return;
    }
    d.add(parame);
  }
  
  public void i()
  {
    if ((c != null) && (a != null) && (a() == null)) {
      try
      {
        d.a(c);
        Object localObject = cw.a(c).b(com.google.android.gms.c.j.a(c));
        if (localObject == null) {
          return;
        }
        a.a(new h(b, (com.google.android.gms.maps.internal.j)localObject));
        localObject = d.iterator();
        while (((Iterator)localObject).hasNext())
        {
          e locale = (e)((Iterator)localObject).next();
          ((h)a()).a(locale);
        }
        return;
      }
      catch (RemoteException localRemoteException)
      {
        throw new f(localRemoteException);
        d.clear();
        return;
      }
      catch (c localc) {}
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */