package com.google.android.gms.tagmanager;

import com.google.android.gms.d.a;
import com.google.android.gms.d.b;
import com.google.android.gms.d.o;
import java.util.Map;

class bc
  extends ab
{
  private static final String a = a.zzbQ.toString();
  private static final String b = b.zzdw.toString();
  
  public bc()
  {
    super(a, new String[] { b });
  }
  
  public o a(Map<String, o> paramMap)
  {
    return dm.e(dm.a((o)paramMap.get(b)).toLowerCase());
  }
  
  public boolean a()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.bc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */