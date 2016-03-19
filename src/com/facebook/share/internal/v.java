package com.facebook.share.internal;

import android.os.Bundle;
import android.util.Log;
import com.facebook.internal.a;
import com.facebook.internal.m;
import com.facebook.internal.n;
import com.facebook.internal.o;
import com.facebook.internal.p;

class v
  extends o<LikeContent, Object>.p
{
  private v(u paramu)
  {
    super(paramu);
  }
  
  public boolean a(LikeContent paramLikeContent)
  {
    return (paramLikeContent != null) && (u.d());
  }
  
  public a b(final LikeContent paramLikeContent)
  {
    a locala = b.c();
    m.a(locala, new n()
    {
      public Bundle a()
      {
        return u.a(paramLikeContent);
      }
      
      public Bundle b()
      {
        Log.e("LikeDialog", "Attempting to present the Like Dialog with an outdated Facebook app on the device");
        return new Bundle();
      }
    }, u.f());
    return locala;
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.internal.v
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */