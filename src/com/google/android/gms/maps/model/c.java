package com.google.android.gms.maps.model;

public final class c
{
  private LatLng a;
  private float b;
  private float c;
  private float d;
  
  public CameraPosition a()
  {
    return new CameraPosition(a, b, c, d);
  }
  
  public c a(float paramFloat)
  {
    b = paramFloat;
    return this;
  }
  
  public c a(LatLng paramLatLng)
  {
    a = paramLatLng;
    return this;
  }
  
  public c b(float paramFloat)
  {
    c = paramFloat;
    return this;
  }
  
  public c c(float paramFloat)
  {
    d = paramFloat;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */