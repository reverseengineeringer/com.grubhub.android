package com.google.android.gms.tagmanager;

import android.os.Build;
import com.google.android.gms.d.a;
import com.google.android.gms.d.o;
import java.util.Map;

class s
  extends ab
{
  private static final String a = a.zzbn.toString();
  
  public s()
  {
    super(a, new String[0]);
  }
  
  public o a(Map<String, o> paramMap)
  {
    String str2 = Build.MANUFACTURER;
    String str1 = Build.MODEL;
    paramMap = str1;
    if (!str1.startsWith(str2))
    {
      paramMap = str1;
      if (!str2.equals("unknown")) {
        paramMap = str2 + " " + str1;
      }
    }
    return dm.e(paramMap);
  }
  
  public boolean a()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */