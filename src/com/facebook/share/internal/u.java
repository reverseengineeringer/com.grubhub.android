package com.facebook.share.internal;

import android.app.Activity;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import com.facebook.internal.a;
import com.facebook.internal.k;
import com.facebook.internal.l;
import com.facebook.internal.m;
import com.facebook.internal.o;
import java.util.ArrayList;
import java.util.List;

public class u
  extends o<LikeContent, Object>
{
  private static final int b = k.Like.toRequestCode();
  
  public u(Activity paramActivity)
  {
    super(paramActivity, b);
  }
  
  public u(Fragment paramFragment)
  {
    super(paramFragment, b);
  }
  
  private static Bundle b(LikeContent paramLikeContent)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("object_id", paramLikeContent.a());
    localBundle.putString("object_type", paramLikeContent.b());
    return localBundle;
  }
  
  public static boolean d()
  {
    return m.a(g());
  }
  
  public static boolean e()
  {
    return m.b(g());
  }
  
  private static l g()
  {
    return x.LIKE_DIALOG;
  }
  
  protected List<o<LikeContent, Object>.com.facebook.internal.p> b()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new v(this, null));
    localArrayList.add(new w(this, null));
    return localArrayList;
  }
  
  protected a c()
  {
    return new a(a());
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.internal.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */