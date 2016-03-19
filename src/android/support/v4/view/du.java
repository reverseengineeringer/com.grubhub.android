package android.support.v4.view;

import android.view.View;

class du
  implements ed
{
  dq a;
  
  du(dq paramdq)
  {
    a = paramdq;
  }
  
  public void a(View paramView)
  {
    if (dq.c(a) >= 0) {
      bp.a(paramView, 2, null);
    }
    if (dq.a(a) != null) {
      dq.a(a).run();
    }
    Object localObject = paramView.getTag(2113929216);
    if ((localObject instanceof ed)) {}
    for (localObject = (ed)localObject;; localObject = null)
    {
      if (localObject != null) {
        ((ed)localObject).a(paramView);
      }
      return;
    }
  }
  
  public void b(View paramView)
  {
    if (dq.c(a) >= 0)
    {
      bp.a(paramView, dq.c(a), null);
      dq.a(a, -1);
    }
    if (dq.b(a) != null) {
      dq.b(a).run();
    }
    Object localObject = paramView.getTag(2113929216);
    if ((localObject instanceof ed)) {}
    for (localObject = (ed)localObject;; localObject = null)
    {
      if (localObject != null) {
        ((ed)localObject).b(paramView);
      }
      return;
    }
  }
  
  public void c(View paramView)
  {
    Object localObject = paramView.getTag(2113929216);
    if ((localObject instanceof ed)) {}
    for (localObject = (ed)localObject;; localObject = null)
    {
      if (localObject != null) {
        ((ed)localObject).c(paramView);
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.du
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */