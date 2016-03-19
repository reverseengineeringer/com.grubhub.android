package com.google.android.gms.analytics.internal;

public enum ae
{
  private ae() {}
  
  public static ae zzbc(String paramString)
  {
    if ("BATCH_BY_SESSION".equalsIgnoreCase(paramString)) {
      return zzKA;
    }
    if ("BATCH_BY_TIME".equalsIgnoreCase(paramString)) {
      return zzKB;
    }
    if ("BATCH_BY_BRUTE_FORCE".equalsIgnoreCase(paramString)) {
      return zzKC;
    }
    if ("BATCH_BY_COUNT".equalsIgnoreCase(paramString)) {
      return zzKD;
    }
    if ("BATCH_BY_SIZE".equalsIgnoreCase(paramString)) {
      return zzKE;
    }
    return zzKz;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.internal.ae
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */