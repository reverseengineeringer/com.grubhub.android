package com.google.android.gms.tagmanager;

import android.content.Context;
import android.provider.Settings.Secure;
import com.google.android.gms.d.a;
import com.google.android.gms.d.o;
import java.util.Map;

class be
  extends ab
{
  private static final String a = a.zzbN.toString();
  private final Context b;
  
  public be(Context paramContext)
  {
    super(a, new String[0]);
    b = paramContext;
  }
  
  public o a(Map<String, o> paramMap)
  {
    paramMap = a(b);
    if (paramMap == null) {
      return dm.f();
    }
    return dm.e(paramMap);
  }
  
  protected String a(Context paramContext)
  {
    return Settings.Secure.getString(paramContext.getContentResolver(), "android_id");
  }
  
  public boolean a()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.be
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */