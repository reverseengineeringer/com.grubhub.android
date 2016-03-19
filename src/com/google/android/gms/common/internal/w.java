package com.google.android.gms.common.internal;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.p;

public final class w
  extends n<T>.o
{
  public w(n paramn, int paramInt, Bundle paramBundle)
  {
    super(paramn, paramInt, paramBundle);
  }
  
  protected void a(ConnectionResult paramConnectionResult)
  {
    n.a(e).b(paramConnectionResult);
    e.a(paramConnectionResult);
  }
  
  protected boolean a()
  {
    n.a(e).b(ConnectionResult.a);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.internal.w
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */