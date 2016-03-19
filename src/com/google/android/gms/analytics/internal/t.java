package com.google.android.gms.analytics.internal;

public abstract class t
  extends s
{
  private boolean zzJA;
  private boolean zzJz;
  
  protected t(v paramv)
  {
    super(paramv);
  }
  
  public boolean isInitialized()
  {
    return (zzJz) && (!zzJA);
  }
  
  public void zza()
  {
    zzhn();
    zzJz = true;
  }
  
  protected abstract void zzhn();
  
  protected void zzia()
  {
    if (!isInitialized()) {
      throw new IllegalStateException("Not initialized");
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.internal.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */