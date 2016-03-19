package org.b.a;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.SharedPreferences.Editor;

final class a$1
  implements DialogInterface.OnClickListener
{
  a$1(Context paramContext, SharedPreferences.Editor paramEditor) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    a.b(a);
    if (b != null)
    {
      b.putBoolean("dontshowagain", true);
      a.a(b);
    }
    paramDialogInterface.dismiss();
    a.c(false);
  }
}

/* Location:
 * Qualified Name:     org.b.a.a.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */