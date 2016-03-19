package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.view.View;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.c;
import com.google.android.gms.d.ck;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public final class i
{
  private final Account a;
  private final Set<Scope> b;
  private final Set<Scope> c;
  private final Map<c<?>, j> d;
  private final int e;
  private final View f;
  private final String g;
  private final String h;
  private final ck i;
  private Integer j;
  
  public i(Account paramAccount, Collection<Scope> paramCollection, Map<c<?>, j> paramMap, int paramInt, View paramView, String paramString1, String paramString2, ck paramck)
  {
    a = paramAccount;
    if (paramCollection == null) {}
    for (paramAccount = Collections.EMPTY_SET;; paramAccount = Collections.unmodifiableSet(new HashSet(paramCollection)))
    {
      b = paramAccount;
      paramAccount = paramMap;
      if (paramMap == null) {
        paramAccount = Collections.EMPTY_MAP;
      }
      d = paramAccount;
      f = paramView;
      e = paramInt;
      g = paramString1;
      h = paramString2;
      i = paramck;
      paramAccount = new HashSet(b);
      paramCollection = d.values().iterator();
      while (paramCollection.hasNext()) {
        paramAccount.addAll(nexta);
      }
    }
    c = Collections.unmodifiableSet(paramAccount);
  }
  
  @Deprecated
  public String a()
  {
    if (a != null) {
      return a.name;
    }
    return null;
  }
  
  public void a(Integer paramInteger)
  {
    j = paramInteger;
  }
  
  public Account b()
  {
    return a;
  }
  
  public Account c()
  {
    if (a != null) {
      return a;
    }
    return new Account("<<default account>>", "com.google");
  }
  
  public Set<Scope> d()
  {
    return b;
  }
  
  public Set<Scope> e()
  {
    return c;
  }
  
  public Map<c<?>, j> f()
  {
    return d;
  }
  
  public String g()
  {
    return g;
  }
  
  public String h()
  {
    return h;
  }
  
  public ck i()
  {
    return i;
  }
  
  public Integer j()
  {
    return j;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.internal.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */