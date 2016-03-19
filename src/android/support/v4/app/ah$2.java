package android.support.v4.app;

import android.transition.Transition;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

final class ah$2
  implements ViewTreeObserver.OnPreDrawListener
{
  ah$2(View paramView1, Transition paramTransition, View paramView2, aj paramaj, Map paramMap1, Map paramMap2, ArrayList paramArrayList) {}
  
  public boolean onPreDraw()
  {
    a.getViewTreeObserver().removeOnPreDrawListener(this);
    if (b != null) {
      b.removeTarget(c);
    }
    View localView = d.a();
    if (localView != null)
    {
      if (!e.isEmpty())
      {
        ah.a(f, localView);
        f.keySet().retainAll(e.values());
        Iterator localIterator = e.entrySet().iterator();
        while (localIterator.hasNext())
        {
          Map.Entry localEntry = (Map.Entry)localIterator.next();
          Object localObject = (String)localEntry.getValue();
          localObject = (View)f.get(localObject);
          if (localObject != null) {
            ((View)localObject).setTransitionName((String)localEntry.getKey());
          }
        }
      }
      if (b != null)
      {
        ah.a(g, localView);
        g.removeAll(f.values());
        g.add(c);
        ah.b(b, g);
      }
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.ah.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */