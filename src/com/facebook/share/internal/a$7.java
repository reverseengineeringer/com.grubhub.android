package com.facebook.share.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.facebook.AccessToken;
import com.facebook.AccessTokenTracker;
import com.facebook.internal.s;
import com.facebook.m;
import java.util.concurrent.ConcurrentHashMap;

final class a$7
  extends AccessTokenTracker
{
  protected void a(AccessToken paramAccessToken1, AccessToken paramAccessToken2)
  {
    paramAccessToken1 = m.f();
    if (paramAccessToken2 == null)
    {
      a.a((a.g() + 1) % 1000);
      paramAccessToken1.getSharedPreferences("com.facebook.LikeActionController.CONTROLLER_STORE_KEY", 0).edit().putInt("OBJECT_SUFFIX", a.g()).apply();
      a.h().clear();
      a.i().a();
    }
    a.a(null, "com.facebook.sdk.LikeActionController.DID_RESET");
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.internal.a.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */