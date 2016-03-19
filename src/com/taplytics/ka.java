package com.taplytics;

import android.support.v4.view.ViewPager;
import android.support.v4.view.bi;
import android.view.ViewGroup;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;

class ka
  implements ViewTreeObserver.OnGlobalLayoutListener
{
  private ViewPager a;
  private ViewGroup b;
  private bi c;
  
  public ka(ViewPager paramViewPager, ViewGroup paramViewGroup, bi parambi)
  {
    a = paramViewPager;
    b = paramViewGroup;
    c = parambi;
  }
  
  public void onGlobalLayout()
  {
    Object localObject;
    try
    {
      int i = a.getCurrentItem();
      String str = "";
      localObject = jy.a(c, i);
      if (localObject != null) {
        str = localObject.getClass().getSimpleName();
      }
      if (str.equals("")) {
        return;
      }
      localObject = localObject + "_viewpager_" + i;
      if (b.getTag(fq.a().b()) == null)
      {
        jy.a(b, localObject);
        jy.a(b.getId(), localObject, str);
        jy.a(a, (String)localObject);
        return;
      }
    }
    catch (Exception localException)
    {
      ck.b("frg", localException);
      return;
    }
    if (!b.getTag(fq.a().b()).equals(localObject))
    {
      b.setTag(fq.a().b(), localObject);
      jy.a(b.getId());
      jy.a(b.getId(), localObject, localException);
      jy.a(a, (String)localObject);
    }
  }
}

/* Location:
 * Qualified Name:     com.taplytics.ka
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */