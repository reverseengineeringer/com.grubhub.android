package com.google.android.gms.tagmanager;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import com.google.android.gms.d.a;
import com.google.android.gms.d.o;
import java.util.Map;

class dt
  extends ab
{
  private static final String a = a.zzbf.toString();
  private final Context b;
  
  public dt(Context paramContext)
  {
    super(a, new String[0]);
    b = paramContext;
  }
  
  public o a(Map<String, o> paramMap)
  {
    try
    {
      paramMap = b.getPackageManager();
      paramMap = dm.e(paramMap.getApplicationLabel(paramMap.getApplicationInfo(b.getPackageName(), 0)).toString());
      return paramMap;
    }
    catch (PackageManager.NameNotFoundException paramMap)
    {
      ba.a("App name is not found.", paramMap);
    }
    return dm.f();
  }
  
  public boolean a()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.dt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */