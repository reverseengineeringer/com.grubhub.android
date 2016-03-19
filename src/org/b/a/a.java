package org.b.a;

import android.annotation.SuppressLint;
import android.app.AlertDialog.Builder;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Build.VERSION;
import android.util.Log;

public class a
{
  private static int a = 3;
  private static int b = 3;
  private static int c = 7;
  private static int d = 3;
  private static boolean e;
  private static boolean f;
  private static boolean g;
  private static boolean h;
  private static boolean i;
  private static boolean j;
  private static d k = new c();
  
  public static void a(int paramInt)
  {
    a = paramInt;
  }
  
  @SuppressLint({"NewApi"})
  private static void a(Context paramContext, final SharedPreferences.Editor paramEditor)
  {
    int m;
    if ((Build.VERSION.SDK_INT >= 11) && (f)) {
      if (e) {
        m = 2;
      }
    }
    for (AlertDialog.Builder localBuilder = new AlertDialog.Builder(paramContext, m);; localBuilder = new AlertDialog.Builder(paramContext))
    {
      b localb = b.a(paramContext);
      localBuilder.setTitle(String.format(paramContext.getString(f.dialog_title), new Object[] { localb.a() }));
      localBuilder.setMessage(paramContext.getString(f.rate_message));
      localBuilder.setPositiveButton(paramContext.getString(f.rate), new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          a.b(a.this);
          if (paramEditor != null)
          {
            paramEditor.putBoolean("dontshowagain", true);
            a.a(paramEditor);
          }
          paramAnonymousDialogInterface.dismiss();
          a.c(false);
        }
      });
      localBuilder.setNeutralButton(paramContext.getString(f.later), new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          if (a.this != null)
          {
            long l = System.currentTimeMillis();
            putLong("date_firstlaunch", Long.valueOf(l).longValue());
            putLong("launch_count", 0L);
            putLong("order_count", 0L);
            putBoolean("remindmelater", true);
            putBoolean("dontshowagain", false);
            a.a(a.this);
          }
          paramAnonymousDialogInterface.dismiss();
          a.c(false);
        }
      });
      if (!g) {
        localBuilder.setNegativeButton(paramContext.getString(f.no_thanks), new DialogInterface.OnClickListener()
        {
          public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
          {
            if (a.this != null)
            {
              putBoolean("dontshowagain", true);
              putBoolean("remindmelater", false);
              long l = System.currentTimeMillis();
              putLong("date_firstlaunch", l);
              putLong("launch_count", 0L);
              putLong("order_count", 0L);
              a.a(a.this);
            }
            paramAnonymousDialogInterface.dismiss();
            a.c(false);
          }
        });
      }
      localBuilder.show();
      j = true;
      return;
      m = 3;
      break;
    }
  }
  
  public static void a(d paramd)
  {
    k = paramd;
  }
  
  public static void a(boolean paramBoolean)
  {
    h = paramBoolean;
  }
  
  public static boolean a(Context paramContext)
  {
    return a(paramContext, a);
  }
  
  private static boolean a(Context paramContext, int paramInt)
  {
    boolean bool = false;
    SharedPreferences localSharedPreferences = paramContext.getSharedPreferences("apprater", 0);
    SharedPreferences.Editor localEditor = localSharedPreferences.edit();
    b localb = b.a(paramContext);
    if ((h) && (!localb.c().equals(localSharedPreferences.getString("app_version_name", "none"))))
    {
      localEditor.putString("app_version_name", localb.c());
      c(paramContext);
      b(localEditor);
    }
    if ((i) && (localb.b() != localSharedPreferences.getInt("app_version_code", -1)))
    {
      localEditor.putInt("app_version_code", localb.b());
      c(paramContext);
      b(localEditor);
    }
    if (localSharedPreferences.getBoolean("dontshowagain", false)) {
      return false;
    }
    if (localSharedPreferences.getBoolean("remindmelater", false)) {
      paramInt = d;
    }
    long l = localSharedPreferences.getLong("order_count", 0L) + 1L;
    localEditor.putLong("order_count", l);
    if (l >= paramInt)
    {
      a(paramContext, localEditor);
      bool = true;
    }
    b(localEditor);
    return bool;
  }
  
  public static void b(int paramInt)
  {
    d = paramInt;
  }
  
  public static void b(Context paramContext)
  {
    try
    {
      paramContext.startActivity(new Intent("android.intent.action.VIEW", k.a(paramContext)));
      return;
    }
    catch (ActivityNotFoundException paramContext)
    {
      Log.e(a.class.getSimpleName(), "Market Intent not found");
    }
  }
  
  @SuppressLint({"NewApi"})
  private static void b(SharedPreferences.Editor paramEditor)
  {
    if (Build.VERSION.SDK_INT > 8)
    {
      paramEditor.apply();
      return;
    }
    paramEditor.commit();
  }
  
  public static void b(boolean paramBoolean)
  {
    i = paramBoolean;
  }
  
  public static void c(Context paramContext)
  {
    paramContext = paramContext.getSharedPreferences("apprater", 0).edit();
    paramContext.putBoolean("dontshowagain", false);
    paramContext.putBoolean("remindmelater", false);
    paramContext.putLong("launch_count", 0L);
    paramContext.putLong("order_count", 0L);
    paramContext.putLong("date_firstlaunch", System.currentTimeMillis());
    b(paramContext);
  }
}

/* Location:
 * Qualified Name:     org.b.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */