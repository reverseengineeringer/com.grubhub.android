package com.taplytics;

import com.taplytics.sdk.TaplyticsPushNotificationIntentListener;
import com.taplytics.sdk.TaplyticsPushNotificationListener;
import com.taplytics.sdk.TaplyticsPushOpenedListener;
import com.taplytics.sdk.TaplyticsPushTokenListener;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public class gn
{
  public String a = null;
  private Boolean b = Boolean.valueOf(false);
  private List<TaplyticsPushNotificationListener> c = null;
  private TaplyticsPushOpenedListener d = null;
  private TaplyticsPushTokenListener e = null;
  private TaplyticsPushNotificationIntentListener f = null;
  
  /* Error */
  public void a(android.os.Bundle paramBundle, android.app.IntentService paramIntentService)
    throws JSONException
  {
    // Byte code:
    //   0: getstatic 56	com/taplytics/kb:buffalo	Lcom/taplytics/kb;
    //   3: invokestatic 61	com/taplytics/iz:a	(Lcom/taplytics/kb;)Z
    //   6: ifeq +4 -> 10
    //   9: return
    //   10: aload_1
    //   11: ldc 63
    //   13: invokevirtual 69	android/os/Bundle:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   16: astore 12
    //   18: aconst_null
    //   19: astore 10
    //   21: new 71	org/json/JSONObject
    //   24: dup
    //   25: invokespecial 72	org/json/JSONObject:<init>	()V
    //   28: astore 9
    //   30: aload_1
    //   31: ldc 74
    //   33: invokevirtual 69	android/os/Bundle:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   36: ifnull +711 -> 747
    //   39: new 71	org/json/JSONObject
    //   42: dup
    //   43: aload_1
    //   44: ldc 74
    //   46: invokevirtual 69	android/os/Bundle:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   49: invokespecial 77	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   52: astore 9
    //   54: aload_0
    //   55: aload 9
    //   57: invokevirtual 80	com/taplytics/gn:b	(Lorg/json/JSONObject;)V
    //   60: aload_2
    //   61: ldc 82
    //   63: invokevirtual 88	android/app/IntentService:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   66: checkcast 90	android/app/NotificationManager
    //   69: astore 13
    //   71: invokestatic 95	com/taplytics/fy:e	()Lcom/taplytics/fy;
    //   74: invokevirtual 99	com/taplytics/fy:p	()Landroid/content/Context;
    //   77: invokevirtual 105	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   80: astore 14
    //   82: invokestatic 110	com/taplytics/ck:c	()Z
    //   85: ifeq +8 -> 93
    //   88: ldc 112
    //   90: invokestatic 114	com/taplytics/ck:a	(Ljava/lang/String;)V
    //   93: invokestatic 95	com/taplytics/fy:e	()Lcom/taplytics/fy;
    //   96: invokevirtual 99	com/taplytics/fy:p	()Landroid/content/Context;
    //   99: astore 15
    //   101: aload 15
    //   103: ifnonnull +23 -> 126
    //   106: invokestatic 110	com/taplytics/ck:c	()Z
    //   109: ifeq -100 -> 9
    //   112: ldc 116
    //   114: invokestatic 114	com/taplytics/ck:a	(Ljava/lang/String;)V
    //   117: return
    //   118: astore_1
    //   119: ldc 118
    //   121: aload_1
    //   122: invokestatic 121	com/taplytics/ck:b	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   125: return
    //   126: aload 15
    //   128: invokevirtual 125	android/content/Context:getPackageName	()Ljava/lang/String;
    //   131: astore 16
    //   133: aload 16
    //   135: ifnonnull +15 -> 150
    //   138: invokestatic 110	com/taplytics/ck:c	()Z
    //   141: ifeq -132 -> 9
    //   144: ldc 127
    //   146: invokestatic 114	com/taplytics/ck:a	(Ljava/lang/String;)V
    //   149: return
    //   150: aconst_null
    //   151: astore 11
    //   153: aconst_null
    //   154: astore 7
    //   156: aload 9
    //   158: ldc -127
    //   160: invokevirtual 133	org/json/JSONObject:has	(Ljava/lang/String;)Z
    //   163: istore 6
    //   165: iload 6
    //   167: ifeq +183 -> 350
    //   170: aload 11
    //   172: astore 8
    //   174: aload 9
    //   176: ldc -127
    //   178: invokevirtual 134	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   181: astore 17
    //   183: aload 11
    //   185: astore 8
    //   187: invokestatic 95	com/taplytics/fy:e	()Lcom/taplytics/fy;
    //   190: invokevirtual 138	com/taplytics/fy:q	()Landroid/app/Activity;
    //   193: ifnull +27 -> 220
    //   196: aload 11
    //   198: astore 8
    //   200: new 140	android/content/Intent
    //   203: dup
    //   204: invokestatic 95	com/taplytics/fy:e	()Lcom/taplytics/fy;
    //   207: invokevirtual 138	com/taplytics/fy:q	()Landroid/app/Activity;
    //   210: aload 17
    //   212: invokestatic 146	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   215: invokespecial 149	android/content/Intent:<init>	(Landroid/content/Context;Ljava/lang/Class;)V
    //   218: astore 7
    //   220: aload 7
    //   222: astore 8
    //   224: invokestatic 110	com/taplytics/ck:c	()Z
    //   227: ifeq +12 -> 239
    //   230: aload 7
    //   232: astore 8
    //   234: ldc -105
    //   236: invokestatic 114	com/taplytics/ck:a	(Ljava/lang/String;)V
    //   239: aload 9
    //   241: ldc -103
    //   243: invokevirtual 133	org/json/JSONObject:has	(Ljava/lang/String;)Z
    //   246: istore 6
    //   248: aload 10
    //   250: astore 8
    //   252: iload 6
    //   254: ifeq +12 -> 266
    //   257: aload 9
    //   259: ldc -103
    //   261: invokevirtual 134	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   264: astore 8
    //   266: aload 9
    //   268: ldc -101
    //   270: invokevirtual 133	org/json/JSONObject:has	(Ljava/lang/String;)Z
    //   273: istore 6
    //   275: iload 6
    //   277: ifeq +473 -> 750
    //   280: aload 9
    //   282: ldc -101
    //   284: invokevirtual 159	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   287: istore_3
    //   288: aload 7
    //   290: ifnonnull +465 -> 755
    //   293: aload 14
    //   295: aload 16
    //   297: invokevirtual 165	android/content/pm/PackageManager:getLaunchIntentForPackage	(Ljava/lang/String;)Landroid/content/Intent;
    //   300: astore 9
    //   302: invokestatic 110	com/taplytics/ck:c	()Z
    //   305: ifeq +8 -> 313
    //   308: ldc -89
    //   310: invokestatic 114	com/taplytics/ck:a	(Ljava/lang/String;)V
    //   313: aload 9
    //   315: astore 7
    //   317: aload 9
    //   319: ifnonnull +78 -> 397
    //   322: invokestatic 110	com/taplytics/ck:c	()Z
    //   325: ifeq -316 -> 9
    //   328: ldc -87
    //   330: invokestatic 114	com/taplytics/ck:a	(Ljava/lang/String;)V
    //   333: return
    //   334: astore 7
    //   336: ldc -85
    //   338: aload 7
    //   340: invokestatic 173	com/taplytics/ck:a	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   343: aload 8
    //   345: astore 7
    //   347: goto -108 -> 239
    //   350: aload_0
    //   351: getfield 37	com/taplytics/gn:f	Lcom/taplytics/sdk/TaplyticsPushNotificationIntentListener;
    //   354: ifnull +387 -> 741
    //   357: aload_0
    //   358: getfield 37	com/taplytics/gn:f	Lcom/taplytics/sdk/TaplyticsPushNotificationIntentListener;
    //   361: aload 9
    //   363: invokeinterface 179 2 0
    //   368: astore 7
    //   370: goto -131 -> 239
    //   373: astore 8
    //   375: ldc -75
    //   377: invokestatic 183	com/taplytics/ck:c	(Ljava/lang/String;)V
    //   380: aload 10
    //   382: astore 8
    //   384: goto -118 -> 266
    //   387: astore 9
    //   389: ldc -75
    //   391: invokestatic 183	com/taplytics/ck:c	(Ljava/lang/String;)V
    //   394: goto +356 -> 750
    //   397: aload_1
    //   398: ldc 74
    //   400: invokevirtual 69	android/os/Bundle:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   403: ifnull +17 -> 420
    //   406: aload 7
    //   408: ldc 74
    //   410: aload_1
    //   411: ldc 74
    //   413: invokevirtual 69	android/os/Bundle:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   416: invokevirtual 187	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   419: pop
    //   420: new 189	java/util/Random
    //   423: dup
    //   424: invokespecial 190	java/util/Random:<init>	()V
    //   427: invokevirtual 194	java/util/Random:nextInt	()I
    //   430: istore 5
    //   432: aload 7
    //   434: ldc -61
    //   436: invokevirtual 199	android/content/Intent:setFlags	(I)Landroid/content/Intent;
    //   439: pop
    //   440: aload 7
    //   442: ldc -55
    //   444: iconst_1
    //   445: invokevirtual 204	android/content/Intent:putExtra	(Ljava/lang/String;Z)Landroid/content/Intent;
    //   448: pop
    //   449: aload 7
    //   451: ldc -50
    //   453: aload_1
    //   454: ldc -50
    //   456: invokevirtual 69	android/os/Bundle:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   459: invokevirtual 187	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   462: pop
    //   463: aload_2
    //   464: iload 5
    //   466: aload 7
    //   468: ldc -49
    //   470: invokestatic 213	android/app/PendingIntent:getActivity	(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    //   473: astore 7
    //   475: aload 14
    //   477: invokestatic 95	com/taplytics/fy:e	()Lcom/taplytics/fy;
    //   480: invokevirtual 99	com/taplytics/fy:p	()Landroid/content/Context;
    //   483: invokevirtual 217	android/content/Context:getApplicationInfo	()Landroid/content/pm/ApplicationInfo;
    //   486: invokevirtual 221	android/content/pm/PackageManager:getApplicationIcon	(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    //   489: astore 9
    //   491: aload 9
    //   493: invokevirtual 226	android/graphics/drawable/Drawable:getIntrinsicWidth	()I
    //   496: aload 9
    //   498: invokevirtual 229	android/graphics/drawable/Drawable:getIntrinsicHeight	()I
    //   501: getstatic 235	android/graphics/Bitmap$Config:ARGB_8888	Landroid/graphics/Bitmap$Config;
    //   504: invokestatic 241	android/graphics/Bitmap:createBitmap	(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    //   507: astore_1
    //   508: new 243	android/graphics/Canvas
    //   511: dup
    //   512: aload_1
    //   513: invokespecial 246	android/graphics/Canvas:<init>	(Landroid/graphics/Bitmap;)V
    //   516: astore 10
    //   518: aload 9
    //   520: iconst_0
    //   521: iconst_0
    //   522: aload 10
    //   524: invokevirtual 249	android/graphics/Canvas:getWidth	()I
    //   527: aload 10
    //   529: invokevirtual 252	android/graphics/Canvas:getHeight	()I
    //   532: invokevirtual 256	android/graphics/drawable/Drawable:setBounds	(IIII)V
    //   535: aload 9
    //   537: aload 10
    //   539: invokevirtual 260	android/graphics/drawable/Drawable:draw	(Landroid/graphics/Canvas;)V
    //   542: aload 14
    //   544: invokestatic 95	com/taplytics/fy:e	()Lcom/taplytics/fy;
    //   547: invokevirtual 99	com/taplytics/fy:p	()Landroid/content/Context;
    //   550: invokevirtual 125	android/content/Context:getPackageName	()Ljava/lang/String;
    //   553: sipush 128
    //   556: invokevirtual 263	android/content/pm/PackageManager:getApplicationInfo	(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    //   559: astore 9
    //   561: aload 9
    //   563: ifnull +162 -> 725
    //   566: aload 9
    //   568: getfield 269	android/content/pm/ApplicationInfo:metaData	Landroid/os/Bundle;
    //   571: ifnull +154 -> 725
    //   574: aload 9
    //   576: getfield 269	android/content/pm/ApplicationInfo:metaData	Landroid/os/Bundle;
    //   579: ldc_w 271
    //   582: invokevirtual 272	android/os/Bundle:getInt	(Ljava/lang/String;)I
    //   585: ifeq +140 -> 725
    //   588: aload 9
    //   590: getfield 269	android/content/pm/ApplicationInfo:metaData	Landroid/os/Bundle;
    //   593: ldc_w 271
    //   596: invokevirtual 272	android/os/Bundle:getInt	(Ljava/lang/String;)I
    //   599: istore 4
    //   601: invokestatic 110	com/taplytics/ck:c	()Z
    //   604: ifeq +9 -> 613
    //   607: ldc_w 274
    //   610: invokestatic 114	com/taplytics/ck:a	(Ljava/lang/String;)V
    //   613: new 276	android/support/v4/app/bf
    //   616: dup
    //   617: aload_2
    //   618: invokespecial 279	android/support/v4/app/bf:<init>	(Landroid/content/Context;)V
    //   621: iconst_1
    //   622: invokevirtual 282	android/support/v4/app/bf:a	(Z)Landroid/support/v4/app/bf;
    //   625: aload_1
    //   626: invokevirtual 285	android/support/v4/app/bf:a	(Landroid/graphics/Bitmap;)Landroid/support/v4/app/bf;
    //   629: iload 4
    //   631: invokevirtual 288	android/support/v4/app/bf:a	(I)Landroid/support/v4/app/bf;
    //   634: aload 15
    //   636: invokevirtual 217	android/content/Context:getApplicationInfo	()Landroid/content/pm/ApplicationInfo;
    //   639: aload 14
    //   641: invokevirtual 292	android/content/pm/ApplicationInfo:loadLabel	(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    //   644: invokevirtual 295	android/support/v4/app/bf:a	(Ljava/lang/CharSequence;)Landroid/support/v4/app/bf;
    //   647: new 297	android/support/v4/app/be
    //   650: dup
    //   651: invokespecial 298	android/support/v4/app/be:<init>	()V
    //   654: aload 12
    //   656: invokevirtual 301	android/support/v4/app/be:c	(Ljava/lang/CharSequence;)Landroid/support/v4/app/be;
    //   659: invokevirtual 304	android/support/v4/app/bf:a	(Landroid/support/v4/app/bs;)Landroid/support/v4/app/bf;
    //   662: aload 12
    //   664: invokevirtual 306	android/support/v4/app/bf:b	(Ljava/lang/CharSequence;)Landroid/support/v4/app/bf;
    //   667: iconst_m1
    //   668: invokevirtual 308	android/support/v4/app/bf:b	(I)Landroid/support/v4/app/bf;
    //   671: iload_3
    //   672: invokevirtual 310	android/support/v4/app/bf:c	(I)Landroid/support/v4/app/bf;
    //   675: astore_1
    //   676: aload 8
    //   678: ifnull +10 -> 688
    //   681: aload_1
    //   682: aload 8
    //   684: invokevirtual 295	android/support/v4/app/bf:a	(Ljava/lang/CharSequence;)Landroid/support/v4/app/bf;
    //   687: pop
    //   688: aload_1
    //   689: aload 7
    //   691: invokevirtual 313	android/support/v4/app/bf:a	(Landroid/app/PendingIntent;)Landroid/support/v4/app/bf;
    //   694: pop
    //   695: aload 13
    //   697: iload 5
    //   699: aload_1
    //   700: invokevirtual 316	android/support/v4/app/bf:b	()Landroid/app/Notification;
    //   703: invokevirtual 320	android/app/NotificationManager:notify	(ILandroid/app/Notification;)V
    //   706: return
    //   707: astore_1
    //   708: aload 14
    //   710: aload 16
    //   712: invokevirtual 323	android/content/pm/PackageManager:getApplicationIcon	(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    //   715: checkcast 325	android/graphics/drawable/BitmapDrawable
    //   718: invokevirtual 329	android/graphics/drawable/BitmapDrawable:getBitmap	()Landroid/graphics/Bitmap;
    //   721: astore_1
    //   722: goto -180 -> 542
    //   725: aload 14
    //   727: aload 16
    //   729: iconst_0
    //   730: invokevirtual 263	android/content/pm/PackageManager:getApplicationInfo	(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    //   733: getfield 333	android/content/pm/ApplicationInfo:icon	I
    //   736: istore 4
    //   738: goto -137 -> 601
    //   741: aconst_null
    //   742: astore 7
    //   744: goto -505 -> 239
    //   747: goto -693 -> 54
    //   750: iconst_0
    //   751: istore_3
    //   752: goto -464 -> 288
    //   755: goto -358 -> 397
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	758	0	this	gn
    //   0	758	1	paramBundle	android.os.Bundle
    //   0	758	2	paramIntentService	android.app.IntentService
    //   287	465	3	i	int
    //   599	138	4	j	int
    //   430	268	5	k	int
    //   163	113	6	bool	boolean
    //   154	162	7	localObject1	Object
    //   334	5	7	localException1	Exception
    //   345	398	7	localObject2	Object
    //   172	172	8	localObject3	Object
    //   373	1	8	localException2	Exception
    //   382	301	8	localCanvas1	android.graphics.Canvas
    //   28	334	9	localObject4	Object
    //   387	1	9	localException3	Exception
    //   489	100	9	localObject5	Object
    //   19	519	10	localCanvas2	android.graphics.Canvas
    //   151	46	11	localObject6	Object
    //   16	647	12	str1	String
    //   69	627	13	localNotificationManager	android.app.NotificationManager
    //   80	646	14	localPackageManager	android.content.pm.PackageManager
    //   99	536	15	localContext	android.content.Context
    //   131	597	16	str2	String
    //   181	30	17	str3	String
    // Exception table:
    //   from	to	target	type
    //   71	93	118	java/lang/Exception
    //   93	101	118	java/lang/Exception
    //   106	117	118	java/lang/Exception
    //   126	133	118	java/lang/Exception
    //   138	149	118	java/lang/Exception
    //   156	165	118	java/lang/Exception
    //   239	248	118	java/lang/Exception
    //   266	275	118	java/lang/Exception
    //   293	313	118	java/lang/Exception
    //   322	333	118	java/lang/Exception
    //   336	343	118	java/lang/Exception
    //   350	370	118	java/lang/Exception
    //   375	380	118	java/lang/Exception
    //   389	394	118	java/lang/Exception
    //   397	420	118	java/lang/Exception
    //   420	475	118	java/lang/Exception
    //   542	561	118	java/lang/Exception
    //   566	601	118	java/lang/Exception
    //   601	613	118	java/lang/Exception
    //   613	676	118	java/lang/Exception
    //   681	688	118	java/lang/Exception
    //   688	706	118	java/lang/Exception
    //   708	722	118	java/lang/Exception
    //   725	738	118	java/lang/Exception
    //   174	183	334	java/lang/Exception
    //   187	196	334	java/lang/Exception
    //   200	220	334	java/lang/Exception
    //   224	230	334	java/lang/Exception
    //   234	239	334	java/lang/Exception
    //   257	266	373	java/lang/Exception
    //   280	288	387	java/lang/Exception
    //   475	542	707	java/lang/Exception
  }
  
  public void a(TaplyticsPushNotificationIntentListener paramTaplyticsPushNotificationIntentListener)
  {
    if (paramTaplyticsPushNotificationIntentListener != null) {
      f = paramTaplyticsPushNotificationIntentListener;
    }
  }
  
  public void a(TaplyticsPushNotificationListener paramTaplyticsPushNotificationListener)
  {
    if ((c != null) && (!c.contains(paramTaplyticsPushNotificationListener))) {
      c.add(paramTaplyticsPushNotificationListener);
    }
  }
  
  public void a(TaplyticsPushOpenedListener paramTaplyticsPushOpenedListener)
  {
    d = paramTaplyticsPushOpenedListener;
  }
  
  public void a(TaplyticsPushTokenListener paramTaplyticsPushTokenListener)
  {
    e = paramTaplyticsPushTokenListener;
    if ((a != null) && (e != null)) {
      e.pushTokenReceived(a);
    }
  }
  
  public void a(JSONObject paramJSONObject)
  {
    Object localObject2 = null;
    if (paramJSONObject != null) {
      for (;;)
      {
        try
        {
          if (paramJSONObject.length() == 0) {
            break;
          }
          if (paramJSONObject == JSONObject.NULL) {
            return;
          }
          JSONObject localJSONObject = new JSONObject();
          if (ck.c()) {
            ck.a("Creating params");
          }
          eo localeo = fy.e().k();
          if (localeo == null) {
            break;
          }
          localJSONObject.put("ad", fy.e().m().d().get("id"));
          if (localeo.c() != null)
          {
            localObject1 = localeo.c().optString("_id");
            if (localObject1 != null) {
              localJSONObject.put("pid", localObject1);
            }
            if (fy.e().f() != null) {
              localJSONObject.put("t", fy.e().f());
            }
            if (localeo.j() == null) {
              break label345;
            }
            localObject1 = localeo.j().optString("_id");
            if (localObject1 != null) {
              localJSONObject.put("auid", localObject1);
            }
            localObject1 = localObject2;
            if (localeo.b() != null) {
              localObject1 = localeo.b();
            }
            if (localObject1 != null) {
              localJSONObject.put("sid", localObject1);
            }
            if (ck.c())
            {
              ck.a("Posting GCM Token: " + paramJSONObject.optString("token"));
              ck.a("Posting GCM Token, environment: " + paramJSONObject.optString("env"));
            }
            localJSONObject.put("pt", paramJSONObject.optString("token"));
            localJSONObject.put("env", paramJSONObject.optString("env"));
            localJSONObject.put("os", "Android");
            fy.e().l().d(localJSONObject, new go(this));
            return;
          }
        }
        catch (JSONException paramJSONObject)
        {
          ck.b("Posting GCM Token", paramJSONObject);
          return;
        }
        Object localObject1 = null;
        continue;
        label345:
        localObject1 = null;
      }
    }
  }
  
  public void a(boolean paramBoolean)
  {
    Object localObject1 = null;
    if (((b.booleanValue()) && (!paramBoolean)) || (!fy.e().j()) || (iz.a(kb.buffalo))) {}
    Object localObject2;
    do
    {
      do
      {
        for (;;)
        {
          return;
          try
          {
            if (fy.e().k() != null) {
              localObject1 = fy.e().k().c();
            }
            if (localObject1 != null)
            {
              localObject1 = ((JSONObject)localObject1).optJSONObject("credentials");
              if (localObject1 == null)
              {
                if (!ck.c()) {
                  continue;
                }
                ck.a("Project does not have GCM credentials");
              }
            }
          }
          catch (Exception localException)
          {
            ck.b("Getting GCM senderID", localException);
            return;
          }
        }
        Object localObject3 = localException.optJSONObject("gcm");
        if (localObject3 != null)
        {
          localObject3 = ((JSONObject)localObject3).getString("gcmSenderId");
          if (localObject3 != null)
          {
            if (ck.c()) {
              ck.a("Sender ID: " + (String)localObject3);
            }
            new gp(this, null).execute(new String[] { localObject3, "prod" });
          }
        }
        localObject2 = localException.optJSONObject("gcmSandbox");
      } while ((localObject2 == null) || (!fy.e().g()));
      localObject2 = ((JSONObject)localObject2).getString("gcmSenderId");
    } while (localObject2 == null);
    if (ck.c()) {
      ck.a("Sandbox Sender ID: " + (String)localObject2);
    }
    new gp(this, null).execute(new String[] { localObject2, "sandbox" });
  }
  
  public boolean a()
  {
    return b.booleanValue();
  }
  
  public void b()
  {
    f = null;
    if (c != null) {
      c.clear();
    }
    d = null;
  }
  
  public void b(TaplyticsPushNotificationListener paramTaplyticsPushNotificationListener)
  {
    if ((c != null) && (paramTaplyticsPushNotificationListener != null)) {
      c.remove(paramTaplyticsPushNotificationListener);
    }
  }
  
  public void b(JSONObject paramJSONObject)
    throws JSONException
  {
    if (c != null)
    {
      Iterator localIterator = c.iterator();
      while (localIterator.hasNext()) {
        ((TaplyticsPushNotificationListener)localIterator.next()).pushReceived(paramJSONObject);
      }
    }
  }
  
  public TaplyticsPushOpenedListener c()
  {
    return d;
  }
  
  public void d()
  {
    d = null;
  }
}

/* Location:
 * Qualified Name:     com.taplytics.gn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */