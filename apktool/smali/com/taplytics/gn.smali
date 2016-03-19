.class public Lcom/taplytics/gn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field private b:Ljava/lang/Boolean;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/taplytics/sdk/TaplyticsPushNotificationListener;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/taplytics/sdk/TaplyticsPushOpenedListener;

.field private e:Lcom/taplytics/sdk/TaplyticsPushTokenListener;

.field private f:Lcom/taplytics/sdk/TaplyticsPushNotificationIntentListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/taplytics/gn;->b:Ljava/lang/Boolean;

    .line 54
    iput-object v1, p0, Lcom/taplytics/gn;->c:Ljava/util/List;

    .line 56
    iput-object v1, p0, Lcom/taplytics/gn;->d:Lcom/taplytics/sdk/TaplyticsPushOpenedListener;

    .line 65
    iput-object v1, p0, Lcom/taplytics/gn;->e:Lcom/taplytics/sdk/TaplyticsPushTokenListener;

    .line 69
    iput-object v1, p0, Lcom/taplytics/gn;->f:Lcom/taplytics/sdk/TaplyticsPushNotificationIntentListener;

    .line 75
    iput-object v1, p0, Lcom/taplytics/gn;->a:Ljava/lang/String;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taplytics/gn;->c:Ljava/util/List;

    .line 73
    return-void
.end method

.method static synthetic a(Lcom/taplytics/gn;)Lcom/taplytics/sdk/TaplyticsPushTokenListener;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/taplytics/gn;->e:Lcom/taplytics/sdk/TaplyticsPushTokenListener;

    return-object v0
.end method

.method static synthetic a(Lcom/taplytics/gn;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/taplytics/gn;->b:Ljava/lang/Boolean;

    return-object p1
.end method


# virtual methods
.method public a(Landroid/os/Bundle;Landroid/app/IntentService;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 309
    sget-object v1, Lcom/taplytics/kb;->buffalo:Lcom/taplytics/kb;

    invoke-static {v1}, Lcom/taplytics/iz;->a(Lcom/taplytics/kb;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 453
    :cond_0
    :goto_0
    return-void

    .line 313
    :cond_1
    const-string v1, "message"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 314
    const/4 v6, 0x0

    .line 315
    const/4 v5, 0x0

    .line 316
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 317
    const-string v2, "custom_keys"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 318
    new-instance v1, Lorg/json/JSONObject;

    const-string v2, "custom_keys"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v2, v1

    .line 321
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/taplytics/gn;->b(Lorg/json/JSONObject;)V

    .line 323
    const-string v1, "notification"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/app/IntentService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 327
    :try_start_0
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taplytics/fy;->p()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 328
    invoke-static {}, Lcom/taplytics/ck;->c()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 329
    const-string v3, "Getting App Context and package name"

    invoke-static {v3}, Lcom/taplytics/ck;->a(Ljava/lang/String;)V

    .line 331
    :cond_2
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taplytics/fy;->p()Landroid/content/Context;

    move-result-object v9

    .line 332
    if-nez v9, :cond_3

    .line 333
    invoke-static {}, Lcom/taplytics/ck;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 334
    const-string v1, "App Context is null"

    invoke-static {v1}, Lcom/taplytics/ck;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 450
    :catch_0
    move-exception v1

    .line 451
    const-string v2, "Sending Push"

    invoke-static {v2, v1}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 338
    :cond_3
    :try_start_1
    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 339
    if-nez v10, :cond_4

    .line 340
    invoke-static {}, Lcom/taplytics/ck;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 341
    const-string v1, "package name is null"

    invoke-static {v1}, Lcom/taplytics/ck;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 346
    :cond_4
    const/4 v4, 0x0

    .line 348
    const-string v3, "tl_activity"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    if-eqz v3, :cond_9

    .line 350
    :try_start_2
    const-string v3, "tl_activity"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 351
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taplytics/fy;->q()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 352
    new-instance v3, Landroid/content/Intent;

    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v12

    invoke-virtual {v12}, Lcom/taplytics/fy;->q()Landroid/app/Activity;

    move-result-object v12

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    invoke-direct {v3, v12, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v4, v3

    .line 354
    :cond_5
    invoke-static {}, Lcom/taplytics/ck;->c()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 355
    const-string v3, "Built launch intent with custom activity"

    invoke-static {v3}, Lcom/taplytics/ck;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_6
    move-object v3, v4

    .line 364
    :goto_2
    :try_start_3
    const-string v4, "tl_title"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result v4

    if-eqz v4, :cond_7

    .line 366
    :try_start_4
    const-string v4, "tl_title"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v4

    move-object v6, v4

    .line 372
    :cond_7
    :goto_3
    :try_start_5
    const-string v4, "tl_priority"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-result v4

    if-eqz v4, :cond_a

    .line 374
    :try_start_6
    const-string v4, "tl_priority"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    move-result v2

    move v4, v2

    .line 380
    :goto_4
    if-nez v3, :cond_b

    .line 381
    :try_start_7
    invoke-virtual {v8, v10}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 382
    invoke-static {}, Lcom/taplytics/ck;->c()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 383
    const-string v3, "Built launch intent"

    invoke-static {v3}, Lcom/taplytics/ck;->a(Ljava/lang/String;)V

    .line 385
    :cond_8
    if-nez v2, :cond_c

    .line 386
    invoke-static {}, Lcom/taplytics/ck;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 387
    const-string v1, "Launch intent is null"

    invoke-static {v1}, Lcom/taplytics/ck;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 358
    :catch_1
    move-exception v3

    .line 359
    const-string v11, "Problem creating push"

    invoke-static {v11, v3}, Lcom/taplytics/ck;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    move-object v3, v4

    .line 360
    goto :goto_2

    .line 361
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/taplytics/gn;->f:Lcom/taplytics/sdk/TaplyticsPushNotificationIntentListener;

    if-eqz v3, :cond_11

    .line 362
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/taplytics/gn;->f:Lcom/taplytics/sdk/TaplyticsPushNotificationIntentListener;

    invoke-interface {v3, v2}, Lcom/taplytics/sdk/TaplyticsPushNotificationIntentListener;->setPushNotificationIntent(Lorg/json/JSONObject;)Landroid/content/Intent;

    move-result-object v4

    move-object v3, v4

    goto :goto_2

    .line 367
    :catch_2
    move-exception v4

    .line 368
    const-string v4, "Error getting title"

    invoke-static {v4}, Lcom/taplytics/ck;->c(Ljava/lang/String;)V

    goto :goto_3

    .line 375
    :catch_3
    move-exception v2

    .line 376
    const-string v2, "Error getting title"

    invoke-static {v2}, Lcom/taplytics/ck;->c(Ljava/lang/String;)V

    :cond_a
    move v4, v5

    goto :goto_4

    :cond_b
    move-object v2, v3

    .line 393
    :cond_c
    const-string v3, "custom_keys"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 394
    const-string v3, "custom_keys"

    const-string v5, "custom_keys"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 397
    :cond_d
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v5

    .line 398
    const/high16 v3, 0x20000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 399
    const-string v3, "tl_notif"

    const/4 v11, 0x1

    invoke-virtual {v2, v3, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 400
    const-string v3, "tl_id"

    const-string v11, "tl_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v3, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 401
    const/high16 v3, 0x8000000

    move-object/from16 v0, p2

    invoke-static {v0, v5, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    move-result-object v11

    .line 405
    :try_start_8
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taplytics/fy;->p()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 406
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 407
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    .line 408
    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v12, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 409
    new-instance v12, Landroid/graphics/Canvas;

    invoke-direct {v12, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 410
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v12}, Landroid/graphics/Canvas;->getWidth()I

    move-result v15

    invoke-virtual {v12}, Landroid/graphics/Canvas;->getHeight()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v3, v13, v14, v15, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 411
    invoke-virtual {v3, v12}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    move-object v3, v2

    .line 418
    :goto_5
    :try_start_9
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taplytics/fy;->p()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v12, 0x80

    invoke-virtual {v8, v2, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 423
    if-eqz v2, :cond_10

    iget-object v12, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v12, :cond_10

    iget-object v12, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v13, "com.taplytics.sdk.notification_icon"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    if-eqz v12, :cond_10

    .line 424
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v10, "com.taplytics.sdk.notification_icon"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 428
    :goto_6
    invoke-static {}, Lcom/taplytics/ck;->c()Z

    move-result v10

    if-eqz v10, :cond_e

    .line 429
    const-string v10, "Building notification"

    invoke-static {v10}, Lcom/taplytics/ck;->a(Ljava/lang/String;)V

    .line 432
    :cond_e
    new-instance v10, Landroid/support/v4/app/bf;

    move-object/from16 v0, p2

    invoke-direct {v10, v0}, Landroid/support/v4/app/bf;-><init>(Landroid/content/Context;)V

    const/4 v12, 0x1

    invoke-virtual {v10, v12}, Landroid/support/v4/app/bf;->a(Z)Landroid/support/v4/app/bf;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/support/v4/app/bf;->a(Landroid/graphics/Bitmap;)Landroid/support/v4/app/bf;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/support/v4/app/bf;->a(I)Landroid/support/v4/app/bf;

    move-result-object v2

    invoke-virtual {v9}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/bf;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/bf;

    move-result-object v2

    new-instance v3, Landroid/support/v4/app/be;

    invoke-direct {v3}, Landroid/support/v4/app/be;-><init>()V

    invoke-virtual {v3, v7}, Landroid/support/v4/app/be;->c(Ljava/lang/CharSequence;)Landroid/support/v4/app/be;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/bf;->a(Landroid/support/v4/app/bs;)Landroid/support/v4/app/bf;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/support/v4/app/bf;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/bf;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/support/v4/app/bf;->b(I)Landroid/support/v4/app/bf;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/support/v4/app/bf;->c(I)Landroid/support/v4/app/bf;

    move-result-object v2

    .line 443
    if-eqz v6, :cond_f

    .line 444
    invoke-virtual {v2, v6}, Landroid/support/v4/app/bf;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/bf;

    .line 447
    :cond_f
    invoke-virtual {v2, v11}, Landroid/support/v4/app/bf;->a(Landroid/app/PendingIntent;)Landroid/support/v4/app/bf;

    .line 448
    invoke-virtual {v2}, Landroid/support/v4/app/bf;->b()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 412
    :catch_4
    move-exception v2

    .line 413
    invoke-virtual {v8, v10}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 414
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 415
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    move-object v3, v2

    goto/16 :goto_5

    .line 426
    :cond_10
    const/4 v2, 0x0

    invoke-virtual {v8, v10, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->icon:I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    goto :goto_6

    :cond_11
    move-object v3, v4

    goto/16 :goto_2

    :cond_12
    move-object v2, v1

    goto/16 :goto_1
.end method

.method public a(Lcom/taplytics/sdk/TaplyticsPushNotificationIntentListener;)V
    .locals 0

    .prologue
    .line 497
    if-eqz p1, :cond_0

    .line 498
    iput-object p1, p0, Lcom/taplytics/gn;->f:Lcom/taplytics/sdk/TaplyticsPushNotificationIntentListener;

    .line 500
    :cond_0
    return-void
.end method

.method public a(Lcom/taplytics/sdk/TaplyticsPushNotificationListener;)V
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/taplytics/gn;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taplytics/gn;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/taplytics/gn;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 464
    :cond_0
    return-void
.end method

.method public a(Lcom/taplytics/sdk/TaplyticsPushOpenedListener;)V
    .locals 0

    .prologue
    .line 519
    iput-object p1, p0, Lcom/taplytics/gn;->d:Lcom/taplytics/sdk/TaplyticsPushOpenedListener;

    .line 520
    return-void
.end method

.method public a(Lcom/taplytics/sdk/TaplyticsPushTokenListener;)V
    .locals 2

    .prologue
    .line 59
    iput-object p1, p0, Lcom/taplytics/gn;->e:Lcom/taplytics/sdk/TaplyticsPushTokenListener;

    .line 60
    iget-object v0, p0, Lcom/taplytics/gn;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taplytics/gn;->e:Lcom/taplytics/sdk/TaplyticsPushTokenListener;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/taplytics/gn;->e:Lcom/taplytics/sdk/TaplyticsPushTokenListener;

    iget-object v1, p0, Lcom/taplytics/gn;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/taplytics/sdk/TaplyticsPushTokenListener;->pushTokenReceived(Ljava/lang/String;)V

    .line 63
    :cond_0
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 127
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne p1, v1, :cond_1

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 132
    invoke-static {}, Lcom/taplytics/ck;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 133
    const-string v1, "Creating params"

    invoke-static {v1}, Lcom/taplytics/ck;->a(Ljava/lang/String;)V

    .line 135
    :cond_2
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taplytics/fy;->k()Lcom/taplytics/eo;

    move-result-object v3

    .line 136
    if-eqz v3, :cond_0

    .line 140
    const-string v1, "ad"

    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taplytics/fy;->m()Lcom/taplytics/el;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taplytics/el;->d()Ljava/util/Map;

    move-result-object v4

    const-string v5, "id"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 141
    invoke-virtual {v3}, Lcom/taplytics/eo;->c()Lcom/taplytics/en;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v3}, Lcom/taplytics/eo;->c()Lcom/taplytics/en;

    move-result-object v1

    const-string v4, "_id"

    invoke-virtual {v1, v4}, Lcom/taplytics/en;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 142
    :goto_1
    if-eqz v1, :cond_3

    .line 143
    const-string v4, "pid"

    invoke-virtual {v2, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 145
    :cond_3
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taplytics/fy;->f()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 146
    const-string v1, "t"

    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taplytics/fy;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    :cond_4
    invoke-virtual {v3}, Lcom/taplytics/eo;->j()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v3}, Lcom/taplytics/eo;->j()Lorg/json/JSONObject;

    move-result-object v1

    const-string v4, "_id"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 149
    :goto_2
    if-eqz v1, :cond_5

    .line 150
    const-string v4, "auid"

    invoke-virtual {v2, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 152
    :cond_5
    invoke-virtual {v3}, Lcom/taplytics/eo;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v3}, Lcom/taplytics/eo;->b()Ljava/lang/String;

    move-result-object v0

    .line 153
    :cond_6
    if-eqz v0, :cond_7

    .line 154
    const-string v1, "sid"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 157
    :cond_7
    invoke-static {}, Lcom/taplytics/ck;->c()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Posting GCM Token: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "token"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taplytics/ck;->a(Ljava/lang/String;)V

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Posting GCM Token, environment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "env"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taplytics/ck;->a(Ljava/lang/String;)V

    .line 161
    :cond_8
    const-string v0, "pt"

    const-string v1, "token"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 162
    const-string v0, "env"

    const-string v1, "env"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 163
    const-string v0, "os"

    const-string v1, "Android"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 165
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->l()Lcom/taplytics/hn;

    move-result-object v0

    new-instance v1, Lcom/taplytics/go;

    invoke-direct {v1, p0}, Lcom/taplytics/go;-><init>(Lcom/taplytics/gn;)V

    invoke-virtual {v0, v2, v1}, Lcom/taplytics/hn;->d(Lorg/json/JSONObject;Lcom/taplytics/ik;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 178
    :catch_0
    move-exception v0

    .line 179
    const-string v1, "Posting GCM Token"

    invoke-static {v1, v0}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_0

    :cond_9
    move-object v1, v0

    .line 141
    goto/16 :goto_1

    :cond_a
    move-object v1, v0

    .line 148
    goto/16 :goto_2
.end method

.method public a(Z)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 78
    iget-object v1, p0, Lcom/taplytics/gn;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taplytics/fy;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/taplytics/kb;->buffalo:Lcom/taplytics/kb;

    invoke-static {v1}, Lcom/taplytics/iz;->a(Lcom/taplytics/kb;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 123
    :cond_1
    :goto_0
    return-void

    .line 85
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taplytics/fy;->k()Lcom/taplytics/eo;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 86
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->k()Lcom/taplytics/eo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/eo;->c()Lcom/taplytics/en;

    move-result-object v0

    .line 88
    :cond_3
    if-eqz v0, :cond_1

    .line 92
    const-string v1, "credentials"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 93
    if-nez v0, :cond_4

    .line 94
    invoke-static {}, Lcom/taplytics/ck;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    const-string v0, "Project does not have GCM credentials"

    invoke-static {v0}, Lcom/taplytics/ck;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    const-string v1, "Getting GCM senderID"

    invoke-static {v1, v0}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 99
    :cond_4
    :try_start_1
    const-string v1, "gcm"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 100
    if-eqz v1, :cond_6

    .line 101
    const-string v2, "gcmSenderId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 102
    if-eqz v1, :cond_6

    .line 103
    invoke-static {}, Lcom/taplytics/ck;->c()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sender ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/taplytics/ck;->a(Ljava/lang/String;)V

    .line 106
    :cond_5
    new-instance v2, Lcom/taplytics/gp;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/taplytics/gp;-><init>(Lcom/taplytics/gn;Lcom/taplytics/go;)V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    const-string v4, "prod"

    aput-object v4, v3, v1

    invoke-virtual {v2, v3}, Lcom/taplytics/gp;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 110
    :cond_6
    const-string v1, "gcmSandbox"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 111
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taplytics/fy;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    const-string v1, "gcmSenderId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    if-eqz v0, :cond_1

    .line 114
    invoke-static {}, Lcom/taplytics/ck;->c()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sandbox Sender ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taplytics/ck;->a(Ljava/lang/String;)V

    .line 117
    :cond_7
    new-instance v1, Lcom/taplytics/gp;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/taplytics/gp;-><init>(Lcom/taplytics/gn;Lcom/taplytics/go;)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    const-string v3, "sandbox"

    aput-object v3, v2, v0

    invoke-virtual {v1, v2}, Lcom/taplytics/gp;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/taplytics/gn;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 507
    iput-object v1, p0, Lcom/taplytics/gn;->f:Lcom/taplytics/sdk/TaplyticsPushNotificationIntentListener;

    .line 508
    iget-object v0, p0, Lcom/taplytics/gn;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/taplytics/gn;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 511
    :cond_0
    iput-object v1, p0, Lcom/taplytics/gn;->d:Lcom/taplytics/sdk/TaplyticsPushOpenedListener;

    .line 512
    return-void
.end method

.method public b(Lcom/taplytics/sdk/TaplyticsPushNotificationListener;)V
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/taplytics/gn;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 473
    iget-object v0, p0, Lcom/taplytics/gn;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 475
    :cond_0
    return-void
.end method

.method public b(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 484
    iget-object v0, p0, Lcom/taplytics/gn;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/taplytics/gn;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taplytics/sdk/TaplyticsPushNotificationListener;

    .line 486
    invoke-interface {v0, p1}, Lcom/taplytics/sdk/TaplyticsPushNotificationListener;->pushReceived(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 489
    :cond_0
    return-void
.end method

.method public c()Lcom/taplytics/sdk/TaplyticsPushOpenedListener;
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/taplytics/gn;->d:Lcom/taplytics/sdk/TaplyticsPushOpenedListener;

    return-object v0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 523
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taplytics/gn;->d:Lcom/taplytics/sdk/TaplyticsPushOpenedListener;

    .line 524
    return-void
.end method
