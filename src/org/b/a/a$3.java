package org.b.a;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.SharedPreferences.Editor;

final class a$3
  implements DialogInterface.OnClickListener
{
  a$3(SharedPreferences.Editor paramEditor) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (a != null)
    {
      a.putBoolean("dontshowagain", true);
      a.putBoolean("remindmelater", false);
      long l = System.currentTimeMillis();
      a.putLong("date_firstlaunch", l);
      a.putLong("launch_count", 0L);
      a.putLong("order_count", 0L);
      a.a(a);
    }
    paramDialogInterface.dismiss();
    a.c(false);
  }
}

/* Location:
 * Qualified Name:     org.b.a.a.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */