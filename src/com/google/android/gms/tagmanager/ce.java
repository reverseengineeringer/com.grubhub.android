package com.google.android.gms.tagmanager;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.google.android.gms.d.a;
import com.google.android.gms.d.o;
import java.util.Map;

class ce
  extends ab
{
  private static final String a = a.zzbA.toString();
  private final Context b;
  
  public ce(Context paramContext)
  {
    super(a, new String[0]);
    b = paramContext;
  }
  
  public o a(Map<String, o> paramMap)
  {
    paramMap = new DisplayMetrics();
    ((WindowManager)b.getSystemService("window")).getDefaultDisplay().getMetrics(paramMap);
    int i = widthPixels;
    int j = heightPixels;
    return dm.e(i + "x" + j);
  }
  
  public boolean a()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.ce
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */