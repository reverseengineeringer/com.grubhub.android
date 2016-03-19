package com.google.android.gms.common.internal;

import com.google.android.gms.common.api.Scope;
import java.util.Collections;
import java.util.Set;

public final class j
{
  public final Set<Scope> a;
  public final boolean b;
  
  public j(Set<Scope> paramSet, boolean paramBoolean)
  {
    aq.a(paramSet);
    a = Collections.unmodifiableSet(paramSet);
    b = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.internal.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */