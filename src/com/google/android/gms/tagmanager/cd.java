package com.google.android.gms.tagmanager;

import com.google.android.gms.d.a;
import com.google.android.gms.d.b;
import com.google.android.gms.d.o;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;

class cd
  extends dd
{
  private static final String a = a.zzcb.toString();
  private static final String b = b.zzfo.toString();
  
  public cd()
  {
    super(a);
  }
  
  protected boolean a(String paramString1, String paramString2, Map<String, o> paramMap)
  {
    if (dm.d((o)paramMap.get(b)).booleanValue()) {}
    for (int i = 66;; i = 64) {
      try
      {
        boolean bool = Pattern.compile(paramString2, i).matcher(paramString1).find();
        return bool;
      }
      catch (PatternSyntaxException paramString1)
      {
        return false;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.cd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */