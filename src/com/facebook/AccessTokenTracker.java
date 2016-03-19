package com.facebook;

import android.content.BroadcastReceiver;
import android.content.IntentFilter;
import android.support.v4.content.o;
import com.facebook.internal.ap;

public abstract class AccessTokenTracker
{
  private final BroadcastReceiver a;
  private final o b;
  private boolean c = false;
  
  public AccessTokenTracker()
  {
    ap.b();
    a = new AccessTokenTracker.CurrentAccessTokenBroadcastReceiver(this, null);
    b = o.a(m.f());
    a();
  }
  
  private void b()
  {
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("com.facebook.sdk.ACTION_CURRENT_ACCESS_TOKEN_CHANGED");
    b.a(a, localIntentFilter);
  }
  
  public void a()
  {
    if (c) {
      return;
    }
    b();
    c = true;
  }
  
  protected abstract void a(AccessToken paramAccessToken1, AccessToken paramAccessToken2);
}

/* Location:
 * Qualified Name:     com.facebook.AccessTokenTracker
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */