package com.google.android.gms.tagmanager;

import com.google.android.gms.d.a;
import com.google.android.gms.d.o;
import java.util.Locale;
import java.util.Map;

public class au
  extends ab
{
  private static final String a = a.zzbv.toString();
  
  public au()
  {
    super(a, new String[0]);
  }
  
  public o a(Map<String, o> paramMap)
  {
    paramMap = Locale.getDefault();
    if (paramMap == null) {
      return dm.f();
    }
    paramMap = paramMap.getLanguage();
    if (paramMap == null) {
      return dm.f();
    }
    return dm.e(paramMap.toLowerCase());
  }
  
  public boolean a()
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.au
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */