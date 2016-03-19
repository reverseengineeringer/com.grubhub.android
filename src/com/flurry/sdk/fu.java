package com.flurry.sdk;

import android.content.Context;
import com.flurry.android.FlurryEventRecordStatus;
import java.util.Map;

public class fu
  implements ie
{
  private gm a;
  private gv b;
  private gq c;
  
  public static fu a()
  {
    try
    {
      fu localfu = (fu)hn.a().a(fu.class);
      return localfu;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  private gy a(iz paramiz)
  {
    if (paramiz == null) {
      return null;
    }
    return (gy)paramiz.c(gy.class);
  }
  
  private gy h()
  {
    return a(jb.a().e());
  }
  
  public FlurryEventRecordStatus a(String paramString)
  {
    gy localgy = h();
    FlurryEventRecordStatus localFlurryEventRecordStatus = FlurryEventRecordStatus.kFlurryEventFailed;
    if (localgy != null) {
      localFlurryEventRecordStatus = localgy.a(paramString, null, false);
    }
    return localFlurryEventRecordStatus;
  }
  
  public FlurryEventRecordStatus a(String paramString, Map<String, String> paramMap)
  {
    gy localgy = h();
    FlurryEventRecordStatus localFlurryEventRecordStatus = FlurryEventRecordStatus.kFlurryEventFailed;
    if (localgy != null) {
      localFlurryEventRecordStatus = localgy.a(paramString, paramMap, false);
    }
    return localFlurryEventRecordStatus;
  }
  
  public FlurryEventRecordStatus a(String paramString, Map<String, String> paramMap, boolean paramBoolean)
  {
    gy localgy = h();
    FlurryEventRecordStatus localFlurryEventRecordStatus = FlurryEventRecordStatus.kFlurryEventFailed;
    if (localgy != null) {
      localFlurryEventRecordStatus = localgy.a(paramString, paramMap, paramBoolean);
    }
    return localFlurryEventRecordStatus;
  }
  
  public FlurryEventRecordStatus a(String paramString, boolean paramBoolean)
  {
    gy localgy = h();
    FlurryEventRecordStatus localFlurryEventRecordStatus = FlurryEventRecordStatus.kFlurryEventFailed;
    if (localgy != null) {
      localFlurryEventRecordStatus = localgy.a(paramString, null, paramBoolean);
    }
    return localFlurryEventRecordStatus;
  }
  
  public void a(Context paramContext)
  {
    iz.a(gy.class);
    a = new gm();
    b = new gv();
    c = new gq();
  }
  
  @Deprecated
  public void a(String paramString1, String paramString2, String paramString3)
  {
    Object localObject1 = Thread.currentThread().getStackTrace();
    Object localObject2;
    if ((localObject1 != null) && (localObject1.length > 2))
    {
      localObject2 = new StackTraceElement[localObject1.length - 2];
      System.arraycopy(localObject1, 2, localObject2, 0, localObject2.length);
      localObject1 = localObject2;
    }
    for (;;)
    {
      localObject2 = new Throwable(paramString2);
      ((Throwable)localObject2).setStackTrace((StackTraceElement[])localObject1);
      localObject1 = h();
      if (localObject1 != null) {
        ((gy)localObject1).a(paramString1, paramString2, paramString3, (Throwable)localObject2);
      }
      return;
    }
  }
  
  public void a(String paramString1, String paramString2, Throwable paramThrowable)
  {
    gy localgy = h();
    if (localgy != null) {
      localgy.a(paramString1, paramString2, paramThrowable.getClass().getName(), paramThrowable);
    }
  }
  
  public void b()
  {
    if (c != null)
    {
      c.c();
      c = null;
    }
    if (b != null)
    {
      b.a();
      b = null;
    }
    if (a != null)
    {
      a.a();
      a = null;
    }
    iz.b(gy.class);
  }
  
  public void b(String paramString)
  {
    gy localgy = h();
    if (localgy != null) {
      localgy.a(paramString, null);
    }
  }
  
  public void b(String paramString, Map<String, String> paramMap)
  {
    gy localgy = h();
    if (localgy != null) {
      localgy.a(paramString, paramMap);
    }
  }
  
  public gm c()
  {
    return a;
  }
  
  public void c(String paramString)
  {
    gy localgy = h();
    if (localgy != null) {
      localgy.a(paramString, null, false);
    }
  }
  
  public void c(String paramString, Map<String, String> paramMap)
  {
    gy localgy = h();
    if (localgy != null) {
      localgy.a(paramString, paramMap, false);
    }
  }
  
  public gv d()
  {
    return b;
  }
  
  public gq e()
  {
    return c;
  }
  
  public void f()
  {
    gy localgy = h();
    if (localgy != null) {
      localgy.a();
    }
  }
  
  public void g()
  {
    gy localgy = h();
    if (localgy != null) {
      localgy.b();
    }
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.fu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */