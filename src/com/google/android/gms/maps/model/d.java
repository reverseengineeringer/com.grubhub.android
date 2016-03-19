package com.google.android.gms.maps.model;

import com.google.android.gms.common.internal.aq;

public final class d
{
  private double a = Double.POSITIVE_INFINITY;
  private double b = Double.NEGATIVE_INFINITY;
  private double c = NaN.0D;
  private double d = NaN.0D;
  
  private boolean a(double paramDouble)
  {
    boolean bool = false;
    if (c <= d) {
      return (c <= paramDouble) && (paramDouble <= d);
    }
    if ((c <= paramDouble) || (paramDouble <= d)) {
      bool = true;
    }
    return bool;
  }
  
  public LatLngBounds a()
  {
    if (!Double.isNaN(c)) {}
    for (boolean bool = true;; bool = false)
    {
      aq.a(bool, "no included points");
      return new LatLngBounds(new LatLng(a, c), new LatLng(b, d));
    }
  }
  
  public d a(LatLng paramLatLng)
  {
    a = Math.min(a, a);
    b = Math.max(b, a);
    double d1 = b;
    if (Double.isNaN(c))
    {
      c = d1;
      d = d1;
    }
    while (a(d1)) {
      return this;
    }
    if (LatLngBounds.a(c, d1) < LatLngBounds.b(d, d1))
    {
      c = d1;
      return this;
    }
    d = d1;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */