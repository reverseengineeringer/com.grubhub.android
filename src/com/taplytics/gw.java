package com.taplytics;

import android.os.Handler;
import android.widget.TextView;
import org.json.JSONObject;

class gw
  implements ik
{
  gw(gu paramgu) {}
  
  public void a(Exception paramException)
  {
    gq.b(a.f.a, false);
    a.d.setText("There has been an error uploading your view.");
    a.a.setText("Please try again.");
    paramException = new gx(this);
    a.e.postDelayed(paramException, 1700L);
  }
  
  public void a(JSONObject paramJSONObject)
  {
    if (ck.c()) {
      ck.a("Sent view to server.");
    }
    a.d.setText(js.a(gq.f(a.f.a)));
    a.a.setText(js.b(gq.f(a.f.a)));
    gq.g(a.f.a).a();
    gq.a(a.f.a, false);
    gq.b(a.f.a, false);
  }
}

/* Location:
 * Qualified Name:     com.taplytics.gw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */