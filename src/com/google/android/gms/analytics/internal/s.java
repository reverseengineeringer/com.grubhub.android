package com.google.android.gms.analytics.internal;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.analytics.e;
import com.google.android.gms.common.internal.aq;
import com.google.android.gms.d.bc;
import com.google.android.gms.d.bs;

public class s
{
  private final v zzJy;
  
  protected s(v paramv)
  {
    aq.a(paramv);
    zzJy = paramv;
  }
  
  private void zza(int paramInt, String paramString, Object paramObject1, Object paramObject2, Object paramObject3)
  {
    Object localObject = null;
    if (zzJy != null) {
      localObject = zzJy.g();
    }
    if (localObject != null) {
      ((i)localObject).a(paramInt, paramString, paramObject1, paramObject2, paramObject3);
    }
    do
    {
      return;
      localObject = (String)ar.c.a();
    } while (!Log.isLoggable((String)localObject, paramInt));
    Log.println(paramInt, (String)localObject, zzc(paramString, paramObject1, paramObject2, paramObject3));
  }
  
  protected static String zzc(String paramString, Object paramObject1, Object paramObject2, Object paramObject3)
  {
    String str1 = paramString;
    if (paramString == null) {
      str1 = "";
    }
    String str2 = zzi(paramObject1);
    paramObject2 = zzi(paramObject2);
    paramObject3 = zzi(paramObject3);
    StringBuilder localStringBuilder = new StringBuilder();
    paramString = "";
    if (!TextUtils.isEmpty(str1))
    {
      localStringBuilder.append(str1);
      paramString = ": ";
    }
    paramObject1 = paramString;
    if (!TextUtils.isEmpty(str2))
    {
      localStringBuilder.append(paramString);
      localStringBuilder.append(str2);
      paramObject1 = ", ";
    }
    paramString = (String)paramObject1;
    if (!TextUtils.isEmpty((CharSequence)paramObject2))
    {
      localStringBuilder.append((String)paramObject1);
      localStringBuilder.append((String)paramObject2);
      paramString = ", ";
    }
    if (!TextUtils.isEmpty((CharSequence)paramObject3))
    {
      localStringBuilder.append(paramString);
      localStringBuilder.append((String)paramObject3);
    }
    return localStringBuilder.toString();
  }
  
  private static String zzi(Object paramObject)
  {
    if (paramObject == null) {
      return "";
    }
    if ((paramObject instanceof String)) {
      return (String)paramObject;
    }
    if ((paramObject instanceof Boolean))
    {
      if (paramObject == Boolean.TRUE) {}
      for (paramObject = "true";; paramObject = "false") {
        return (String)paramObject;
      }
    }
    if ((paramObject instanceof Throwable)) {
      return ((Throwable)paramObject).toString();
    }
    return paramObject.toString();
  }
  
  protected Context getContext()
  {
    return zzJy.b();
  }
  
  public void zza(String paramString, Object paramObject)
  {
    zza(2, paramString, paramObject, null, null);
  }
  
  public void zza(String paramString, Object paramObject1, Object paramObject2)
  {
    zza(2, paramString, paramObject1, paramObject2, null);
  }
  
  public void zza(String paramString, Object paramObject1, Object paramObject2, Object paramObject3)
  {
    zza(3, paramString, paramObject1, paramObject2, paramObject3);
  }
  
  public void zzaT(String paramString)
  {
    zza(2, paramString, null, null, null);
  }
  
  public void zzaU(String paramString)
  {
    zza(3, paramString, null, null, null);
  }
  
  public void zzaV(String paramString)
  {
    zza(4, paramString, null, null, null);
  }
  
  public void zzaW(String paramString)
  {
    zza(5, paramString, null, null, null);
  }
  
  public void zzaX(String paramString)
  {
    zza(6, paramString, null, null, null);
  }
  
  public void zzb(String paramString, Object paramObject)
  {
    zza(3, paramString, paramObject, null, null);
  }
  
  public void zzb(String paramString, Object paramObject1, Object paramObject2)
  {
    zza(3, paramString, paramObject1, paramObject2, null);
  }
  
  public void zzb(String paramString, Object paramObject1, Object paramObject2, Object paramObject3)
  {
    zza(5, paramString, paramObject1, paramObject2, paramObject3);
  }
  
  public void zzc(String paramString, Object paramObject)
  {
    zza(4, paramString, paramObject, null, null);
  }
  
  public void zzc(String paramString, Object paramObject1, Object paramObject2)
  {
    zza(5, paramString, paramObject1, paramObject2, null);
  }
  
  public void zzd(String paramString, Object paramObject)
  {
    zza(5, paramString, paramObject, null, null);
  }
  
  public void zzd(String paramString, Object paramObject1, Object paramObject2)
  {
    zza(6, paramString, paramObject1, paramObject2, null);
  }
  
  public void zze(String paramString, Object paramObject)
  {
    zza(6, paramString, paramObject, null, null);
  }
  
  public v zzhM()
  {
    return zzJy;
  }
  
  protected void zzhN()
  {
    if (zzhR().a()) {
      throw new IllegalStateException("Call only supported on the client side");
    }
  }
  
  protected void zzhO()
  {
    zzJy.s();
  }
  
  protected bc zzhP()
  {
    return zzJy.d();
  }
  
  protected i zzhQ()
  {
    return zzJy.f();
  }
  
  protected ak zzhR()
  {
    return zzJy.e();
  }
  
  protected bs zzhS()
  {
    return zzJy.h();
  }
  
  protected ao zzhT()
  {
    return zzJy.j();
  }
  
  protected l zzhU()
  {
    return zzJy.m();
  }
  
  protected af zzhV()
  {
    return zzJy.p();
  }
  
  protected a zzhW()
  {
    return zzJy.o();
  }
  
  protected ac zzhX()
  {
    return zzJy.q();
  }
  
  protected an zzhY()
  {
    return zzJy.r();
  }
  
  public boolean zzhZ()
  {
    return Log.isLoggable((String)ar.c.a(), 2);
  }
  
  public e zzhg()
  {
    return zzJy.k();
  }
  
  protected r zzhl()
  {
    return zzJy.i();
  }
  
  protected q zzhm()
  {
    return zzJy.l();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.internal.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */