package com.google.android.gms.common.api;

import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.internal.aq;
import java.util.concurrent.atomic.AtomicReference;

public abstract class y<R extends v, A extends i>
  extends a<R>
  implements ak<A>, z<R>
{
  private final j<A> b;
  private AtomicReference<ai> c = new AtomicReference();
  
  protected y(j<A> paramj, GoogleApiClient paramGoogleApiClient)
  {
    super(((GoogleApiClient)aq.a(paramGoogleApiClient, "GoogleApiClient must not be null")).getLooper());
    b = ((j)aq.a(paramj));
  }
  
  private void a(RemoteException paramRemoteException)
  {
    c(new Status(8, paramRemoteException.getLocalizedMessage(), null));
  }
  
  public void a(ai paramai)
  {
    c.set(paramai);
  }
  
  public final void a(A paramA)
    throws DeadObjectException
  {
    try
    {
      b(paramA);
      return;
    }
    catch (DeadObjectException paramA)
    {
      a(paramA);
      throw paramA;
    }
    catch (RemoteException paramA)
    {
      a(paramA);
    }
  }
  
  protected abstract void b(A paramA)
    throws RemoteException;
  
  public final void c(Status paramStatus)
  {
    if (!paramStatus.e()) {}
    for (boolean bool = true;; bool = false)
    {
      aq.b(bool, "Failed result must not be success");
      a(b(paramStatus));
      return;
    }
  }
  
  protected void d()
  {
    ai localai = (ai)c.getAndSet(null);
    if (localai != null) {
      localai.a(this);
    }
  }
  
  public final j<A> e()
  {
    return b;
  }
  
  public int f()
  {
    return 0;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.y
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */