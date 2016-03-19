package com.taplytics;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.ListView;

class fl
  implements DialogInterface.OnClickListener
{
  fl(fk paramfk, eo parameo) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    try
    {
      paramDialogInterface = ((String)b.a.a.b.getListView().getItemAtPosition(paramInt)).replaceAll(" \\(draft\\)", "").replaceAll(" \\(active\\)", "");
      b.a.a.c = jk.a("Variation", a.b(paramDialogInterface), new fn(this, paramDialogInterface)).create();
      b.a.a.c.setOnKeyListener(new fo(this));
      b.a.a.c.show();
      b.a.a.b.dismiss();
      jk.a(b.a.a.c, 80);
      return;
    }
    catch (Exception paramDialogInterface)
    {
      fi.a(b.a.a, "second", paramDialogInterface);
    }
  }
}

/* Location:
 * Qualified Name:     com.taplytics.fl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */