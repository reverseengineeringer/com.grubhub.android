package com.taplytics;

import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

class hg
  implements Runnable
{
  hg(gq paramgq) {}
  
  public void run()
  {
    if ((jk.a(gq.c(a))) && (gq.c(a).findViewById(js.b()).getTag().equals(b.alligator.name())))
    {
      if (gq.d(a) == null) {
        gq.a(a, "waiting..");
      }
      if (gq.e(a) == null) {
        gq.b(a, "waiting...");
      }
      ((TextView)gq.c(a).findViewById(js.d())).setText("Experiment: " + gq.d(a));
      ((TextView)gq.c(a).findViewById(js.c())).setText("Variation: " + gq.e(a));
    }
  }
}

/* Location:
 * Qualified Name:     com.taplytics.hg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */