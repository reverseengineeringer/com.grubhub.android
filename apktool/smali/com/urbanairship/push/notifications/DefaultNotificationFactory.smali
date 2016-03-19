.class public Lcom/urbanairship/push/notifications/DefaultNotificationFactory;
.super Lcom/urbanairship/push/notifications/NotificationFactory;
.source "SourceFile"


# instance fields
.field private accentColor:I

.field private constantNotificationId:I

.field private largeIcon:I

.field private smallIconId:I

.field private sound:Landroid/net/Uri;

.field private titleId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/urbanairship/push/notifications/NotificationFactory;-><init>(Landroid/content/Context;)V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/urbanairship/push/notifications/DefaultNotificationFactory;->sound:Landroid/net/Uri;

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/urbanairship/push/notifications/DefaultNotificationFactory;->constantNotificationId:I

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/urbanairship/push/notifications/DefaultNotificationFactory;->accentColor:I

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    iput v0, p0, Lcom/urbanairship/push/notifications/DefaultNotificationFactory;->titleId:I

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    iput v0, p0, Lcom/urbanairship/push/notifications/DefaultNotificationFactory;->smallIconId:I

    .line 64
    return-void
.end method


# virtual methods
.method public createNotification(Lcom/urbanairship/push/PushMessage;I)Landroid/app/Notification;
    .locals 2

    .prologue
    .line 69
    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->getAlert()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    const/4 v0, 0x0

    .line 74
    :goto_0
    return-object v0

    .line 73
    :cond_0
    new-instance v0, Landroid/support/v4/app/be;

    invoke-direct {v0}, Landroid/support/v4/app/be;-><init>()V

    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->getAlert()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/be;->c(Ljava/lang/CharSequence;)Landroid/support/v4/app/be;

    move-result-object v0

    .line 74
    invoke-virtual {p0, p1, p2, v0}, Lcom/urbanairship/push/notifications/DefaultNotificationFactory;->createNotificationBuilder(Lcom/urbanairship/push/PushMessage;ILandroid/support/v4/app/bs;)Landroid/support/v4/app/bf;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/bf;->b()Landroid/app/Notification;

    move-result-object v0

    goto :goto_0
.end method

.method protected createNotificationBuilder(Lcom/urbanairship/push/PushMessage;ILandroid/support/v4/app/bs;)Landroid/support/v4/app/bf;
    .locals 4

    .prologue
    .line 95
    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/urbanairship/push/notifications/DefaultNotificationFactory;->getDefaultTitle()Ljava/lang/String;

    move-result-object v0

    .line 97
    :goto_0
    new-instance v1, Landroid/support/v4/app/bf;

    invoke-virtual {p0}, Lcom/urbanairship/push/notifications/DefaultNotificationFactory;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v4/app/bf;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/support/v4/app/bf;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/bf;

    move-result-object v0

    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->getAlert()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/bf;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/bf;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/bf;->a(Z)Landroid/support/v4/app/bf;

    move-result-object v0

    iget v1, p0, Lcom/urbanairship/push/notifications/DefaultNotificationFactory;->smallIconId:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/bf;->a(I)Landroid/support/v4/app/bf;

    move-result-object v0

    iget v1, p0, Lcom/urbanairship/push/notifications/DefaultNotificationFactory;->accentColor:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/bf;->d(I)Landroid/support/v4/app/bf;

    move-result-object v0

    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->isLocalOnly()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/bf;->b(Z)Landroid/support/v4/app/bf;

    move-result-object v0

    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->getPriority()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/bf;->c(I)Landroid/support/v4/app/bf;

    move-result-object v0

    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/bf;->a(Ljava/lang/String;)Landroid/support/v4/app/bf;

    move-result-object v0

    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->getVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/bf;->e(I)Landroid/support/v4/app/bf;

    move-result-object v1

    .line 109
    iget v0, p0, Lcom/urbanairship/push/notifications/DefaultNotificationFactory;->smallIconId:I

    invoke-virtual {p0, p1, v0}, Lcom/urbanairship/push/notifications/DefaultNotificationFactory;->createPublicVersionNotification(Lcom/urbanairship/push/PushMessage;I)Landroid/app/Notification;

    move-result-object v0

    .line 110
    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v1, v0}, Landroid/support/v4/app/bf;->a(Landroid/app/Notification;)Landroid/support/v4/app/bf;

    .line 114
    :cond_0
    const/4 v0, 0x3

    .line 116
    iget-object v2, p0, Lcom/urbanairship/push/notifications/DefaultNotificationFactory;->sound:Landroid/net/Uri;

    if-eqz v2, :cond_1

    .line 117
    iget-object v0, p0, Lcom/urbanairship/push/notifications/DefaultNotificationFactory;->sound:Landroid/net/Uri;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/bf;->a(Landroid/net/Uri;)Landroid/support/v4/app/bf;

    .line 120
    const/4 v0, 0x2

    .line 123
    :cond_1
    invoke-virtual {v1, v0}, Landroid/support/v4/app/bf;->b(I)Landroid/support/v4/app/bf;

    .line 125
    iget v0, p0, Lcom/urbanairship/push/notifications/DefaultNotificationFactory;->largeIcon:I

    if-lez v0, :cond_2

    .line 126
    invoke-virtual {p0}, Lcom/urbanairship/push/notifications/DefaultNotificationFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v2, p0, Lcom/urbanairship/push/notifications/DefaultNotificationFactory;->largeIcon:I

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/bf;->a(Landroid/graphics/Bitmap;)Landroid/support/v4/app/bf;

    .line 129
    :cond_2
    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->getSummary()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 130
    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->getSummary()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/bf;->c(Ljava/lang/CharSequence;)Landroid/support/v4/app/bf;

    .line 133
    :cond_3
    const/4 v0, 0x0

    .line 135
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/urbanairship/push/notifications/DefaultNotificationFactory;->createNotificationStyle(Lcom/urbanairship/push/PushMessage;)Landroid/support/v4/app/bs;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 140
    :goto_1
    if-eqz v0, :cond_7

    .line 141
    invoke-virtual {v1, v0}, Landroid/support/v4/app/bf;->a(Landroid/support/v4/app/bs;)Landroid/support/v4/app/bf;

    .line 146
    :cond_4
    :goto_2
    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->isLocalOnly()Z

    move-result v0

    if-nez v0, :cond_5

    .line 148
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/urbanairship/push/notifications/DefaultNotificationFactory;->createWearableExtender(Lcom/urbanairship/push/PushMessage;I)Landroid/support/v4/app/bt;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/bf;->a(Landroid/support/v4/app/bh;)Landroid/support/v4/app/bf;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 154
    :cond_5
    :goto_3
    invoke-virtual {p0, p1, p2}, Lcom/urbanairship/push/notifications/DefaultNotificationFactory;->createNotificationActionsExtender(Lcom/urbanairship/push/PushMessage;I)Landroid/support/v4/app/bh;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/bf;->a(Landroid/support/v4/app/bh;)Landroid/support/v4/app/bf;

    .line 156
    return-object v1

    .line 95
    :cond_6
    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 136
    :catch_0
    move-exception v2

    .line 137
    const-string v3, "Failed to create notification style."

    invoke-static {v3, v2}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 142
    :cond_7
    if-eqz p3, :cond_4

    .line 143
    invoke-virtual {v1, p3}, Landroid/support/v4/app/bf;->a(Landroid/support/v4/app/bs;)Landroid/support/v4/app/bf;

    goto :goto_2

    .line 149
    :catch_1
    move-exception v0

    .line 150
    const-string v2, "Failed to create wearable extender."

    invoke-static {v2, v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 270
    iget v0, p0, Lcom/urbanairship/push/notifications/DefaultNotificationFactory;->accentColor:I

    return v0
.end method

.method public getConstantNotificationId()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lcom/urbanairship/push/notifications/DefaultNotificationFactory;->constantNotificationId:I

    return v0
.end method

.method protected getDefaultTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/urbanairship/push/notifications/DefaultNotificationFactory;->getTitleId()I

    move-result v0

    if-nez v0, :cond_0

    .line 282
    invoke-virtual {p0}, Lcom/urbanairship/push/notifications/DefaultNotificationFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/urbanairship/push/notifications/DefaultNotificationFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 287
    :goto_0
    return-object v0

    .line 283
    :cond_0
    invoke-virtual {p0}, Lcom/urbanairship/push/notifications/DefaultNotificationFactory;->getTitleId()I

    move-result v0

    if-lez v0, :cond_1

    .line 284
    invoke-virtual {p0}, Lcom/urbanairship/push/notifications/DefaultNotificationFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/urbanairship/push/notifications/DefaultNotificationFactory;->getTitleId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 287
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getLargeIcon()I
    .locals 1

    .prologue
    .line 251
    iget v0, p0, Lcom/urbanairship/push/notifications/DefaultNotificationFactory;->largeIcon:I

    return v0
.end method

.method public getNextId(Lcom/urbanairship/push/PushMessage;)I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/urbanairship/push/notifications/DefaultNotificationFactory;->constantNotificationId:I

    if-lez v0, :cond_0

    .line 80
    iget v0, p0, Lcom/urbanairship/push/notifications/DefaultNotificationFactory;->constantNotificationId:I

    .line 82
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/urbanairship/util/NotificationIDGenerator;->nextID()I

    move-result v0

    goto :goto_0
.end method

.method public getSmallIconId()I
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lcom/urbanairship/push/notifications/DefaultNotificationFactory;->smallIconId:I

    return v0
.end method

.method public getSound()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/urbanairship/push/notifications/DefaultNotificationFactory;->sound:Landroid/net/Uri;

    return-object v0
.end method

.method public getTitleId()I
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Lcom/urbanairship/push/notifications/DefaultNotificationFactory;->titleId:I

    return v0
.end method

.method public setColor(I)V
    .locals 0

    .prologue
    .line 260
    iput p1, p0, Lcom/urbanairship/push/notifications/DefaultNotificationFactory;->accentColor:I

    .line 261
    return-void
.end method

.method public setConstantNotificationId(I)V
    .locals 0

    .prologue
    .line 165
    iput p1, p0, Lcom/urbanairship/push/notifications/DefaultNotificationFactory;->constantNotificationId:I

    .line 166
    return-void
.end method

.method public setLargeIcon(I)V
    .locals 0

    .prologue
    .line 241
    iput p1, p0, Lcom/urbanairship/push/notifications/DefaultNotificationFactory;->largeIcon:I

    .line 242
    return-void
.end method

.method public setSmallIconId(I)V
    .locals 0

    .prologue
    .line 204
    iput p1, p0, Lcom/urbanairship/push/notifications/DefaultNotificationFactory;->smallIconId:I

    .line 205
    return-void
.end method

.method public setSound(Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/urbanairship/push/notifications/DefaultNotificationFactory;->sound:Landroid/net/Uri;

    .line 224
    return-void
.end method

.method public setTitleId(I)V
    .locals 0

    .prologue
    .line 185
    iput p1, p0, Lcom/urbanairship/push/notifications/DefaultNotificationFactory;->titleId:I

    .line 186
    return-void
.end method
