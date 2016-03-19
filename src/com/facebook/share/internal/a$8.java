package com.facebook.share.internal;

import android.os.Bundle;
import com.facebook.internal.al;
import com.facebook.x;
import com.facebook.y;

class a$8
  implements n
{
  a$8(a parama, Bundle paramBundle) {}
  
  public void a()
  {
    if (al.a(a.h(b)))
    {
      localObject = new Bundle();
      ((Bundle)localObject).putString("com.facebook.platform.status.ERROR_DESCRIPTION", "Invalid Object Id");
      a.a(b, "com.facebook.sdk.LikeActionController.DID_ERROR", (Bundle)localObject);
      return;
    }
    Object localObject = new x();
    final l locall = new l(b, a.h(b), a.i(b));
    locall.a((x)localObject);
    ((x)localObject).a(new y()
    {
      public void a(x paramAnonymousx)
      {
        a.a(b, false);
        if (locall.a() != null)
        {
          a.b(b, false);
          return;
        }
        a.b(b, al.a(localle, null));
        a.c(b, true);
        a.g(b).a("fb_like_control_did_like", null, a);
        a.a(b, a);
      }
    });
    ((x)localObject).h();
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.internal.a.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */