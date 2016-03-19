package com.google.android.gms.tagmanager;

import com.google.android.gms.analytics.CampaignTrackingReceiver;
import com.google.android.gms.analytics.b;

public final class InstallReferrerReceiver
  extends CampaignTrackingReceiver
{
  protected Class<? extends b> a()
  {
    return m.class;
  }
  
  protected void a(String paramString)
  {
    ao.a(paramString);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.InstallReferrerReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */