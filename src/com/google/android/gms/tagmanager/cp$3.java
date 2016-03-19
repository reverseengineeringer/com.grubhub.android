package com.google.android.gms.tagmanager;

import com.google.android.gms.d.cu;
import java.util.List;
import java.util.Map;
import java.util.Set;

class cp$3
  implements cq
{
  cp$3(cp paramcp, Map paramMap1, Map paramMap2, Map paramMap3, Map paramMap4) {}
  
  public void a(cu paramcu, Set<com.google.android.gms.d.cq> paramSet1, Set<com.google.android.gms.d.cq> paramSet2, ci paramci)
  {
    List localList1 = (List)a.get(paramcu);
    List localList2 = (List)b.get(paramcu);
    if (localList1 != null)
    {
      paramSet1.addAll(localList1);
      paramci.c().a(localList1, localList2);
    }
    paramSet1 = (List)c.get(paramcu);
    paramcu = (List)d.get(paramcu);
    if (paramSet1 != null)
    {
      paramSet2.addAll(paramSet1);
      paramci.d().a(paramSet1, paramcu);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.cp.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */