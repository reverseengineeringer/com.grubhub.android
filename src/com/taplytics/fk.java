package com.taplytics;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.view.View;
import android.widget.TextView;
import android.widget.Toast;

class fk
  implements DialogInterface.OnClickListener
{
  fk(fj paramfj) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    boolean bool = true;
    switch (paramInt)
    {
    default: 
    case 0: 
      for (;;)
      {
        return;
        try
        {
          if (fy.e().k() != null)
          {
            paramDialogInterface = fy.e().k();
            a.a.b = jk.a("Experiments", paramDialogInterface.a(true), new fl(this, paramDialogInterface)).create();
            a.a.b.dismiss();
            a.a.b.show();
            a.a.a.dismiss();
            jk.a(a.a.b, 80);
            return;
          }
        }
        catch (Exception paramDialogInterface)
        {
          fi.a(a.a, "first", paramDialogInterface);
          return;
        }
        try
        {
          if ((fy.e().q() != null) && (fy.e().i()))
          {
            paramDialogInterface = Toast.makeText(fy.e().q(), "No experiments found. If you have created an experiment, check your api key and internet connection.", 1);
            TextView localTextView = (TextView)paramDialogInterface.getView().findViewById(16908299);
            if (localTextView != null) {
              localTextView.setGravity(17);
            }
            paramDialogInterface.show();
            return;
          }
        }
        catch (Exception paramDialogInterface)
        {
          ck.b("something dialog", paramDialogInterface);
          return;
        }
      }
    case 1: 
      gq.h().p();
      gq.h().a(false);
      fy.e().w();
      paramDialogInterface = new c();
      paramDialogInterface.a(new fp(this));
      fy.e().a(null, paramDialogInterface);
      return;
    }
    if (!gq.h().s()) {}
    for (;;)
    {
      gq.h().b(bool);
      if (!bool)
      {
        gq.h().p();
        return;
      }
      gq.h().k();
      return;
      bool = false;
    }
  }
}

/* Location:
 * Qualified Name:     com.taplytics.fk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */