.class public abstract Lcom/urbanairship/push/notifications/NotificationFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final ALERT_KEY:Ljava/lang/String; = "alert"

.field static final BACKGROUND_IMAGE_KEY:Ljava/lang/String; = "background_image"

.field private static final BIG_IMAGE_HEIGHT_DP:I = 0xf0

.field private static final BIG_IMAGE_SCREEN_WIDTH_PERCENT:D = 0.75

.field static final BIG_PICTURE_KEY:Ljava/lang/String; = "big_picture"

.field static final BIG_TEXT_KEY:Ljava/lang/String; = "big_text"

.field static final EXTRA_PAGES_KEY:Ljava/lang/String; = "extra_pages"

.field static final INBOX_KEY:Ljava/lang/String; = "inbox"

.field static final INTERACTIVE_ACTIONS_KEY:Ljava/lang/String; = "interactive_actions"

.field static final INTERACTIVE_TYPE_KEY:Ljava/lang/String; = "interactive_type"

.field static final LINES_KEY:Ljava/lang/String; = "lines"

.field static final NOTIFICATION_DEFAULTS:I = 0x3

.field static final SUMMARY_KEY:Ljava/lang/String; = "summary"

.field static final TITLE_KEY:Ljava/lang/String; = "title"

.field static final TYPE_KEY:Ljava/lang/String; = "type"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/notifications/NotificationFactory;->context:Landroid/content/Context;

    .line 77
    return-void
.end method

.method private createBigPictureStyle(Lorg/json/JSONObject;)Landroid/support/v4/app/bd;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 308
    new-instance v0, Landroid/support/v4/app/bd;

    invoke-direct {v0}, Landroid/support/v4/app/bd;-><init>()V

    .line 310
    const-string v1, "title"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 311
    const-string v2, "summary"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 314
    :try_start_0
    new-instance v3, Ljava/net/URL;

    const-string v4, "big_picture"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 315
    invoke-direct {p0, v3}, Lcom/urbanairship/push/notifications/NotificationFactory;->fetchBigImage(Ljava/net/URL;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/v4/app/bd;->a(Landroid/graphics/Bitmap;)Landroid/support/v4/app/bd;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    invoke-static {v1}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 322
    invoke-virtual {v0, v1}, Landroid/support/v4/app/bd;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/bd;

    .line 325
    :cond_0
    invoke-static {v2}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 326
    invoke-virtual {v0, v2}, Landroid/support/v4/app/bd;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/bd;

    .line 329
    :cond_1
    :goto_0
    return-object v0

    .line 316
    :catch_0
    move-exception v0

    .line 317
    const-string v1, "Malformed big picture URL."

    invoke-static {v1, v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 318
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createBigTextStyle(Lorg/json/JSONObject;)Landroid/support/v4/app/bs;
    .locals 5

    .prologue
    .line 280
    new-instance v0, Landroid/support/v4/app/be;

    invoke-direct {v0}, Landroid/support/v4/app/be;-><init>()V

    .line 282
    const-string v1, "title"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 283
    const-string v2, "summary"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 285
    const-string v3, "big_text"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 286
    invoke-static {v3}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 287
    invoke-virtual {v0, v3}, Landroid/support/v4/app/be;->c(Ljava/lang/CharSequence;)Landroid/support/v4/app/be;

    .line 290
    :cond_0
    invoke-static {v1}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 291
    invoke-virtual {v0, v1}, Landroid/support/v4/app/be;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/be;

    .line 294
    :cond_1
    invoke-static {v2}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 295
    invoke-virtual {v0, v2}, Landroid/support/v4/app/be;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/be;

    .line 298
    :cond_2
    return-object v0
.end method

.method private createInboxStyle(Lorg/json/JSONObject;)Landroid/support/v4/app/bi;
    .locals 6

    .prologue
    .line 338
    new-instance v1, Landroid/support/v4/app/bi;

    invoke-direct {v1}, Landroid/support/v4/app/bi;-><init>()V

    .line 340
    const-string v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 341
    const-string v0, "summary"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 343
    const-string v0, "lines"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 344
    if-eqz v4, :cond_1

    .line 345
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 346
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    .line 347
    if-eqz v5, :cond_0

    .line 348
    invoke-virtual {v1, v5}, Landroid/support/v4/app/bi;->c(Ljava/lang/CharSequence;)Landroid/support/v4/app/bi;

    .line 345
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 353
    :cond_1
    invoke-static {v2}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 354
    invoke-virtual {v1, v2}, Landroid/support/v4/app/bi;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/bi;

    .line 357
    :cond_2
    invoke-static {v3}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 358
    invoke-virtual {v1, v3}, Landroid/support/v4/app/bi;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/bi;

    .line 361
    :cond_3
    return-object v1
.end method

.method private createWearPage(Lorg/json/JSONObject;)Landroid/app/Notification;
    .locals 3

    .prologue
    .line 256
    new-instance v0, Landroid/support/v4/app/be;

    invoke-direct {v0}, Landroid/support/v4/app/be;-><init>()V

    .line 258
    const-string v1, "title"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 259
    invoke-static {v1}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 260
    invoke-virtual {v0, v1}, Landroid/support/v4/app/be;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/be;

    .line 263
    :cond_0
    const-string v1, "alert"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 264
    invoke-static {v1}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 265
    invoke-virtual {v0, v1}, Landroid/support/v4/app/be;->c(Ljava/lang/CharSequence;)Landroid/support/v4/app/be;

    .line 268
    :cond_1
    new-instance v1, Landroid/support/v4/app/bf;

    iget-object v2, p0, Lcom/urbanairship/push/notifications/NotificationFactory;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/support/v4/app/bf;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/app/bf;->a(Z)Landroid/support/v4/app/bf;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/bf;->a(Landroid/support/v4/app/bs;)Landroid/support/v4/app/bf;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/bf;->b()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method private fetchBigImage(Ljava/net/URL;)Landroid/graphics/Bitmap;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 404
    if-nez p1, :cond_0

    .line 405
    const/4 v0, 0x0

    .line 419
    :goto_0
    return-object v0

    .line 408
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fetching notification image at URL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 409
    iget-object v0, p0, Lcom/urbanairship/push/notifications/NotificationFactory;->context:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 410
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 411
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 414
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-double v2, v0

    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v2, v4

    double-to-int v0, v2

    .line 417
    const/4 v2, 0x1

    const/high16 v3, 0x43700000    # 240.0f

    invoke-static {v2, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    .line 419
    iget-object v2, p0, Lcom/urbanairship/push/notifications/NotificationFactory;->context:Landroid/content/Context;

    invoke-static {v2, p1, v0, v1}, Lcom/urbanairship/util/BitmapUtils;->fetchScaledBitmap(Landroid/content/Context;Ljava/net/URL;II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public abstract createNotification(Lcom/urbanairship/push/PushMessage;I)Landroid/app/Notification;
.end method

.method protected final createNotificationActionsExtender(Lcom/urbanairship/push/PushMessage;I)Landroid/support/v4/app/bh;
    .locals 4

    .prologue
    .line 136
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->getInteractiveNotificationType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/PushManager;->getNotificationActionGroup(Ljava/lang/String;)Lcom/urbanairship/push/notifications/NotificationActionButtonGroup;

    move-result-object v0

    .line 138
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 140
    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/urbanairship/push/notifications/NotificationFactory;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->getInteractiveActionsPayload()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, p1, p2, v3}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup;->createAndroidActions(Landroid/content/Context;Lcom/urbanairship/push/PushMessage;ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 144
    :cond_0
    new-instance v0, Lcom/urbanairship/push/notifications/NotificationFactory$1;

    invoke-direct {v0, p0, v1}, Lcom/urbanairship/push/notifications/NotificationFactory$1;-><init>(Lcom/urbanairship/push/notifications/NotificationFactory;Ljava/util/List;)V

    return-object v0
.end method

.method protected final createNotificationStyle(Lcom/urbanairship/push/PushMessage;)Landroid/support/v4/app/bs;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 223
    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->getStylePayload()Ljava/lang/String;

    move-result-object v1

    .line 224
    if-nez v1, :cond_0

    .line 247
    :goto_0
    return-object v0

    .line 230
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    const-string v1, "type"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 238
    const/4 v1, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 240
    :pswitch_0
    invoke-direct {p0, v2}, Lcom/urbanairship/push/notifications/NotificationFactory;->createBigTextStyle(Lorg/json/JSONObject;)Landroid/support/v4/app/bs;

    move-result-object v0

    goto :goto_0

    .line 231
    :catch_0
    move-exception v1

    .line 232
    const-string v2, "Failed to parse notification style payload."

    invoke-static {v2, v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 238
    :sswitch_0
    const-string v4, "big_text"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_1
    const-string v4, "inbox"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string v4, "big_picture"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    .line 242
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/urbanairship/push/notifications/NotificationFactory;->createInboxStyle(Lorg/json/JSONObject;)Landroid/support/v4/app/bi;

    move-result-object v0

    goto :goto_0

    .line 244
    :pswitch_2
    invoke-direct {p0, v2}, Lcom/urbanairship/push/notifications/NotificationFactory;->createBigPictureStyle(Lorg/json/JSONObject;)Landroid/support/v4/app/bd;

    move-result-object v0

    goto :goto_0

    .line 238
    nop

    :sswitch_data_0
    .sparse-switch
        0x5fb2286 -> :sswitch_1
        0x2bd5a10c -> :sswitch_0
        0x435480bf -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected final createPublicVersionNotification(Lcom/urbanairship/push/PushMessage;I)Landroid/app/Notification;
    .locals 3

    .prologue
    .line 372
    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->getPublicNotificationPayload()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 374
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->getPublicNotificationPayload()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 376
    new-instance v1, Landroid/support/v4/app/bf;

    invoke-virtual {p0}, Lcom/urbanairship/push/notifications/NotificationFactory;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v4/app/bf;-><init>(Landroid/content/Context;)V

    const-string v2, "title"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/bf;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/bf;

    move-result-object v1

    const-string v2, "alert"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/bf;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/bf;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/app/bf;->a(Z)Landroid/support/v4/app/bf;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/support/v4/app/bf;->a(I)Landroid/support/v4/app/bf;

    move-result-object v1

    .line 382
    const-string v2, "summary"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 383
    const-string v2, "summary"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/bf;->c(Ljava/lang/CharSequence;)Landroid/support/v4/app/bf;

    .line 385
    :cond_0
    invoke-virtual {v1}, Landroid/support/v4/app/bf;->b()Landroid/app/Notification;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 391
    :goto_0
    return-object v0

    .line 386
    :catch_0
    move-exception v0

    .line 387
    const-string v1, "Failed to parse public notification."

    invoke-static {v1, v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 391
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final createWearableExtender(Lcom/urbanairship/push/PushMessage;I)Landroid/support/v4/app/bt;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    new-instance v1, Landroid/support/v4/app/bt;

    invoke-direct {v1}, Landroid/support/v4/app/bt;-><init>()V

    .line 167
    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->getWearablePayload()Ljava/lang/String;

    move-result-object v0

    .line 168
    if-nez v0, :cond_0

    move-object v0, v1

    .line 213
    :goto_0
    return-object v0

    .line 174
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    const-string v0, "interactive_type"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 181
    const-string v3, "interactive_actions"

    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->getInteractiveActionsPayload()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 182
    invoke-static {v0}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 183
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/urbanairship/push/PushManager;->getNotificationActionGroup(Ljava/lang/String;)Lcom/urbanairship/push/notifications/NotificationActionButtonGroup;

    move-result-object v0

    .line 185
    if-eqz v0, :cond_1

    .line 186
    invoke-virtual {p0}, Lcom/urbanairship/push/notifications/NotificationFactory;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0, v4, p1, p2, v3}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup;->createAndroidActions(Landroid/content/Context;Lcom/urbanairship/push/PushMessage;ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 187
    invoke-virtual {v1, v0}, Landroid/support/v4/app/bt;->a(Ljava/util/List;)Landroid/support/v4/app/bt;

    .line 191
    :cond_1
    const-string v0, "background_image"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 192
    invoke-static {v0}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 194
    :try_start_1
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/urbanairship/push/notifications/NotificationFactory;->fetchBigImage(Ljava/net/URL;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 195
    invoke-virtual {v1, v0}, Landroid/support/v4/app/bt;->a(Landroid/graphics/Bitmap;)Landroid/support/v4/app/bt;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 201
    :cond_2
    :goto_1
    const-string v0, "extra_pages"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 202
    if-eqz v2, :cond_4

    .line 203
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 204
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 205
    if-nez v3, :cond_3

    .line 203
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 175
    :catch_0
    move-exception v0

    .line 176
    const-string v2, "Failed to parse wearable payload."

    invoke-static {v2, v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 177
    goto :goto_0

    .line 196
    :catch_1
    move-exception v0

    .line 197
    const-string v3, "Wearable background url is malformed."

    invoke-static {v3, v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 209
    :cond_3
    invoke-direct {p0, v3}, Lcom/urbanairship/push/notifications/NotificationFactory;->createWearPage(Lorg/json/JSONObject;)Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/support/v4/app/bt;->a(Landroid/app/Notification;)Landroid/support/v4/app/bt;

    goto :goto_3

    :cond_4
    move-object v0, v1

    .line 213
    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/urbanairship/push/notifications/NotificationFactory;->context:Landroid/content/Context;

    return-object v0
.end method

.method public abstract getNextId(Lcom/urbanairship/push/PushMessage;)I
.end method
