package com.google.android.gms.tagmanager;

import com.google.android.gms.d.o;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

abstract class ab
{
  private final Set<String> a;
  private final String b;
  
  public ab(String paramString, String... paramVarArgs)
  {
    b = paramString;
    a = new HashSet(paramVarArgs.length);
    int j = paramVarArgs.length;
    int i = 0;
    while (i < j)
    {
      paramString = paramVarArgs[i];
      a.add(paramString);
      i += 1;
    }
  }
  
  public abstract o a(Map<String, o> paramMap);
  
  public abstract boolean a();
  
  boolean a(Set<String> paramSet)
  {
    return paramSet.containsAll(a);
  }
  
  public String b()
  {
    return b;
  }
  
  public Set<String> c()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.ab
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */