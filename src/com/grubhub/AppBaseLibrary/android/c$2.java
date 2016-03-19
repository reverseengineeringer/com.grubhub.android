package com.grubhub.AppBaseLibrary.android;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class c$2
  implements DialogInterface.OnClickListener
{
  c$2(d paramd) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (a != null) {
      a.b(paramDialogInterface, paramInt);
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.c.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */