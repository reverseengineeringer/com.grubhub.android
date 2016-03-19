package com.grubhub.AppBaseLibrary.android;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;

final class c$4
  implements DialogInterface.OnCancelListener
{
  c$4(d paramd) {}
  
  public void onCancel(DialogInterface paramDialogInterface)
  {
    if (a != null) {
      a.a(paramDialogInterface);
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.c.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */