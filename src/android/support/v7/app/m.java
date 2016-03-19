package android.support.v7.app;

import android.annotation.TargetApi;
import android.support.v7.internal.view.c;
import android.support.v7.internal.view.d;
import android.support.v7.internal.widget.NativeActionModeAwareLayout;
import android.support.v7.internal.widget.ae;
import android.view.ActionMode;
import android.view.ActionMode.Callback;
import android.view.View;

@TargetApi(11)
class m
  extends g
  implements ae
{
  private NativeActionModeAwareLayout k;
  
  m(ActionBarActivity paramActionBarActivity)
  {
    super(paramActionBarActivity);
  }
  
  public ActionMode a(View paramView, ActionMode.Callback paramCallback)
  {
    paramView = b(new d(paramView.getContext(), paramCallback));
    if (paramView != null) {
      return new c(a, paramView);
    }
    return null;
  }
  
  void q()
  {
    k = ((NativeActionModeAwareLayout)a.findViewById(16908290));
    if (k != null) {
      k.setActionModeForChildListener(this);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */