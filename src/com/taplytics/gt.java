package com.taplytics;

import android.os.Handler;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.widget.TextView;

class gt
  implements View.OnTouchListener
{
  gt(gq paramgq) {}
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if ((!gq.k(a)) && (paramMotionEvent.getAction() == 1))
    {
      paramView = (TextView)gq.c(a).findViewById(js.d());
      TextView localTextView = (TextView)gq.c(a).findViewById(js.c());
      paramView.setText("Uploading view...");
      localTextView.setText("");
      Handler localHandler = new Handler();
      localHandler.postDelayed(new gu(this, localTextView, localHandler, paramMotionEvent, paramView, new Handler()), 50L);
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.taplytics.gt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */