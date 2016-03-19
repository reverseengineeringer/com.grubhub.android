package com.taplytics;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.net.Uri;

class gb
  implements DialogInterface.OnClickListener
{
  gb(fz paramfz) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.setData(Uri.parse("https://github.com/taplytics/Taplytics-Android-SDK/blob/master/Sockets.md"));
    paramDialogInterface.dismiss();
    a.a.startActivity(localIntent);
  }
}

/* Location:
 * Qualified Name:     com.taplytics.gb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */