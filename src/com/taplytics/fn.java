package com.taplytics;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.view.View;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import org.json.JSONObject;

class fn
  implements DialogInterface.OnClickListener
{
  fn(fl paramfl, String paramString) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    try
    {
      Object localObject1;
      if (!gq.h().d().equals(b.ape))
      {
        Object localObject2 = b.a.c(a);
        localObject1 = b.b.a.a.c.getListView().getItemAtPosition(paramInt).toString();
        paramDialogInterface = b.a.a((JSONObject)localObject2, (String)localObject1);
        fy localfy = fy.e();
        localObject2 = ((JSONObject)localObject2).optString("_id");
        if (((String)localObject1).equals("baseline")) {}
        for (paramDialogInterface = (DialogInterface)localObject1;; paramDialogInterface = paramDialogInterface.optString("_id"))
        {
          localfy.a((String)localObject2, paramDialogInterface, a, (String)localObject1);
          return;
        }
      }
      if ((fy.e().q() != null) && (fy.e().i()))
      {
        paramDialogInterface = Toast.makeText(fy.e().q(), "No connection to Taplytics. Please check your internet connection or restart the app.", 1);
        localObject1 = (TextView)paramDialogInterface.getView().findViewById(16908299);
        if (localObject1 != null) {
          ((TextView)localObject1).setGravity(17);
        }
        paramDialogInterface.show();
        return;
      }
    }
    catch (Exception paramDialogInterface)
    {
      fi.a(b.b.a.a, "third", paramDialogInterface);
    }
  }
}

/* Location:
 * Qualified Name:     com.taplytics.fn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */