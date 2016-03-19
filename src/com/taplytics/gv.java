package com.taplytics;

import android.os.Handler;
import android.widget.TextView;

class gv
  implements Runnable
{
  gv(gu paramgu) {}
  
  public void run()
  {
    if (gq.l(a.f.a))
    {
      if (a.a.getText().length() > 5) {
        a.a.setText("");
      }
      a.a.append(".");
      a.b.postDelayed(this, 100L);
    }
  }
}

/* Location:
 * Qualified Name:     com.taplytics.gv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */