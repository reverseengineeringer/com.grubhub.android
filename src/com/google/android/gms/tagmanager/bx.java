package com.google.android.gms.tagmanager;

import com.google.android.gms.d.b;
import com.google.android.gms.d.o;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

public abstract class bx
  extends ab
{
  private static final String a = b.zzdw.toString();
  private static final String b = b.zzdx.toString();
  
  public bx(String paramString)
  {
    super(paramString, new String[] { a, b });
  }
  
  public o a(Map<String, o> paramMap)
  {
    Object localObject = paramMap.values().iterator();
    while (((Iterator)localObject).hasNext()) {
      if ((o)((Iterator)localObject).next() == dm.f()) {
        return dm.e(Boolean.valueOf(false));
      }
    }
    localObject = (o)paramMap.get(a);
    o localo = (o)paramMap.get(b);
    if ((localObject == null) || (localo == null)) {}
    for (boolean bool = false;; bool = a((o)localObject, localo, paramMap)) {
      return dm.e(Boolean.valueOf(bool));
    }
  }
  
  public boolean a()
  {
    return true;
  }
  
  protected abstract boolean a(o paramo1, o paramo2, Map<String, o> paramMap);
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.bx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */