package com.facebook.share.widget;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.facebook.internal.ac;
import com.facebook.internal.al;

class LikeView$LikeControllerBroadcastReceiver
  extends BroadcastReceiver
{
  private LikeView$LikeControllerBroadcastReceiver(LikeView paramLikeView) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    int j = 1;
    paramContext = paramIntent.getAction();
    paramIntent = paramIntent.getExtras();
    int i = j;
    if (paramIntent != null)
    {
      String str = paramIntent.getString("com.facebook.sdk.LikeActionController.OBJECT_ID");
      i = j;
      if (!al.a(str))
      {
        if (!al.a(LikeView.b(a), str)) {
          break label62;
        }
        i = j;
      }
    }
    if (i == 0) {}
    label62:
    label120:
    do
    {
      do
      {
        return;
        i = 0;
        break;
        if ("com.facebook.sdk.LikeActionController.UPDATED".equals(paramContext))
        {
          LikeView.c(a);
          return;
        }
        if (!"com.facebook.sdk.LikeActionController.DID_ERROR".equals(paramContext)) {
          break label120;
        }
      } while (LikeView.d(a) == null);
      LikeView.d(a).a(ac.a(paramIntent));
      return;
    } while (!"com.facebook.sdk.LikeActionController.DID_RESET".equals(paramContext));
    LikeView.a(a, LikeView.b(a), LikeView.e(a));
    LikeView.c(a);
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.widget.LikeView.LikeControllerBroadcastReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */