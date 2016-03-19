package com.google.android.gms.d;

import android.os.Binder;

public abstract class aj<T>
{
  private static final Object c = new Object();
  private static ak d = null;
  private static int e = 0;
  private static String f = "com.google.android.providers.gsf.permission.READ_GSERVICES";
  protected final String a;
  protected final T b;
  private T g = null;
  
  protected aj(String paramString, T paramT)
  {
    a = paramString;
    b = paramT;
  }
  
  public static int a()
  {
    return e;
  }
  
  public static aj<Float> a(String paramString, Float paramFloat)
  {
    new aj(paramString, paramFloat)
    {
      protected Float b(String paramAnonymousString)
      {
        return aj.e().a(a, (Float)b);
      }
    };
  }
  
  public static aj<Integer> a(String paramString, Integer paramInteger)
  {
    new aj(paramString, paramInteger)
    {
      protected Integer b(String paramAnonymousString)
      {
        return aj.e().a(a, (Integer)b);
      }
    };
  }
  
  public static aj<Long> a(String paramString, Long paramLong)
  {
    new aj(paramString, paramLong)
    {
      protected Long b(String paramAnonymousString)
      {
        return aj.e().a(a, (Long)b);
      }
    };
  }
  
  public static aj<String> a(String paramString1, String paramString2)
  {
    new aj(paramString1, paramString2)
    {
      protected String b(String paramAnonymousString)
      {
        return aj.e().a(a, (String)b);
      }
    };
  }
  
  public static aj<Boolean> a(String paramString, boolean paramBoolean)
  {
    new aj(paramString, Boolean.valueOf(paramBoolean))
    {
      protected Boolean b(String paramAnonymousString)
      {
        return aj.e().a(a, (Boolean)b);
      }
    };
  }
  
  public static boolean b()
  {
    return d != null;
  }
  
  protected abstract T a(String paramString);
  
  public final T c()
  {
    if (g != null) {
      return (T)g;
    }
    return (T)a(a);
  }
  
  public final T d()
  {
    long l = Binder.clearCallingIdentity();
    try
    {
      Object localObject1 = c();
      return (T)localObject1;
    }
    finally
    {
      Binder.restoreCallingIdentity(l);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.d.aj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */