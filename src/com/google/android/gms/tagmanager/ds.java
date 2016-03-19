package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.d.a;
import com.google.android.gms.d.o;
import java.util.Map;

class ds
  extends ab
{
  private static final String a = a.zzbe.toString();
  private final Context b;
  
  public ds(Context paramContext)
  {
    super(a, new String[0]);
    b = paramContext;
  }
  
  public o a(Map<String, o> paramMap)
  {
    return dm.e(b.getPackageName());
  }
  
  public boolean a()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.ds
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */