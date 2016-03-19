package com.crashlytics.android;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class s
  implements DialogInterface.OnClickListener
{
  s(p paramp) {}
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Crashlytics localCrashlytics = a.b;
    Crashlytics.a(true);
    a.a.a(true);
    paramDialogInterface.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */