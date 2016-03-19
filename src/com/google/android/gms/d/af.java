package com.google.android.gms.d;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.RemoteException;
import com.google.android.gms.appdatasearch.UsageInfo;
import com.google.android.gms.appdatasearch.n;
import com.google.android.gms.b.a;
import com.google.android.gms.b.d;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.s;
import java.util.List;

public final class af
  implements n, d
{
  public static Intent a(String paramString, Uri paramUri)
  {
    b(paramString, paramUri);
    paramString = paramUri.getPathSegments();
    String str = (String)paramString.get(0);
    Uri.Builder localBuilder = new Uri.Builder();
    localBuilder.scheme(str);
    if (paramString.size() > 1)
    {
      localBuilder.authority((String)paramString.get(1));
      int i = 2;
      while (i < paramString.size())
      {
        localBuilder.appendPath((String)paramString.get(i));
        i += 1;
      }
    }
    localBuilder.encodedQuery(paramUri.getEncodedQuery());
    localBuilder.encodedFragment(paramUri.getEncodedFragment());
    return new Intent("android.intent.action.VIEW", localBuilder.build());
  }
  
  private s<Status> a(GoogleApiClient paramGoogleApiClient, a parama, int paramInt)
  {
    String str = paramGoogleApiClient.getContext().getPackageName();
    return a(paramGoogleApiClient, new UsageInfo[] { ae.a(parama, System.currentTimeMillis(), str, paramInt) });
  }
  
  private static void b(String paramString, Uri paramUri)
  {
    if (!"android-app".equals(paramUri.getScheme())) {
      throw new IllegalArgumentException("AppIndex: The URI scheme must be 'android-app' and follow the format (android-app://<package_name>/<scheme>/[host_path]). Provided URI: " + paramUri);
    }
    String str = paramUri.getHost();
    if ((paramString != null) && (!paramString.equals(str))) {
      throw new IllegalArgumentException("AppIndex: The URI host must match the package name and follow the format (android-app://<package_name>/<scheme>/[host_path]). Provided URI: " + paramUri);
    }
    paramString = paramUri.getPathSegments();
    if ((paramString.isEmpty()) || (((String)paramString.get(0)).isEmpty())) {
      throw new IllegalArgumentException("AppIndex: The app URI scheme must exist and follow the format android-app://<package_name>/<scheme>/[host_path]). Provided URI: " + paramUri);
    }
  }
  
  public s<Status> a(GoogleApiClient paramGoogleApiClient, a parama)
  {
    return a(paramGoogleApiClient, parama, 1);
  }
  
  public s<Status> a(GoogleApiClient paramGoogleApiClient, final UsageInfo... paramVarArgs)
  {
    paramGoogleApiClient.zza(new ah(paramGoogleApiClient)
    {
      protected void a(w paramAnonymousw)
        throws RemoteException
      {
        paramAnonymousw.a(new ai(this), b, paramVarArgs);
      }
    });
  }
  
  public s<Status> b(GoogleApiClient paramGoogleApiClient, a parama)
  {
    return a(paramGoogleApiClient, parama, 2);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.d.af
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */