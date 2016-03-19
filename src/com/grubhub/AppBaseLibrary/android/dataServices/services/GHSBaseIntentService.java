package com.grubhub.AppBaseLibrary.android.dataServices.services;

import android.app.IntentService;
import android.content.Context;
import android.content.Intent;
import android.support.v4.content.o;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.dataServices.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.net.a;

public abstract class GHSBaseIntentService
  extends IntentService
{
  private static Intent a;
  private Intent b;
  private a c;
  private b d;
  private o e;
  
  protected GHSBaseIntentService(String paramString)
  {
    super(paramString);
  }
  
  protected static Intent a(Context paramContext, Class<?> paramClass)
  {
    if (a != null) {
      return a;
    }
    return new Intent(paramContext, paramClass);
  }
  
  protected Intent a(String paramString)
  {
    if (b != null) {
      return b;
    }
    return new Intent(paramString);
  }
  
  protected a a()
  {
    if (c == null) {
      c = GHSApplication.a(this);
    }
    return c;
  }
  
  protected b b()
  {
    if (d == null) {
      d = GHSApplication.a().b();
    }
    return d;
  }
  
  public o c()
  {
    if (e != null) {
      return e;
    }
    return o.a(this);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.services.GHSBaseIntentService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */