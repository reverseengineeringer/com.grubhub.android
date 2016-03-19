package org.b.a;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.SharedPreferences.Editor;

final class a$2
  implements DialogInterface.OnClickListener
{
  a$2(SharedPreferences.Editor paramEditor) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (a != null)
    {
      long l = System.currentTimeMillis();
      a.putLong("date_firstlaunch", Long.valueOf(l).longValue());
      a.putLong("launch_count", 0L);
      a.putLong("order_count", 0L);
      a.putBoolean("remindmelater", true);
      a.putBoolean("dontshowagain", false);
      a.a(a);
    }
    paramDialogInterface.dismiss();
    a.c(false);
  }
}

/* Location:
 * Qualified Name:     org.b.a.a.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */