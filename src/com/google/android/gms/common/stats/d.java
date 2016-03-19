package com.google.android.gms.common.stats;

import com.google.android.gms.d.aj;

public final class d
{
  public static aj<Integer> a = aj.a("gms:common:stats:connections:level", Integer.valueOf(e.a));
  public static aj<String> b = aj.a("gms:common:stats:connections:ignored_calling_processes", "");
  public static aj<String> c = aj.a("gms:common:stats:connections:ignored_calling_services", "");
  public static aj<String> d = aj.a("gms:common:stats:connections:ignored_target_processes", "");
  public static aj<String> e = aj.a("gms:common:stats:connections:ignored_target_services", "com.google.android.gms.auth.GetToken");
  public static aj<Long> f = aj.a("gms:common:stats:connections:time_out_duration", Long.valueOf(600000L));
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.stats.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */