package com.taplytics;

import android.app.Activity;
import android.content.Intent;

class fp
  extends h<Object>
{
  fp(fk paramfk) {}
  
  public void e()
  {
    Activity localActivity = fy.e().q();
    Intent localIntent = localActivity.getIntent();
    localActivity.finish();
    localActivity.overridePendingTransition(0, 0);
    localActivity.startActivity(localIntent);
    localActivity.overridePendingTransition(0, 0);
    super.e();
  }
}

/* Location:
 * Qualified Name:     com.taplytics.fp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */