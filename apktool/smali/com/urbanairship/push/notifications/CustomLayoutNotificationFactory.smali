.class public Lcom/urbanairship/push/notifications/CustomLayoutNotificationFactory;
.super Lcom/urbanairship/push/notifications/NotificationFactory;
.source "SourceFile"


# instance fields
.field public constantNotificationId:I

.field public layout:I

.field public layoutIconDrawableId:I

.field public layoutIconId:I

.field public layoutMessageId:I

.field public layoutSubjectId:I

.field public soundUri:Landroid/net/Uri;

.field public statusBarIconDrawableId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 259
    invoke-direct {p0, p1}, Lcom/urbanairship/push/notifications/NotificationFactory;-><init>(Landroid/content/Context;)V

    .line 248
    const/4 v0, -0x1

    iput v0, p0, Lcom/urbanairship/push/notifications/CustomLayoutNotificationFactory;->constantNotificationId:I

    .line 260
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    iput v0, p0, Lcom/urbanairship/push/notifications/CustomLayoutNotificationFactory;->statusBarIconDrawableId:I

    iput v0, p0, Lcom/urbanairship/push/notifications/CustomLayoutNotificationFactory;->layoutIconDrawableId:I

    .line 261
    return-void
.end method


# virtual methods
.method public createNotification(Lcom/urbanairship/push/PushMessage;I)Landroid/app/Notification;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 265
    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->getAlert()Ljava/lang/String;

    move-result-object v2

    .line 267
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 336
    :goto_0
    return-object v0

    .line 272
    :cond_1
    new-instance v3, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/urbanairship/push/notifications/CustomLayoutNotificationFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget v4, p0, Lcom/urbanairship/push/notifications/CustomLayoutNotificationFactory;->layout:I

    invoke-direct {v3, v0, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 273
    iget v0, p0, Lcom/urbanairship/push/notifications/CustomLayoutNotificationFactory;->layoutIconId:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/urbanairship/push/notifications/CustomLayoutNotificationFactory;->layoutSubjectId:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/urbanairship/push/notifications/CustomLayoutNotificationFactory;->layoutMessageId:I

    if-nez v0, :cond_3

    .line 274
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The CustomLayoutNotificationFactory object contains an invalid identifier (value of 0). layoutIconId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/urbanairship/push/notifications/CustomLayoutNotificationFactory;->layoutIconId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " layoutSubjectId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/urbanairship/push/notifications/CustomLayoutNotificationFactory;->layoutSubjectId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " layoutMessageId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/urbanairship/push/notifications/CustomLayoutNotificationFactory;->layoutMessageId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 276
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unable to build notification. CustomLayoutNotificationFactory missing required parameter."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 279
    :cond_3
    iget v4, p0, Lcom/urbanairship/push/notifications/CustomLayoutNotificationFactory;->layoutSubjectId:I

    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->getTitle()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v3, v4, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 280
    iget v0, p0, Lcom/urbanairship/push/notifications/CustomLayoutNotificationFactory;->layoutMessageId:I

    invoke-virtual {v3, v0, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 281
    iget v0, p0, Lcom/urbanairship/push/notifications/CustomLayoutNotificationFactory;->layoutIconId:I

    iget v2, p0, Lcom/urbanairship/push/notifications/CustomLayoutNotificationFactory;->layoutIconDrawableId:I

    invoke-virtual {v3, v0, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 283
    new-instance v0, Landroid/support/v4/app/bf;

    invoke-virtual {p0}, Lcom/urbanairship/push/notifications/CustomLayoutNotificationFactory;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/support/v4/app/bf;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/support/v4/app/bf;->a(Landroid/widget/RemoteViews;)Landroid/support/v4/app/bf;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/support/v4/app/bf;->a(Z)Landroid/support/v4/app/bf;

    move-result-object v0

    iget v2, p0, Lcom/urbanairship/push/notifications/CustomLayoutNotificationFactory;->statusBarIconDrawableId:I

    invoke-virtual {v0, v2}, Landroid/support/v4/app/bf;->a(I)Landroid/support/v4/app/bf;

    move-result-object v0

    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->isLocalOnly()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/support/v4/app/bf;->b(Z)Landroid/support/v4/app/bf;

    move-result-object v0

    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->getPriority()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/support/v4/app/bf;->c(I)Landroid/support/v4/app/bf;

    move-result-object v0

    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->getCategory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v4/app/bf;->a(Ljava/lang/String;)Landroid/support/v4/app/bf;

    move-result-object v0

    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->getVisibility()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/support/v4/app/bf;->e(I)Landroid/support/v4/app/bf;

    move-result-object v2

    .line 293
    iget v0, p0, Lcom/urbanairship/push/notifications/CustomLayoutNotificationFactory;->layoutIconId:I

    invoke-virtual {p0, p1, v0}, Lcom/urbanairship/push/notifications/CustomLayoutNotificationFactory;->createPublicVersionNotification(Lcom/urbanairship/push/PushMessage;I)Landroid/app/Notification;

    move-result-object v0

    .line 294
    if-eqz v0, :cond_4

    .line 295
    invoke-virtual {v2, v0}, Landroid/support/v4/app/bf;->a(Landroid/app/Notification;)Landroid/support/v4/app/bf;

    .line 299
    :cond_4
    const/4 v0, 0x3

    .line 301
    iget-object v4, p0, Lcom/urbanairship/push/notifications/CustomLayoutNotificationFactory;->soundUri:Landroid/net/Uri;

    if-eqz v4, :cond_5

    .line 302
    iget-object v0, p0, Lcom/urbanairship/push/notifications/CustomLayoutNotificationFactory;->soundUri:Landroid/net/Uri;

    invoke-virtual {v2, v0}, Landroid/support/v4/app/bf;->a(Landroid/net/Uri;)Landroid/support/v4/app/bf;

    .line 305
    const/4 v0, 0x2

    .line 308
    :cond_5
    invoke-virtual {v2, v0}, Landroid/support/v4/app/bf;->b(I)Landroid/support/v4/app/bf;

    .line 313
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/urbanairship/push/notifications/CustomLayoutNotificationFactory;->createNotificationStyle(Lcom/urbanairship/push/PushMessage;)Landroid/support/v4/app/bs;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 318
    :goto_2
    if-eqz v1, :cond_6

    .line 319
    invoke-virtual {v2, v1}, Landroid/support/v4/app/bf;->a(Landroid/support/v4/app/bs;)Landroid/support/v4/app/bf;

    .line 322
    :cond_6
    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->isLocalOnly()Z

    move-result v0

    if-nez v0, :cond_7

    .line 324
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/urbanairship/push/notifications/CustomLayoutNotificationFactory;->createWearableExtender(Lcom/urbanairship/push/PushMessage;I)Landroid/support/v4/app/bt;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/support/v4/app/bf;->a(Landroid/support/v4/app/bh;)Landroid/support/v4/app/bf;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 330
    :cond_7
    :goto_3
    invoke-virtual {p0, p1, p2}, Lcom/urbanairship/push/notifications/CustomLayoutNotificationFactory;->createNotificationActionsExtender(Lcom/urbanairship/push/PushMessage;I)Landroid/support/v4/app/bh;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/support/v4/app/bf;->a(Landroid/support/v4/app/bh;)Landroid/support/v4/app/bf;

    .line 332
    invoke-virtual {v2}, Landroid/support/v4/app/bf;->b()Landroid/app/Notification;

    move-result-object v0

    .line 334
    iput-object v3, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    goto/16 :goto_0

    .line 279
    :cond_8
    invoke-static {}, Lcom/urbanairship/UAirship;->getAppName()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 314
    :catch_0
    move-exception v0

    .line 315
    const-string v4, "Failed to create notification style."

    invoke-static {v4, v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 325
    :catch_1
    move-exception v0

    .line 326
    const-string v1, "Failed to create wearable extender."

    invoke-static {v1, v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public getNextId(Lcom/urbanairship/push/PushMessage;)I
    .locals 1

    .prologue
    .line 341
    iget v0, p0, Lcom/urbanairship/push/notifications/CustomLayoutNotificationFactory;->constantNotificationId:I

    if-lez v0, :cond_0

    .line 342
    iget v0, p0, Lcom/urbanairship/push/notifications/CustomLayoutNotificationFactory;->constantNotificationId:I

    .line 344
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/urbanairship/util/NotificationIDGenerator;->nextID()I

    move-result v0

    goto :goto_0
.end method
