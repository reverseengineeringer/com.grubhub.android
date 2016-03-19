package com.urbanairship;

import android.annotation.TargetApi;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.app.ba;
import android.support.v4.app.bf;
import android.support.v4.app.cj;
import android.support.v4.content.o;
import android.util.Base64;
import com.urbanairship.json.JsonValue;
import com.urbanairship.push.PushManager;
import com.urbanairship.util.UAStringUtil;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

@TargetApi(8)
class ChannelCapture
  extends BaseManager
{
  static final String ACTION_CHANNEL_CAPTURE = "com.urbanairship.ACTION_CHANNEL_CAPTURE";
  private static final String CHANNEL_PLACEHOLDER = "CHANNEL";
  static final String EXTRA_ACTIONS = "com.urbanairship.EXTRA_ACTIONS";
  static final String EXTRA_NOTIFICATION_ID = "com.urbanairship.EXTRA_NOTIFICATION_ID";
  private static final String GO_URL = "https://go.urbanairship.com/";
  private static final int NOTIFICATION_ID = 3000;
  private final BroadcastReceiver broadcastReceiver;
  private ChannelCapture.Clipboard clipboard;
  private final AirshipConfigOptions configOptions;
  private final Context context;
  Executor executor = Executors.newSingleThreadExecutor();
  private final cj notificationManager;
  private final PushManager pushManager;
  
  ChannelCapture(Context paramContext, AirshipConfigOptions paramAirshipConfigOptions, PushManager paramPushManager)
  {
    this(paramContext, paramAirshipConfigOptions, paramPushManager, cj.a(paramContext));
  }
  
  ChannelCapture(Context paramContext, AirshipConfigOptions paramAirshipConfigOptions, PushManager paramPushManager, cj paramcj)
  {
    context = paramContext.getApplicationContext();
    configOptions = paramAirshipConfigOptions;
    pushManager = paramPushManager;
    notificationManager = paramcj;
    broadcastReceiver = new BroadcastReceiver()
    {
      public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
      {
        executor.execute(new Runnable()
        {
          public void run()
          {
            ChannelCapture.this.checkClipboard();
          }
        });
      }
    };
  }
  
  private String base64Decode(String paramString)
  {
    if (UAStringUtil.isEmpty(paramString)) {
      return null;
    }
    try
    {
      String str = new String(Base64.decode(paramString, 0), "UTF-8");
      return str;
    }
    catch (UnsupportedEncodingException paramString)
    {
      Logger.error("ClipBoardMagic - Unsupported encoding.", paramString);
      return null;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      Logger.debug("ClipBoardMagic - Failed to decode string " + paramString, localIllegalArgumentException);
    }
    return null;
  }
  
  private void checkClipboard()
  {
    String str2 = pushManager.getChannelId();
    if (UAStringUtil.isEmpty(str2)) {}
    String str3;
    String str4;
    do
    {
      return;
      str3 = base64Decode(clipboard.getText());
      str4 = generateToken();
    } while ((UAStringUtil.isEmpty(str3)) || (!str3.startsWith(str4)));
    String str1 = null;
    if (str3.length() > str4.length()) {
      str1 = str3.replace(str4, "https://go.urbanairship.com/").replace("CHANNEL", str2).trim();
    }
    clipboard.clear();
    displayNotification(str2, str1);
  }
  
  private PendingIntent createCopyChannelPendingIntent(String paramString)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("text", paramString);
    localHashMap.put("label", "Urban Airship Channel");
    paramString = new HashMap();
    paramString.put("clipboard_action", localHashMap);
    paramString = new Intent(context, CoreReceiver.class).setAction("com.urbanairship.ACTION_CHANNEL_CAPTURE").addCategory(UUID.randomUUID().toString()).putExtra("com.urbanairship.EXTRA_NOTIFICATION_ID", 3000).putExtra("com.urbanairship.EXTRA_ACTIONS", JsonValue.wrap(paramString, null).toString());
    return PendingIntent.getBroadcast(context, 3000, paramString, 0);
  }
  
  private PendingIntent createOpenUrlPendingIntent(String paramString)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("open_external_url_action", paramString);
    paramString = new Intent(context, CoreActivity.class).setAction("com.urbanairship.ACTION_CHANNEL_CAPTURE").addCategory(UUID.randomUUID().toString()).putExtra("com.urbanairship.EXTRA_NOTIFICATION_ID", 3000).putExtra("com.urbanairship.EXTRA_ACTIONS", JsonValue.wrap(localHashMap, null).toString());
    return PendingIntent.getActivity(context, 3000, paramString, 0);
  }
  
  private void displayNotification(String paramString1, String paramString2)
  {
    PendingIntent localPendingIntent = createCopyChannelPendingIntent(paramString1);
    Object localObject;
    if (paramString2 == null)
    {
      paramString2 = null;
      localObject = context.getPackageManager().getApplicationLabel(context.getApplicationInfo()).toString();
      localObject = new bf(context).a(true).b(true).a((CharSequence)localObject).b(paramString1).a(R.drawable.ic_urbanairship_notification).d(context.getResources().getColor(R.color.urban_airship_blue)).b(-1).c(2).d(context.getString(R.string.ua_channel_notification_ticker));
      if (paramString2 != null) {
        break label200;
      }
    }
    label200:
    for (paramString1 = localPendingIntent;; paramString1 = paramString2)
    {
      paramString1 = ((bf)localObject).a(paramString1).a(new ba(R.drawable.ic_notification_button_copy, context.getString(R.string.ua_notification_button_copy), localPendingIntent));
      if (paramString2 != null) {
        paramString1.a(new ba(R.drawable.ic_notification_button_open_browser, context.getString(R.string.ua_notification_button_save), paramString2));
      }
      notificationManager.a(3000, paramString1.b());
      return;
      paramString2 = createOpenUrlPendingIntent(paramString2);
      break;
    }
  }
  
  private String generateToken()
  {
    byte[] arrayOfByte1 = configOptions.getAppKey().getBytes();
    byte[] arrayOfByte2 = configOptions.getAppSecret().getBytes();
    StringBuilder localStringBuilder = new StringBuilder();
    int i = 0;
    while (i < arrayOfByte1.length)
    {
      localStringBuilder.append(String.format("%02x", new Object[] { Byte.valueOf((byte)(arrayOfByte1[i] ^ arrayOfByte2[(i % arrayOfByte2.length)])) }));
      i += 1;
    }
    return localStringBuilder.toString();
  }
  
  protected void init()
  {
    if (!configOptions.channelCaptureEnabled) {
      return;
    }
    new Handler(Looper.getMainLooper()).post(new Runnable()
    {
      public void run()
      {
        ChannelCapture localChannelCapture = ChannelCapture.this;
        if (Build.VERSION.SDK_INT >= 11) {}
        for (Object localObject = new ChannelCapture.ClipboardHoneyComb(ChannelCapture.this);; localObject = new ChannelCapture.ClipboardFroyo(ChannelCapture.this))
        {
          ChannelCapture.access$102(localChannelCapture, (ChannelCapture.Clipboard)localObject);
          localObject = new IntentFilter();
          ((IntentFilter)localObject).addAction("com.urbanairship.analytics.APP_FOREGROUND");
          o.a(context).a(broadcastReceiver, (IntentFilter)localObject);
          return;
        }
      }
    });
  }
  
  protected void tearDown()
  {
    o.a(context).a(broadcastReceiver);
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.ChannelCapture
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */