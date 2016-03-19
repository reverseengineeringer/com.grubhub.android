package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.Intent;

final class ab
{
  private final String a;
  private final ComponentName b;
  
  public ab(String paramString)
  {
    a = aq.a(paramString);
    b = null;
  }
  
  public Intent a()
  {
    if (a != null) {
      return new Intent(a).setPackage("com.google.android.gms");
    }
    return new Intent().setComponent(b);
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof ab)) {
        return false;
      }
      paramObject = (ab)paramObject;
    } while ((ao.a(a, a)) && (ao.a(b, b)));
    return false;
  }
  
  public int hashCode()
  {
    return ao.a(new Object[] { a, b });
  }
  
  public String toString()
  {
    if (a == null) {
      return b.flattenToString();
    }
    return a;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.internal.ab
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */