package com.google.android.gms.tagmanager;

import android.os.Build.VERSION;
import com.google.android.gms.d.a;
import com.google.android.gms.d.o;
import java.util.Map;

class cu
  extends ab
{
  private static final String a = a.zzbC.toString();
  
  public cu()
  {
    super(a, new String[0]);
  }
  
  public o a(Map<String, o> paramMap)
  {
    return dm.e(Integer.valueOf(Build.VERSION.SDK_INT));
  }
  
  public boolean a()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.cu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */