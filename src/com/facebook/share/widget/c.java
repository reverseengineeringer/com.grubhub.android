package com.facebook.share.widget;

import com.facebook.h;
import com.facebook.share.internal.a;
import com.facebook.share.internal.d;

class c
  implements d
{
  private boolean b;
  
  private c(LikeView paramLikeView) {}
  
  public void a()
  {
    b = true;
  }
  
  public void a(a parama, h paramh)
  {
    if (b) {
      return;
    }
    h localh = paramh;
    if (parama != null)
    {
      if (!parama.e()) {
        paramh = new h("Cannot use LikeView. The device may not be supported.");
      }
      LikeView.a(a, parama);
      LikeView.c(a);
      localh = paramh;
    }
    if ((localh != null) && (LikeView.d(a) != null)) {
      LikeView.d(a).a(localh);
    }
    LikeView.a(a, null);
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.widget.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */