package com.urbanairship.push.notifications;

import android.app.Notification;
import android.content.Context;
import android.graphics.Bitmap;
import android.support.v4.app.ba;
import android.support.v4.app.bd;
import android.support.v4.app.be;
import android.support.v4.app.bf;
import android.support.v4.app.bh;
import android.support.v4.app.bi;
import android.support.v4.app.bs;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.Display;
import android.view.WindowManager;
import com.urbanairship.Logger;
import com.urbanairship.UAirship;
import com.urbanairship.push.PushManager;
import com.urbanairship.push.PushMessage;
import com.urbanairship.util.BitmapUtils;
import com.urbanairship.util.UAStringUtil;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class NotificationFactory
{
  static final String ALERT_KEY = "alert";
  static final String BACKGROUND_IMAGE_KEY = "background_image";
  private static final int BIG_IMAGE_HEIGHT_DP = 240;
  private static final double BIG_IMAGE_SCREEN_WIDTH_PERCENT = 0.75D;
  static final String BIG_PICTURE_KEY = "big_picture";
  static final String BIG_TEXT_KEY = "big_text";
  static final String EXTRA_PAGES_KEY = "extra_pages";
  static final String INBOX_KEY = "inbox";
  static final String INTERACTIVE_ACTIONS_KEY = "interactive_actions";
  static final String INTERACTIVE_TYPE_KEY = "interactive_type";
  static final String LINES_KEY = "lines";
  static final int NOTIFICATION_DEFAULTS = 3;
  static final String SUMMARY_KEY = "summary";
  static final String TITLE_KEY = "title";
  static final String TYPE_KEY = "type";
  private final Context context;
  
  public NotificationFactory(Context paramContext)
  {
    context = paramContext.getApplicationContext();
  }
  
  private bd createBigPictureStyle(JSONObject paramJSONObject)
    throws IOException
  {
    bd localbd = new bd();
    String str1 = paramJSONObject.optString("title");
    String str2 = paramJSONObject.optString("summary");
    try
    {
      localbd.a(fetchBigImage(new URL(paramJSONObject.optString("big_picture"))));
      if (!UAStringUtil.isEmpty(str1)) {
        localbd.a(str1);
      }
      if (!UAStringUtil.isEmpty(str2)) {
        localbd.b(str2);
      }
      return localbd;
    }
    catch (MalformedURLException paramJSONObject)
    {
      Logger.error("Malformed big picture URL.", paramJSONObject);
    }
    return null;
  }
  
  private bs createBigTextStyle(JSONObject paramJSONObject)
  {
    be localbe = new be();
    String str1 = paramJSONObject.optString("title");
    String str2 = paramJSONObject.optString("summary");
    paramJSONObject = paramJSONObject.optString("big_text");
    if (!UAStringUtil.isEmpty(paramJSONObject)) {
      localbe.c(paramJSONObject);
    }
    if (!UAStringUtil.isEmpty(str1)) {
      localbe.a(str1);
    }
    if (!UAStringUtil.isEmpty(str2)) {
      localbe.b(str2);
    }
    return localbe;
  }
  
  private bi createInboxStyle(JSONObject paramJSONObject)
  {
    bi localbi = new bi();
    String str1 = paramJSONObject.optString("title");
    String str2 = paramJSONObject.optString("summary");
    paramJSONObject = paramJSONObject.optJSONArray("lines");
    if (paramJSONObject != null)
    {
      int i = 0;
      while (i < paramJSONObject.length())
      {
        String str3 = paramJSONObject.optString(i);
        if (str3 != null) {
          localbi.c(str3);
        }
        i += 1;
      }
    }
    if (!UAStringUtil.isEmpty(str1)) {
      localbi.a(str1);
    }
    if (!UAStringUtil.isEmpty(str2)) {
      localbi.b(str2);
    }
    return localbi;
  }
  
  private Notification createWearPage(JSONObject paramJSONObject)
  {
    be localbe = new be();
    String str = paramJSONObject.optString("title");
    if (!UAStringUtil.isEmpty(str)) {
      localbe.a(str);
    }
    paramJSONObject = paramJSONObject.optString("alert");
    if (!UAStringUtil.isEmpty(paramJSONObject)) {
      localbe.c(paramJSONObject);
    }
    return new bf(context).a(true).a(localbe).b();
  }
  
  private Bitmap fetchBigImage(URL paramURL)
    throws IOException
  {
    if (paramURL == null) {
      return null;
    }
    Logger.info("Fetching notification image at URL: " + paramURL);
    WindowManager localWindowManager = (WindowManager)context.getSystemService("window");
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    localWindowManager.getDefaultDisplay().getMetrics(localDisplayMetrics);
    int i = (int)(Math.max(widthPixels, heightPixels) * 0.75D);
    int j = (int)TypedValue.applyDimension(1, 240.0F, localDisplayMetrics);
    return BitmapUtils.fetchScaledBitmap(context, paramURL, i, j);
  }
  
  public abstract Notification createNotification(PushMessage paramPushMessage, int paramInt);
  
  protected final bh createNotificationActionsExtender(PushMessage paramPushMessage, int paramInt)
  {
    NotificationActionButtonGroup localNotificationActionButtonGroup = UAirship.shared().getPushManager().getNotificationActionGroup(paramPushMessage.getInteractiveNotificationType());
    final ArrayList localArrayList = new ArrayList();
    if (localNotificationActionButtonGroup != null) {
      localArrayList.addAll(localNotificationActionButtonGroup.createAndroidActions(getContext(), paramPushMessage, paramInt, paramPushMessage.getInteractiveActionsPayload()));
    }
    new bh()
    {
      public bf extend(bf paramAnonymousbf)
      {
        Iterator localIterator = localArrayList.iterator();
        while (localIterator.hasNext()) {
          paramAnonymousbf.a((ba)localIterator.next());
        }
        return paramAnonymousbf;
      }
    };
  }
  
  protected final bs createNotificationStyle(PushMessage paramPushMessage)
    throws IOException
  {
    paramPushMessage = paramPushMessage.getStylePayload();
    if (paramPushMessage == null) {
      return null;
    }
    for (;;)
    {
      String str;
      int i;
      try
      {
        paramPushMessage = new JSONObject(paramPushMessage);
        str = paramPushMessage.optString("type");
        i = -1;
        switch (str.hashCode())
        {
        default: 
          switch (i)
          {
          default: 
            return null;
          }
          break;
        }
      }
      catch (JSONException paramPushMessage)
      {
        Logger.error("Failed to parse notification style payload.", paramPushMessage);
        return null;
      }
      return createBigTextStyle(paramPushMessage);
      if (str.equals("big_text"))
      {
        i = 0;
        continue;
        if (str.equals("inbox"))
        {
          i = 1;
          continue;
          if (str.equals("big_picture")) {
            i = 2;
          }
        }
      }
    }
    return createInboxStyle(paramPushMessage);
    return createBigPictureStyle(paramPushMessage);
  }
  
  protected final Notification createPublicVersionNotification(PushMessage paramPushMessage, int paramInt)
  {
    if (!UAStringUtil.isEmpty(paramPushMessage.getPublicNotificationPayload())) {
      try
      {
        paramPushMessage = new JSONObject(paramPushMessage.getPublicNotificationPayload());
        bf localbf = new bf(getContext()).a(paramPushMessage.optString("title")).b(paramPushMessage.optString("alert")).a(true).a(paramInt);
        if (paramPushMessage.has("summary")) {
          localbf.c(paramPushMessage.optString("summary"));
        }
        paramPushMessage = localbf.b();
        return paramPushMessage;
      }
      catch (JSONException paramPushMessage)
      {
        Logger.error("Failed to parse public notification.", paramPushMessage);
      }
    }
    return null;
  }
  
  /* Error */
  protected final android.support.v4.app.bt createWearableExtender(PushMessage paramPushMessage, int paramInt)
    throws IOException
  {
    // Byte code:
    //   0: new 332	android/support/v4/app/bt
    //   3: dup
    //   4: invokespecial 333	android/support/v4/app/bt:<init>	()V
    //   7: astore_3
    //   8: aload_1
    //   9: invokevirtual 336	com/urbanairship/push/PushMessage:getWearablePayload	()Ljava/lang/String;
    //   12: astore 4
    //   14: aload 4
    //   16: ifnonnull +5 -> 21
    //   19: aload_3
    //   20: areturn
    //   21: new 79	org/json/JSONObject
    //   24: dup
    //   25: aload 4
    //   27: invokespecial 292	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   30: astore 4
    //   32: aload 4
    //   34: ldc 38
    //   36: invokevirtual 83	org/json/JSONObject:optString	(Ljava/lang/String;)Ljava/lang/String;
    //   39: astore 6
    //   41: aload 4
    //   43: ldc 35
    //   45: aload_1
    //   46: invokevirtual 269	com/urbanairship/push/PushMessage:getInteractiveActionsPayload	()Ljava/lang/String;
    //   49: invokevirtual 339	org/json/JSONObject:optString	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   52: astore 5
    //   54: aload 6
    //   56: invokestatic 102	com/urbanairship/util/UAStringUtil:isEmpty	(Ljava/lang/String;)Z
    //   59: ifne +39 -> 98
    //   62: invokestatic 245	com/urbanairship/UAirship:shared	()Lcom/urbanairship/UAirship;
    //   65: invokevirtual 249	com/urbanairship/UAirship:getPushManager	()Lcom/urbanairship/push/PushManager;
    //   68: aload 6
    //   70: invokevirtual 260	com/urbanairship/push/PushManager:getNotificationActionGroup	(Ljava/lang/String;)Lcom/urbanairship/push/notifications/NotificationActionButtonGroup;
    //   73: astore 6
    //   75: aload 6
    //   77: ifnull +21 -> 98
    //   80: aload_3
    //   81: aload 6
    //   83: aload_0
    //   84: invokevirtual 266	com/urbanairship/push/notifications/NotificationFactory:getContext	()Landroid/content/Context;
    //   87: aload_1
    //   88: iload_2
    //   89: aload 5
    //   91: invokevirtual 275	com/urbanairship/push/notifications/NotificationActionButtonGroup:createAndroidActions	(Landroid/content/Context;Lcom/urbanairship/push/PushMessage;ILjava/lang/String;)Ljava/util/List;
    //   94: invokevirtual 342	android/support/v4/app/bt:a	(Ljava/util/List;)Landroid/support/v4/app/bt;
    //   97: pop
    //   98: aload 4
    //   100: ldc 13
    //   102: invokevirtual 83	org/json/JSONObject:optString	(Ljava/lang/String;)Ljava/lang/String;
    //   105: astore_1
    //   106: aload_1
    //   107: invokestatic 102	com/urbanairship/util/UAStringUtil:isEmpty	(Ljava/lang/String;)Z
    //   110: ifne +20 -> 130
    //   113: aload_3
    //   114: aload_0
    //   115: new 85	java/net/URL
    //   118: dup
    //   119: aload_1
    //   120: invokespecial 88	java/net/URL:<init>	(Ljava/lang/String;)V
    //   123: invokespecial 92	com/urbanairship/push/notifications/NotificationFactory:fetchBigImage	(Ljava/net/URL;)Landroid/graphics/Bitmap;
    //   126: invokevirtual 345	android/support/v4/app/bt:a	(Landroid/graphics/Bitmap;)Landroid/support/v4/app/bt;
    //   129: pop
    //   130: aload 4
    //   132: ldc 29
    //   134: invokevirtual 139	org/json/JSONObject:optJSONArray	(Ljava/lang/String;)Lorg/json/JSONArray;
    //   137: astore_1
    //   138: aload_1
    //   139: ifnull +67 -> 206
    //   142: iconst_0
    //   143: istore_2
    //   144: iload_2
    //   145: aload_1
    //   146: invokevirtual 145	org/json/JSONArray:length	()I
    //   149: if_icmpge +57 -> 206
    //   152: aload_1
    //   153: iload_2
    //   154: invokevirtual 349	org/json/JSONArray:optJSONObject	(I)Lorg/json/JSONObject;
    //   157: astore 4
    //   159: aload 4
    //   161: ifnonnull +31 -> 192
    //   164: iload_2
    //   165: iconst_1
    //   166: iadd
    //   167: istore_2
    //   168: goto -24 -> 144
    //   171: astore_1
    //   172: ldc_w 351
    //   175: aload_1
    //   176: invokestatic 116	com/urbanairship/Logger:error	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   179: aload_3
    //   180: areturn
    //   181: astore_1
    //   182: ldc_w 353
    //   185: aload_1
    //   186: invokestatic 116	com/urbanairship/Logger:error	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   189: goto -59 -> 130
    //   192: aload_3
    //   193: aload_0
    //   194: aload 4
    //   196: invokespecial 355	com/urbanairship/push/notifications/NotificationFactory:createWearPage	(Lorg/json/JSONObject;)Landroid/app/Notification;
    //   199: invokevirtual 358	android/support/v4/app/bt:a	(Landroid/app/Notification;)Landroid/support/v4/app/bt;
    //   202: pop
    //   203: goto -39 -> 164
    //   206: aload_3
    //   207: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	208	0	this	NotificationFactory
    //   0	208	1	paramPushMessage	PushMessage
    //   0	208	2	paramInt	int
    //   7	200	3	localbt	android.support.v4.app.bt
    //   12	183	4	localObject1	Object
    //   52	38	5	str	String
    //   39	43	6	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   21	32	171	org/json/JSONException
    //   113	130	181	java/net/MalformedURLException
  }
  
  public Context getContext()
  {
    return context;
  }
  
  public abstract int getNextId(PushMessage paramPushMessage);
}

/* Location:
 * Qualified Name:     com.urbanairship.push.notifications.NotificationFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */