package com.taplytics;

import android.app.Activity;
import android.app.Fragment;
import android.app.FragmentManager;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.view.View.OnLayoutChangeListener;
import android.view.ViewGroup;

class fr
  implements View.OnLayoutChangeListener
{
  fr(fq paramfq) {}
  
  public void onLayoutChange(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8)
  {
    for (;;)
    {
      try
      {
        if ((fy.e().q().getFragmentManager().findFragmentById(paramView.getId()) == null) || (!(paramView instanceof ViewGroup))) {
          break label220;
        }
        if (paramInt1 + paramInt3 == 0) {
          break label195;
        }
        if (paramInt4 + paramInt2 != 0) {
          break label221;
        }
      }
      catch (Exception paramView)
      {
        Fragment localFragment;
        Object localObject;
        String str;
        boolean bool3;
        ck.b("F Ex, reg, lc: ", paramView);
        return;
      }
      localFragment = fy.e().q().getFragmentManager().findFragmentById(paramView.getId());
      if (localFragment != null)
      {
        localObject = localFragment.getTag();
        if (localObject == null)
        {
          str = localFragment.getClass().getSimpleName();
          localObject = localFragment.getView();
          if (localObject != null)
          {
            bool3 = localObject instanceof ViewGroup;
            if (!bool3) {}
          }
        }
        else
        {
          try
          {
            if (!(localObject instanceof RecyclerView)) {
              break label192;
            }
            ViewGroup localViewGroup = (ViewGroup)((View)localObject).getParent();
            localObject = localViewGroup;
          }
          catch (Throwable localThrowable)
          {
            continue;
            continue;
          }
          jy.a((ViewGroup)paramView, (ViewGroup)localObject, localFragment.getId(), (String)str, localFragment.getClass().getSimpleName(), bool1, bool2);
          return;
          str = localObject.toString();
          continue;
        }
      }
      label192:
      label195:
      label220:
      label221:
      for (boolean bool1 = true;; bool1 = false)
      {
        if ((paramInt5 + paramInt7 != 0) && (paramInt8 + paramInt6 != 0)) {
          break label227;
        }
        bool2 = true;
        break;
        return;
      }
      label227:
      boolean bool2 = false;
    }
  }
}

/* Location:
 * Qualified Name:     com.taplytics.fr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */