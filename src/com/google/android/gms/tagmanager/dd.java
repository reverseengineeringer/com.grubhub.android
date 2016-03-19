package com.google.android.gms.tagmanager;

import com.google.android.gms.d.o;
import java.util.Map;

abstract class dd
  extends bx
{
  public dd(String paramString)
  {
    super(paramString);
  }
  
  protected boolean a(o paramo1, o paramo2, Map<String, o> paramMap)
  {
    paramo1 = dm.a(paramo1);
    paramo2 = dm.a(paramo2);
    if ((paramo1 == dm.e()) || (paramo2 == dm.e())) {
      return false;
    }
    return a(paramo1, paramo2, paramMap);
  }
  
  protected abstract boolean a(String paramString1, String paramString2, Map<String, o> paramMap);
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.dd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */