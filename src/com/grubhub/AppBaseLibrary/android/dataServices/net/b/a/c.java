package com.grubhub.AppBaseLibrary.android.dataServices.net.b.a;

import android.content.Context;
import com.grubhub.AppBaseLibrary.android.dataServices.net.d;
import com.grubhub.AppBaseLibrary.android.dataServices.net.e;

public abstract class c<BuilderType extends c, TaskType, ModelType, ReturnType>
{
  protected int a;
  protected String b;
  protected String c;
  protected String d;
  protected String e;
  protected Context f;
  protected e<ModelType> g;
  protected d h;
  protected b<ReturnType> i;
  
  protected c(Context paramContext)
  {
    f = paramContext;
  }
  
  protected abstract BuilderType a();
  
  public BuilderType a(int paramInt)
  {
    a = paramInt;
    return a();
  }
  
  public BuilderType a(b<ReturnType> paramb)
  {
    i = paramb;
    return a();
  }
  
  public BuilderType a(d paramd)
  {
    h = paramd;
    return a();
  }
  
  public BuilderType a(e<ModelType> parame)
  {
    g = parame;
    return a();
  }
  
  public BuilderType a(String paramString)
  {
    b = paramString;
    return a();
  }
  
  public BuilderType b(String paramString)
  {
    c = paramString;
    return a();
  }
  
  public BuilderType c(String paramString)
  {
    d = paramString;
    return a();
  }
  
  public BuilderType d(String paramString)
  {
    e = paramString;
    return a();
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */