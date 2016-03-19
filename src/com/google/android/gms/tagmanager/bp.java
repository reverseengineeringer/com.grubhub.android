package com.google.android.gms.tagmanager;

import com.google.android.gms.d.o;
import java.util.Map;

abstract class bp
  extends bx
{
  public bp(String paramString)
  {
    super(paramString);
  }
  
  protected boolean a(o paramo1, o paramo2, Map<String, o> paramMap)
  {
    paramo1 = dm.b(paramo1);
    paramo2 = dm.b(paramo2);
    if ((paramo1 == dm.d()) || (paramo2 == dm.d())) {
      return false;
    }
    return a(paramo1, paramo2, paramMap);
  }
  
  protected abstract boolean a(dl paramdl1, dl paramdl2, Map<String, o> paramMap);
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.bp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */