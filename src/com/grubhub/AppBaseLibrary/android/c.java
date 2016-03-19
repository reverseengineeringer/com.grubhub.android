package com.grubhub.AppBaseLibrary.android;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.text.TextUtils;
import android.widget.Button;

public class c
{
  public static void a(Context paramContext, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, d paramd)
  {
    String str4 = null;
    String str5 = paramContext.getString(paramInt1);
    String str1;
    String str2;
    if (paramInt2 > 0)
    {
      str1 = paramContext.getString(paramInt2);
      if (paramInt3 <= 0) {
        break label81;
      }
      str2 = paramContext.getString(paramInt3);
      label32:
      if (paramInt4 <= 0) {
        break label87;
      }
    }
    label81:
    label87:
    for (String str3 = paramContext.getString(paramInt4);; str3 = null)
    {
      if (paramInt5 > 0) {
        str4 = paramContext.getString(paramInt5);
      }
      a(paramContext, str5, str1, str2, str3, str4, paramd);
      return;
      str1 = null;
      break;
      str2 = null;
      break label32;
    }
  }
  
  public static void a(Context paramContext, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, d paramd)
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(paramContext);
    localBuilder.setTitle(paramString1).setMessage(paramString2);
    if (!TextUtils.isEmpty(paramString3)) {
      localBuilder.setPositiveButton(paramString3, new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          if (c.this != null) {
            a(paramAnonymousDialogInterface, paramAnonymousInt);
          }
        }
      });
    }
    if (!TextUtils.isEmpty(paramString4)) {
      localBuilder.setNegativeButton(paramString4, new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          if (c.this != null) {
            b(paramAnonymousDialogInterface, paramAnonymousInt);
          }
        }
      });
    }
    if (!TextUtils.isEmpty(paramString5)) {
      localBuilder.setNeutralButton(paramString5, new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          if (c.this != null) {
            c(paramAnonymousDialogInterface, paramAnonymousInt);
          }
        }
      });
    }
    localBuilder.setOnCancelListener(new DialogInterface.OnCancelListener()
    {
      public void onCancel(DialogInterface paramAnonymousDialogInterface)
      {
        if (c.this != null) {
          a(paramAnonymousDialogInterface);
        }
      }
    });
    paramString1 = localBuilder.create();
    paramString1.show();
    if (!TextUtils.isEmpty(paramString3)) {
      paramString1.getButton(-1).setContentDescription(paramContext.getString(2131231113));
    }
    if (!TextUtils.isEmpty(paramString4)) {
      paramString1.getButton(-2).setContentDescription(paramContext.getString(2131231111));
    }
    if (!TextUtils.isEmpty(paramString5)) {
      paramString1.getButton(-3).setContentDescription(paramContext.getString(2131231112));
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */