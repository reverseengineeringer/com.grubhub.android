package com.google.android.gms.maps;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.util.AttributeSet;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.d;
import com.google.android.gms.maps.internal.ag;
import com.google.android.gms.maps.model.CameraPosition;

public final class GoogleMapOptions
  implements SafeParcelable
{
  public static final l CREATOR = new l();
  private final int a;
  private Boolean b;
  private Boolean c;
  private int d = -1;
  private CameraPosition e;
  private Boolean f;
  private Boolean g;
  private Boolean h;
  private Boolean i;
  private Boolean j;
  private Boolean k;
  private Boolean l;
  private Boolean m;
  
  public GoogleMapOptions()
  {
    a = 1;
  }
  
  GoogleMapOptions(int paramInt1, byte paramByte1, byte paramByte2, int paramInt2, CameraPosition paramCameraPosition, byte paramByte3, byte paramByte4, byte paramByte5, byte paramByte6, byte paramByte7, byte paramByte8, byte paramByte9, byte paramByte10)
  {
    a = paramInt1;
    b = ag.a(paramByte1);
    c = ag.a(paramByte2);
    d = paramInt2;
    e = paramCameraPosition;
    f = ag.a(paramByte3);
    g = ag.a(paramByte4);
    h = ag.a(paramByte5);
    i = ag.a(paramByte6);
    j = ag.a(paramByte7);
    k = ag.a(paramByte8);
    l = ag.a(paramByte9);
    m = ag.a(paramByte10);
  }
  
  public static GoogleMapOptions a(Context paramContext, AttributeSet paramAttributeSet)
  {
    if (paramAttributeSet == null) {
      return null;
    }
    TypedArray localTypedArray = paramContext.getResources().obtainAttributes(paramAttributeSet, d.MapAttrs);
    GoogleMapOptions localGoogleMapOptions = new GoogleMapOptions();
    if (localTypedArray.hasValue(d.MapAttrs_mapType)) {
      localGoogleMapOptions.a(localTypedArray.getInt(d.MapAttrs_mapType, -1));
    }
    if (localTypedArray.hasValue(d.MapAttrs_zOrderOnTop)) {
      localGoogleMapOptions.a(localTypedArray.getBoolean(d.MapAttrs_zOrderOnTop, false));
    }
    if (localTypedArray.hasValue(d.MapAttrs_useViewLifecycle)) {
      localGoogleMapOptions.b(localTypedArray.getBoolean(d.MapAttrs_useViewLifecycle, false));
    }
    if (localTypedArray.hasValue(d.MapAttrs_uiCompass)) {
      localGoogleMapOptions.d(localTypedArray.getBoolean(d.MapAttrs_uiCompass, true));
    }
    if (localTypedArray.hasValue(d.MapAttrs_uiRotateGestures)) {
      localGoogleMapOptions.h(localTypedArray.getBoolean(d.MapAttrs_uiRotateGestures, true));
    }
    if (localTypedArray.hasValue(d.MapAttrs_uiScrollGestures)) {
      localGoogleMapOptions.e(localTypedArray.getBoolean(d.MapAttrs_uiScrollGestures, true));
    }
    if (localTypedArray.hasValue(d.MapAttrs_uiTiltGestures)) {
      localGoogleMapOptions.g(localTypedArray.getBoolean(d.MapAttrs_uiTiltGestures, true));
    }
    if (localTypedArray.hasValue(d.MapAttrs_uiZoomGestures)) {
      localGoogleMapOptions.f(localTypedArray.getBoolean(d.MapAttrs_uiZoomGestures, true));
    }
    if (localTypedArray.hasValue(d.MapAttrs_uiZoomControls)) {
      localGoogleMapOptions.c(localTypedArray.getBoolean(d.MapAttrs_uiZoomControls, true));
    }
    if (localTypedArray.hasValue(d.MapAttrs_liteMode)) {
      localGoogleMapOptions.i(localTypedArray.getBoolean(d.MapAttrs_liteMode, false));
    }
    if (localTypedArray.hasValue(d.MapAttrs_uiMapToolbar)) {
      localGoogleMapOptions.j(localTypedArray.getBoolean(d.MapAttrs_uiMapToolbar, true));
    }
    localGoogleMapOptions.a(CameraPosition.a(paramContext, paramAttributeSet));
    localTypedArray.recycle();
    return localGoogleMapOptions;
  }
  
  int a()
  {
    return a;
  }
  
  public GoogleMapOptions a(int paramInt)
  {
    d = paramInt;
    return this;
  }
  
  public GoogleMapOptions a(CameraPosition paramCameraPosition)
  {
    e = paramCameraPosition;
    return this;
  }
  
  public GoogleMapOptions a(boolean paramBoolean)
  {
    b = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  byte b()
  {
    return ag.a(b);
  }
  
  public GoogleMapOptions b(boolean paramBoolean)
  {
    c = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  byte c()
  {
    return ag.a(c);
  }
  
  public GoogleMapOptions c(boolean paramBoolean)
  {
    f = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  byte d()
  {
    return ag.a(f);
  }
  
  public GoogleMapOptions d(boolean paramBoolean)
  {
    g = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  byte e()
  {
    return ag.a(g);
  }
  
  public GoogleMapOptions e(boolean paramBoolean)
  {
    h = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  byte f()
  {
    return ag.a(h);
  }
  
  public GoogleMapOptions f(boolean paramBoolean)
  {
    i = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  byte g()
  {
    return ag.a(i);
  }
  
  public GoogleMapOptions g(boolean paramBoolean)
  {
    j = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  byte h()
  {
    return ag.a(j);
  }
  
  public GoogleMapOptions h(boolean paramBoolean)
  {
    k = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  byte i()
  {
    return ag.a(k);
  }
  
  public GoogleMapOptions i(boolean paramBoolean)
  {
    l = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  byte j()
  {
    return ag.a(l);
  }
  
  public GoogleMapOptions j(boolean paramBoolean)
  {
    m = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  byte k()
  {
    return ag.a(m);
  }
  
  public int l()
  {
    return d;
  }
  
  public CameraPosition m()
  {
    return e;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    l.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.GoogleMapOptions
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */