package com.google.android.gms.iid;

import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.gcm.GcmReceiver;
import com.google.android.gms.gcm.GoogleCloudMessaging;
import java.io.IOException;

public class b
  extends Service
{
  static String ACTION = "action";
  private static String zzavK = "google.com/iid";
  private static String zzawW = "CMD";
  MessengerCompat zzawU = new MessengerCompat(new Handler(Looper.getMainLooper())
  {
    public void handleMessage(Message paramAnonymousMessage)
    {
      b.zza(b.this, paramAnonymousMessage, MessengerCompat.a(paramAnonymousMessage));
    }
  });
  BroadcastReceiver zzawV = new InstanceIDListenerService.2(this);
  int zzawX;
  int zzawY;
  
  static void zza(Context paramContext, i parami)
  {
    parami.b();
    parami = new Intent("com.google.android.gms.iid.InstanceID");
    parami.putExtra(zzawW, "RST");
    parami.setPackage(paramContext.getPackageName());
    paramContext.startService(parami);
  }
  
  private void zza(Message paramMessage, int paramInt)
  {
    h.a(this);
    getPackageManager();
    if ((paramInt != h.c) && (paramInt != h.b))
    {
      Log.w("InstanceID", "Message from unexpected caller " + paramInt + " mine=" + h.b + " appid=" + h.c);
      return;
    }
    zzn((Intent)obj);
  }
  
  static void zzav(Context paramContext)
  {
    Intent localIntent = new Intent("com.google.android.gms.iid.InstanceID");
    localIntent.setPackage(paramContext.getPackageName());
    localIntent.putExtra(zzawW, "SYNC");
    paramContext.startService(localIntent);
  }
  
  public IBinder onBind(Intent paramIntent)
  {
    if ((paramIntent != null) && ("com.google.android.gms.iid.InstanceID".equals(paramIntent.getAction()))) {
      return zzawU.a();
    }
    return null;
  }
  
  public void onCreate()
  {
    IntentFilter localIntentFilter = new IntentFilter("com.google.android.c2dm.intent.REGISTRATION");
    localIntentFilter.addCategory(getPackageName());
    registerReceiver(zzawV, localIntentFilter, "com.google.android.c2dm.permission.RECEIVE", null);
  }
  
  public void onDestroy()
  {
    unregisterReceiver(zzawV);
  }
  
  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    zzgn(paramInt2);
    if (paramIntent == null)
    {
      stop();
      return 2;
    }
    try
    {
      if ("com.google.android.gms.iid.InstanceID".equals(paramIntent.getAction()))
      {
        if (Build.VERSION.SDK_INT <= 18)
        {
          Intent localIntent = (Intent)paramIntent.getParcelableExtra("GSF");
          if (localIntent != null)
          {
            startService(localIntent);
            return 1;
          }
        }
        zzn(paramIntent);
      }
      stop();
      if (paramIntent.getStringExtra("from") != null) {
        GcmReceiver.completeWakefulIntent(paramIntent);
      }
      return 2;
    }
    finally
    {
      stop();
    }
  }
  
  public void onTokenRefresh() {}
  
  void stop()
  {
    try
    {
      zzawX -= 1;
      if (zzawX == 0) {
        stopSelf(zzawY);
      }
      if (Log.isLoggable("InstanceID", 3)) {
        Log.d("InstanceID", "Stop " + zzawX + " " + zzawY);
      }
      return;
    }
    finally {}
  }
  
  public void zzab(boolean paramBoolean)
  {
    onTokenRefresh();
  }
  
  void zzgn(int paramInt)
  {
    try
    {
      zzawX += 1;
      if (paramInt > zzawY) {
        zzawY = paramInt;
      }
      return;
    }
    finally {}
  }
  
  public void zzn(Intent paramIntent)
  {
    String str2 = paramIntent.getStringExtra("subtype");
    Object localObject;
    String str1;
    if (str2 == null)
    {
      localObject = a.b(this);
      str1 = paramIntent.getStringExtra(zzawW);
      if ((paramIntent.getStringExtra("error") == null) && (paramIntent.getStringExtra("registration_id") == null)) {
        break label115;
      }
      if (Log.isLoggable("InstanceID", 3)) {
        Log.d("InstanceID", "Register result in service " + str2);
      }
      ((a)localObject).e().d(paramIntent);
    }
    label115:
    label267:
    do
    {
      do
      {
        return;
        localObject = new Bundle();
        ((Bundle)localObject).putString("subtype", str2);
        localObject = a.a(this, (Bundle)localObject);
        break;
        if (Log.isLoggable("InstanceID", 3)) {
          Log.d("InstanceID", "Service command " + str2 + " " + str1 + " " + paramIntent.getExtras());
        }
        if (paramIntent.getStringExtra("unregistered") != null)
        {
          i locali = ((a)localObject).d();
          str1 = str2;
          if (str2 == null) {
            str1 = "";
          }
          locali.e(str1);
          ((a)localObject).e().d(paramIntent);
          return;
        }
        if ("RST".equals(str1))
        {
          ((a)localObject).c();
          zzab(true);
          return;
        }
        if (!"RST_FULL".equals(str1)) {
          break label267;
        }
      } while (((a)localObject).d().a());
      ((a)localObject).d().b();
      zzab(true);
      return;
      if ("SYNC".equals(str1))
      {
        ((a)localObject).d().e(str2);
        zzab(false);
        return;
      }
    } while (!"PING".equals(str1));
    try
    {
      GoogleCloudMessaging.getInstance(this).send(zzavK, h.b(), 0L, paramIntent.getExtras());
      return;
    }
    catch (IOException paramIntent)
    {
      Log.w("InstanceID", "Failed to send ping response");
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.iid.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */