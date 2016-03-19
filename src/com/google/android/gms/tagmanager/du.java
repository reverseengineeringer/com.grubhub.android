package com.google.android.gms.tagmanager;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import com.google.android.gms.d.a;
import com.google.android.gms.d.o;
import java.util.Map;

class du
  extends ab
{
  private static final String a = a.zzbg.toString();
  private final Context b;
  
  public du(Context paramContext)
  {
    super(a, new String[0]);
    b = paramContext;
  }
  
  public o a(Map<String, o> paramMap)
  {
    try
    {
      paramMap = dm.e(Integer.valueOf(b.getPackageManager().getPackageInfo(b.getPackageName(), 0).versionCode));
      return paramMap;
    }
    catch (PackageManager.NameNotFoundException paramMap)
    {
      ba.a("Package name " + b.getPackageName() + " not found. " + paramMap.getMessage());
    }
    return dm.f();
  }
  
  public boolean a()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.du
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */