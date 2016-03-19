package com.google.android.gms.tagmanager;

import com.google.android.gms.d.a;
import com.google.android.gms.d.o;
import java.util.Map;

class en
  extends ab
{
  private static final String a = a.zzbl.toString();
  private final String b;
  
  public en(String paramString)
  {
    super(a, new String[0]);
    b = paramString;
  }
  
  public o a(Map<String, o> paramMap)
  {
    if (b == null) {
      return dm.f();
    }
    return dm.e(b);
  }
  
  public boolean a()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.en
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */