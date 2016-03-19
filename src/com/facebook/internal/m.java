package com.facebook.internal;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import com.facebook.FacebookActivity;
import com.facebook.h;
import java.util.UUID;

public class m
{
  public static void a(a parama)
  {
    a(parama, new h("Unable to show the provided content via the web or the installed version of the Facebook app. Some dialogs are only supported starting API 14."));
  }
  
  public static void a(a parama, Activity paramActivity)
  {
    paramActivity.startActivityForResult(parama.b(), parama.d());
    parama.e();
  }
  
  public static void a(a parama, Bundle paramBundle, l paraml)
  {
    ap.b(com.facebook.m.f());
    ap.a(com.facebook.m.f());
    String str = paraml.name();
    Object localObject = d(paraml);
    if (localObject == null) {
      throw new h("Unable to fetch the Url for the DialogFeature : '" + str + "'");
    }
    int i = ac.a();
    paramBundle = ak.a(parama.c().toString(), i, paramBundle);
    if (paramBundle == null) {
      throw new h("Unable to fetch the app's key-hash");
    }
    if (((Uri)localObject).isRelative()) {}
    for (paramBundle = al.a(ak.a(), ((Uri)localObject).toString(), paramBundle);; paramBundle = al.a(((Uri)localObject).getAuthority(), ((Uri)localObject).getPath(), paramBundle))
    {
      localObject = new Bundle();
      ((Bundle)localObject).putString("url", paramBundle.toString());
      ((Bundle)localObject).putBoolean("is_fallback", true);
      paramBundle = new Intent();
      ac.a(paramBundle, parama.c().toString(), paraml.getAction(), ac.a(), (Bundle)localObject);
      paramBundle.setClass(com.facebook.m.f(), FacebookActivity.class);
      paramBundle.setAction("FacebookDialogFragment");
      parama.a(paramBundle);
      return;
    }
  }
  
  public static void a(a parama, Fragment paramFragment)
  {
    paramFragment.startActivityForResult(parama.b(), parama.d());
    parama.e();
  }
  
  public static void a(a parama, h paramh)
  {
    b(parama, paramh);
  }
  
  public static void a(a parama, n paramn, l paraml)
  {
    Context localContext = com.facebook.m.f();
    String str = paraml.getAction();
    int i = c(paraml);
    if (i == -1) {
      throw new h("Cannot present this dialog. This likely means that the Facebook app is not installed.");
    }
    if (ac.a(i)) {}
    for (paramn = paramn.a();; paramn = paramn.b())
    {
      paraml = paramn;
      if (paramn == null) {
        paraml = new Bundle();
      }
      paramn = ac.a(localContext, parama.c().toString(), str, i, paraml);
      if (paramn != null) {
        break;
      }
      throw new h("Unable to create Intent; this likely means theFacebook app is not installed.");
    }
    parama.a(paramn);
  }
  
  public static boolean a(l paraml)
  {
    return c(paraml) != -1;
  }
  
  private static int[] a(String paramString1, String paramString2, l paraml)
  {
    paramString1 = al.a(paramString1, paramString2, paraml.name());
    if (paramString1 != null) {
      return paramString1.d();
    }
    return new int[] { paraml.getMinVersion() };
  }
  
  public static void b(a parama, h paramh)
  {
    if (paramh == null) {
      return;
    }
    ap.b(com.facebook.m.f());
    Intent localIntent = new Intent();
    localIntent.setClass(com.facebook.m.f(), FacebookActivity.class);
    localIntent.setAction(FacebookActivity.a);
    ac.a(localIntent, parama.c().toString(), null, ac.a(), ac.a(paramh));
    parama.a(localIntent);
  }
  
  public static boolean b(l paraml)
  {
    return d(paraml) != null;
  }
  
  public static int c(l paraml)
  {
    String str1 = com.facebook.m.i();
    String str2 = paraml.getAction();
    return ac.a(str2, a(str1, str2, paraml));
  }
  
  private static Uri d(l paraml)
  {
    Object localObject = paraml.name();
    paraml = paraml.getAction();
    localObject = al.a(com.facebook.m.i(), paraml, (String)localObject);
    paraml = null;
    if (localObject != null) {
      paraml = ((am)localObject).c();
    }
    return paraml;
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */