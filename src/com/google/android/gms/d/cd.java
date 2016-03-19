package com.google.android.gms.d;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;

public final class cd
  extends bq<cd>
{
  public String a;
  public boolean b;
  
  public String a()
  {
    return a;
  }
  
  public void a(cd paramcd)
  {
    if (!TextUtils.isEmpty(a)) {
      paramcd.a(a);
    }
    if (b) {
      paramcd.a(b);
    }
  }
  
  public void a(String paramString)
  {
    a = paramString;
  }
  
  public void a(boolean paramBoolean)
  {
    b = paramBoolean;
  }
  
  public boolean b()
  {
    return b;
  }
  
  public String toString()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("description", a);
    localHashMap.put("fatal", Boolean.valueOf(b));
    return a(localHashMap);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.d.cd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */