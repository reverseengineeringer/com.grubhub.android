package com.facebook.share.internal;

import android.content.Context;
import android.os.Bundle;
import com.facebook.internal.ah;

final class y
  extends ah
{
  private String a;
  
  y(Context paramContext, String paramString1, String paramString2)
  {
    super(paramContext, 65542, 65543, 20141001, paramString1);
    a = paramString2;
  }
  
  protected void a(Bundle paramBundle)
  {
    paramBundle.putString("com.facebook.platform.extra.OBJECT_ID", a);
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.internal.y
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */