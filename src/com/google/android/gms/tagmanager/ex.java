package com.google.android.gms.tagmanager;

import com.google.android.gms.d.a;
import com.google.android.gms.d.b;
import com.google.android.gms.d.o;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

class ex
  extends dk
{
  private static final String a = a.zzbP.toString();
  private static final String b = b.zzhC.toString();
  private static final String c = b.zzdT.toString();
  private final h d;
  
  public ex(h paramh)
  {
    super(a, new String[] { b });
    d = paramh;
  }
  
  private void a(o paramo)
  {
    if ((paramo == null) || (paramo == dm.a())) {}
    do
    {
      return;
      paramo = dm.a(paramo);
    } while (paramo == dm.e());
    d.a(paramo);
  }
  
  private void b(o paramo)
  {
    if ((paramo == null) || (paramo == dm.a())) {}
    for (;;)
    {
      return;
      paramo = dm.e(paramo);
      if ((paramo instanceof List))
      {
        paramo = ((List)paramo).iterator();
        while (paramo.hasNext())
        {
          Object localObject = paramo.next();
          if ((localObject instanceof Map))
          {
            localObject = (Map)localObject;
            d.a((Map)localObject);
          }
        }
      }
    }
  }
  
  public void b(Map<String, o> paramMap)
  {
    b((o)paramMap.get(b));
    a((o)paramMap.get(c));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.ex
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */