package android.support.v4.app;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;

class au
  extends at
{
  public Intent a(Activity paramActivity)
  {
    Intent localIntent2 = av.a(paramActivity);
    Intent localIntent1 = localIntent2;
    if (localIntent2 == null) {
      localIntent1 = b(paramActivity);
    }
    return localIntent1;
  }
  
  public String a(Context paramContext, ActivityInfo paramActivityInfo)
  {
    String str2 = av.a(paramActivityInfo);
    String str1 = str2;
    if (str2 == null) {
      str1 = super.a(paramContext, paramActivityInfo);
    }
    return str1;
  }
  
  public boolean a(Activity paramActivity, Intent paramIntent)
  {
    return av.a(paramActivity, paramIntent);
  }
  
  Intent b(Activity paramActivity)
  {
    return super.a(paramActivity);
  }
  
  public void b(Activity paramActivity, Intent paramIntent)
  {
    av.b(paramActivity, paramIntent);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.au
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */