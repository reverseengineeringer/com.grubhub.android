package com.grubhub.AppBaseLibrary.android.dataServices.net.b.a;

import android.content.Context;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.reflect.TypeToken;
import com.grubhub.AppBaseLibrary.android.dataServices.net.d;
import com.grubhub.AppBaseLibrary.android.dataServices.net.e;
import java.util.HashMap;
import java.util.Map;

public abstract class a<TaskType extends a, ModelType, ReturnType>
{
  protected int a;
  protected String b;
  protected String c;
  protected String d;
  protected String e;
  protected Context f;
  protected com.grubhub.AppBaseLibrary.android.dataServices.net.a.a g;
  protected com.grubhub.AppBaseLibrary.android.dataServices.net.b.f h;
  protected e<ModelType> i;
  protected d j;
  protected b<ReturnType> k;
  
  protected a(c<? extends c, TaskType, ModelType, ReturnType> paramc)
  {
    f = f;
    a = a;
    b = b;
    c = c;
    d = d;
    e = e;
    i = g;
    j = h;
    k = i;
    if (com.grubhub.AppBaseLibrary.android.utils.f.a(e)) {}
    for (paramc = new com.grubhub.AppBaseLibrary.android.dataServices.net.a.a(d);; paramc = new com.grubhub.AppBaseLibrary.android.dataServices.net.a.a(d, e))
    {
      g = paramc;
      return;
    }
  }
  
  public ReturnType a()
  {
    if (!d()) {
      f();
    }
    do
    {
      return null;
      b();
      c();
    } while (k == null);
    return (ReturnType)k.b(h);
  }
  
  protected void a(String paramString, Map<String, String> paramMap)
  {
    Object localObject = paramMap;
    if (paramMap == null) {
      localObject = new HashMap();
    }
    ((Map)localObject).put("taskName", paramString);
    com.grubhub.AppBaseLibrary.android.utils.e.a.a.a("REQUEST_MISSING_INPUTS", (Map)localObject);
  }
  
  protected abstract void b();
  
  protected abstract void c();
  
  protected boolean d()
  {
    return (com.grubhub.AppBaseLibrary.android.utils.f.b(d)) && (com.grubhub.AppBaseLibrary.android.utils.f.b(c));
  }
  
  protected Map<String, String> e()
  {
    new HashMap() {};
  }
  
  protected void f()
  {
    if (j != null) {
      j.a(new com.grubhub.AppBaseLibrary.android.b.b(com.grubhub.AppBaseLibrary.android.b.a.ERROR_CODE_UNKNOWN));
    }
    g();
  }
  
  protected void g()
  {
    String str = getClass().getSimpleName();
    Map localMap = e();
    a(str, localMap);
    Gson localGson = new GsonBuilder().serializeNulls().create();
    com.grubhub.AppBaseLibrary.android.utils.e.a.b(str, "Missing required inputs");
    com.grubhub.AppBaseLibrary.android.utils.e.a.b(str, localGson.toJson(localMap, new TypeToken() {}.getType()));
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */