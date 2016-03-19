package com.taplytics;

import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.view.View.OnLayoutChangeListener;
import android.view.ViewGroup;
import java.lang.reflect.Method;

class fs
  implements View.OnLayoutChangeListener
{
  fs(fq paramfq) {}
  
  public void onLayoutChange(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8)
  {
    for (;;)
    {
      boolean bool2;
      try
      {
        Object localObject1 = fy.e().q().getClass().getMethod("getSupportFragmentManager", new Class[0]).invoke(fy.e().q(), new Object[0]);
        Object localObject3 = localObject1.getClass().getMethod("findFragmentById", new Class[] { Integer.TYPE }).invoke(localObject1, new Object[] { Integer.valueOf(paramView.getId()) });
        int i = ((Integer)localObject3.getClass().getMethod("getId", new Class[0]).invoke(localObject3, new Object[0])).intValue();
        localObject1 = localObject3.getClass().getMethod("getTag", new Class[0]).invoke(localObject3, new Object[0]);
        String str;
        View localView;
        boolean bool1;
        if (localObject1 == null)
        {
          str = localObject3.getClass().getSimpleName();
          localView = (View)localObject3.getClass().getMethod("getView", new Class[0]).invoke(localObject3, new Object[0]);
          if ((paramInt5 != 0) || (paramInt6 != 0) || (paramInt7 != 0) || (paramInt8 != 0)) {
            continue;
          }
          bool1 = true;
          break label311;
          if (!(paramView instanceof ViewGroup)) {
            break;
          }
          boolean bool3 = localView instanceof ViewGroup;
          if (!bool3) {
            break;
          }
          localObject1 = localView;
        }
        try
        {
          if ((localView instanceof RecyclerView)) {
            localObject1 = (ViewGroup)localView.getParent();
          }
          jy.a((ViewGroup)paramView, (ViewGroup)localObject1, i, (String)str, localObject3.getClass().getSimpleName(), bool2, bool1);
          return;
          str = localObject1.toString();
          continue;
          bool1 = false;
          break label311;
          bool2 = false;
        }
        catch (Throwable localThrowable)
        {
          Object localObject2 = localView;
          continue;
        }
        if (paramInt1 + paramInt3 == 0) {
          break label325;
        }
      }
      catch (Exception paramView)
      {
        ck.b("F Ex sup: ", paramView);
        return;
      }
      label311:
      if (paramInt4 + paramInt2 == 0) {
        label325:
        bool2 = true;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.taplytics.fs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */